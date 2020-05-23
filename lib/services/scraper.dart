import 'dart:convert';
import 'package:http/http.dart';
import 'package:html/dom.dart';
import 'package:html/parser.dart';


class Scraper{
  Scraper({this.problemId, this.judge});
  final String problemId;
  final String judge;
  String description;
  String title;
  List<String> tags;
  Future initiate() async{
    print("Here");
    Client client = Client();
    String url;
    switch(judge){
      case "codeforces":
        url = "https://codeforces.com/problemset/problem/" + problemId.substring(0, problemId.length - 1) + "/" + problemId.substring(problemId.length - 1);
        break;
      default:
        url = "https://codeforces.com/problemset/problem/1242/A";
    }
    Response response = await client.get(url);
    Document document = parse(response.body);
    switch(judge){
      case "codeforces":
        Element data = document.querySelector('div.problem-statement');
        if(data == null){
          print("INVALID PROBLEM_ID");
        }else{
          title = data.querySelector('.title').innerHtml;
          StringBuffer desc = new StringBuffer();
          List<Element> paragraphs = data.querySelectorAll('p');
          for(Element p in paragraphs){
            String content = p.innerHtml;
            int flag = 0;
            for(int i = 0;i < content.length; ++i){
              if(content[i] == '<'){
                flag++;
              }else if(content[i] == '>'){
                flag--;
              }else if(flag == 0){
                if(content[i] == '\$'){
                  i += 2;
                }else if(content[i] == ' '){
                  while(i + 1 < content.length && content[i + 1] == ' ') i++;
                  desc.write(content[i]);
                }
                else{
                  desc.write(content[i]);
                }
              }
            }
            desc.write('\n');
          }
          description = desc.toString();
        }
        print(title);
        print(description);
        break;
      default:

    }
    
  }

}
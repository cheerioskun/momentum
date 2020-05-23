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
        print(data.innerHtml);
        break;
      default:

    }
    
  }

}
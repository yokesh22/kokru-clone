//https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=7462675af5764bb4961f7732971c221f
import 'dart:convert';
import 'package:http/http.dart';
import 'package:news/models/model.dart';
class News{
  List<ArticleModel> news = [];
  Future getNews() async{
    String url = "https://newsapi.org/v2/top-headlines?country=in&category=business&apiKey=7462675af5764bb4961f7732971c221f";

    final response = await get(Uri.parse(url));
    var result = jsonDecode(response.body);
    if(result["status"] == "ok"){
      result["articles"].forEach((element){
        if(element["urlToImage"] != null && element["description"] != null){
          ArticleModel articleModel = ArticleModel(
            description: element["description"],
            title: element["title"],
            url: element["url"],
            urlToImage: element["urlToImage"],
          );
          news.add(articleModel);
        }
      });
    }
  }

}

class CategoryNewNews{
  List<ArticleModel> news = [];

  Future getCategoryNews(String categoryName) async{
    String url = "https://newsapi.org/v2/top-headlines?country=in&category=$categoryName&apiKey=7462675af5764bb4961f7732971c221f";

    final response = await get(Uri.parse(url));
    var result = jsonDecode(response.body);
    if(result["status"] == "ok"){
      result["articles"].forEach((element){
        if(element["urlToImage"] != null && element["description"] != null){
          ArticleModel articleModel = ArticleModel(
            description: element["description"],
            title: element["title"],
            url: element["url"],
            urlToImage: element["urlToImage"],
          );
          news.add(articleModel);
        }
      });
    }
  }

}

class InternationalNewNews{
  List<ArticleModel> news = [];

  Future getInternationalNews() async{
    String url = "https://newsapi.org/v2/top-headlines?country=us&category=general&apiKey=7462675af5764bb4961f7732971c221f";

    final response = await get(Uri.parse(url));
    var result = jsonDecode(response.body);
    if(result["status"] == "ok"){
      result["articles"].forEach((element){
        if(element["urlToImage"] != null && element["description"] != null){
          ArticleModel articleModel = ArticleModel(
            description: element["description"],
            title: element["title"],
            url: element["url"],
            urlToImage: element["urlToImage"],
          );
          news.add(articleModel);
        }
      });
    }
  }

}
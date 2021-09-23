import 'package:flutter/material.dart';
import 'package:news/models/model.dart';
import 'package:news/screens/homepage.dart';
import 'package:news/screens/newswebsite.dart';
import 'package:news/services/api.dart';
class CategoryNews extends StatefulWidget {
  final String categoryName;
  CategoryNews({required this.categoryName});

  @override
  _CategoryNewsState createState() => _CategoryNewsState();
}

class _CategoryNewsState extends State<CategoryNews> {
  bool loading = true;
  List<ArticleModel> articles = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCatNews();
  }
  
  getCatNews()async{
    CategoryNewNews categoryNewNews = CategoryNewNews();
    await categoryNewNews.getCategoryNews(widget.categoryName);
    articles = categoryNewNews.news;
    setState(() {
      loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.black,
        leading: GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        title: const Text(
          "KOKRU",
          style: TextStyle(
              fontWeight: FontWeight.bold
          ),
        ),
      ),
      body:loading? const Center(
        child: CircularProgressIndicator(),
      ):PageView.builder(
        scrollDirection: Axis.vertical,
        itemBuilder: (context, position) {
          return BuildPage(
            title: articles[position].title,
            description: articles[position].description,
            imageUrl: articles[position].urlToImage,
            url: articles[position].url,
          );
        },
        itemCount: articles.length, // Can be null
      )
    );
  }
}
class BuildPage extends StatelessWidget {
  final String  imageUrl,title,description,url;
   const BuildPage({Key? key, required this.title,required this.description,required this.imageUrl,required this.url}) : super(key: key);

//  List items = ["Drive.com","CleanTechnical","Moneycontrol","Android Central","Juancole.com","Techstory.in"];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height*0.5,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover
            ),
          ),
        ),
        Expanded(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10.0,),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 100,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.blue,
                ),
                child: const Center(
                  child: Text(
                    "HeadLines",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0
                    ),
                  ),
                ),
              ),
               GestureDetector(
                 onTap: (){},
                 child: const Icon(
                  Icons.save_outlined,size: 30,color: Colors.white,
                  ),
               ),
            ],
          ),
        ),
        const SizedBox(height: 15.0,),
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>NewsWeb(url: url)));
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 22.0,
                fontWeight: FontWeight.w500
              ),
            ),
          ),
        ),
        const SizedBox(height: 6.0,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            "Source: NewsApi",
            style: TextStyle(
              color: Colors.blue[400],
              fontSize: 16.0
            ),
          ),
        ),
        const SizedBox(height: 5.0),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            "Posted on: 23 September, 2021 ",
            style: TextStyle(
              color: Colors.white30,
              fontSize: 14.0
            ),
          ),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
           children:[
                const Icon(
                Icons.thumb_up_off_alt_outlined,
                color: Colors.white,
                size: 35.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.share,
                      color: Colors.white,
                      size: 35.0,
                  ),
                  SizedBox(width: 5.0,),
                  Text("SHARE",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500
                  ),
                  )
                ],
              ),
                const Icon(
                Icons.thumb_down_off_alt_outlined,
                color: Colors.white,
                size: 35.0,
              ),
              
           ],
       ),
          ],
      ),
        )
              ],
            ),

          )),
        
      ],
    );
  }
}

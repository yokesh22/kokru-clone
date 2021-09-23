import 'dart:async';
import 'package:flutter/material.dart';
import 'package:news/screens/homepage.dart';
import 'package:news/services/api.dart';
import 'package:webview_flutter/webview_flutter.dart';
class NewsWeb extends StatefulWidget {
final String url;
NewsWeb({required this.url});
  @override
  _NewsWebState createState() => _NewsWebState();
}

class _NewsWebState extends State<NewsWeb> {
  final Completer<WebViewController> _completer = Completer<WebViewController>();

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
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: WebView(
          initialUrl: widget.url,
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController) {
            _completer.complete(webViewController);
          },
        ),
      ),

    );
  }
}

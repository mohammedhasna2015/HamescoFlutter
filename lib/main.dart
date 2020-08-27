import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';


void main (){

  runApp(new MaterialApp(

    home: new MyApp(),
  ));

}

class MyApp extends StatefulWidget {



  @override
  _State  createState() => new _State(); // TODO: implement createSta}



}

class _State extends State<MyApp> {


// ignore: prefer_collection_literals
  final Set<JavascriptChannel> jsChannels = [
    JavascriptChannel(
        name: 'Print',
        onMessageReceived: (JavascriptMessage message) {
          print(message.message);
        }),
  ].toSet();
  final flutterWebViewPlugin = FlutterWebviewPlugin();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return WebviewScaffold(
            url: "https://hamseco.com/",
            javascriptChannels: jsChannels,
            mediaPlaybackRequiresUserGesture: false,

            withZoom: true,
            withLocalStorage: true,
            hidden: true,
            initialChild: Container(
              color: Colors.white,
              child: const Center(
                child: Text('انتظر...',style:TextStyle(color: Colors.black),),
              ),
            ),
           /* bottomNavigationBar: BottomAppBar(
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios),
                    onPressed: () {
                      flutterWebViewPlugin.goBack();
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                      flutterWebViewPlugin.goForward();
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.autorenew),
                    onPressed: () {
                      flutterWebViewPlugin.reload();
                    },
                  ),
                ],
              ),
            ),*/
          );
  }


}
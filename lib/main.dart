import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

import 'root.dart';
import 'login/authentication.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   return new MaterialApp(
        title: 'Mobile APP',//baslık
        debugShowCheckedModeBanner: false,
        theme: new ThemeData(
          primarySwatch: Colors.blue,
        ),
        //home: new RootPage(auth: new Auth()));
        routes: {
        '/': (_) => RootPage(auth: new Auth()),
       // '/grid1': (_) => GridOnePage(),
      //  '/grid2': (_) => GridTwoPage(),
      }
   );
  }
}


import 'package:flutter/material.dart';
import 'package:untitled1/pages/Listviewproducts.dart';
import 'package:untitled1/pages/customerpage.dart';
import 'package:untitled1/pages/orderspage.dart';

import 'homepage.dart';
// import 'package:http/http.dart';
void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ) );
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: HomePage(),


      )
    ;
  }
}


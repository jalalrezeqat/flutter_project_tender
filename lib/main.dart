import 'package:flutter/material.dart';
import 'Components/routes.dart';
import 'Screen_Home/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State {
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tender",
      initialRoute:Login.routeName,
      routes: getRoutes(),
      debugShowCheckedModeBanner: false,
    );
  }
}


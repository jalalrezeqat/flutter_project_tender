import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project2/Components/menu.dart';
import 'package:project2/Components/variabel.dart';
import 'package:project2/Screen_Add/categorisadd.dart';


class CategoriesHome extends StatefulWidget{
  static const String routeName ="/CategoriesHome";
  @override
  _CategoriesHomeState createState() => _CategoriesHomeState();
}

class _CategoriesHomeState extends State<CategoriesHome> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
          body: Container(
              child: Row(
                  children: [
                    Menu(),
                    Column(
                      children: [
                        HeadPage(textButton: "Add", onPressButton: (){
                          Navigator.pushNamed(context, CategoriesAdd.routeName );
                        }, textTitle: "Categories"),
                        Search( onPressButton: (){}),
                        TableData(),
                      ],
                    )
                  ]
              )
          )
      );
  }
}
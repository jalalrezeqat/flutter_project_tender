import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project2/Components/menu.dart';
import 'package:project2/Components/variabel.dart';

import 'package:project2/Screen_Add/productadd.dart';


class ProductHome extends StatefulWidget{
  static const String routeName ="/ProductHome";
  @override
  _ProductHomeState createState() => _ProductHomeState();
}

class _ProductHomeState extends State<ProductHome> {
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
                          Navigator.pushNamed(context, ProductAdd.routeName );

                        }, textTitle: "Product"),
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
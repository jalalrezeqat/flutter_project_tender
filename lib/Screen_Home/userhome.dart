import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project2/Components/menu.dart';
import 'package:project2/Components/variabel.dart';

import 'package:project2/Screen_Add/useradd.dart';


class UserHome extends StatefulWidget{
  static const String routeName ="/userHome";
  @override
  _UserHomeState createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
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
                          Navigator.pushNamed(context, UserAdd.routeName );
                        }, textTitle: "Users Management"),
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
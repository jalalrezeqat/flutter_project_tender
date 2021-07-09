
import 'package:flutter/material.dart';
import 'package:project2/Components/menu.dart';
import 'package:project2/Components/variabel.dart';
import 'package:project2/Screen_Add/companyadd.dart';



class CompanyHome extends StatefulWidget{
  static const String routeName ="/CompanyHome";
  @override
  _CompanyHomeState createState() => _CompanyHomeState();
}

class _CompanyHomeState extends State<CompanyHome> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          body: Container(
              child: Row(
                  children: [
                    Menu(),
                    Column(
                      children: [
                        HeadPage(textButton: "Add", onPressButton: (){
                          Navigator.pushNamed(context, CompanyAdd.routeName );
                        }, textTitle: "Company"),
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
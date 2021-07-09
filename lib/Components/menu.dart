import 'package:flutter/material.dart';
import 'package:project2/Screen_Home/categories.dart';
import 'package:project2/Screen_Home/companyhome.dart';
import 'package:project2/Screen_Home/home.dart';
import 'package:project2/Screen_Home/login.dart';
import 'package:project2/Screen_Home/prodact.dart';
import 'package:project2/Screen_Home/userhome.dart';

class TextButtonMenu extends StatelessWidget {
  String textButton="";
  final VoidCallback onPressButton;
  TextButtonMenu({required this.textButton,required this.onPressButton});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          primary: Colors.white),
      onPressed: onPressButton, child: Text(textButton),);
  }
}

class Menu extends StatelessWidget{
  Menu();
  @override
  Widget build(BuildContext context) {
    var device =MediaQuery.of(context);
    return  Container(
      color: Color(0xff4A1C35),
      width: device.size.width *0.12,
      height: device.size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: [
          TextButtonMenu(textButton: "Home", onPressButton: (){Navigator.pushNamed(context, Home.routeName );}),
          TextButtonMenu(textButton: "Tender", onPressButton: (){}),
          TextButtonMenu(textButton: "Company", onPressButton: (){
            Navigator.pushNamed(context, CompanyHome.routeName );
          }),
          TextButtonMenu(textButton: "Products", onPressButton: (){
            Navigator.pushNamed(context, ProductHome.routeName );
          }),
          TextButtonMenu(textButton: "Categories", onPressButton: (){
            Navigator.pushNamed(context, CategoriesHome.routeName);
          }),
          TextButtonMenu(textButton: "Users", onPressButton: (){
            Navigator.pushNamed(context, UserHome.routeName );
          }),
          TextButtonMenu(textButton: "Logout", onPressButton: (){
            Navigator.pushNamed(context, Login.routeName );
          }),
        ],
      ),
    );
  }

}
import 'package:flutter/cupertino.dart';
import 'package:project2/Components/menu.dart';


class Home extends StatelessWidget{
  static const String routeName ="/Home";
  Home();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: [Menu()]),
    );
  }

}

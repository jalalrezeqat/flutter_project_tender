import 'package:flutter/material.dart';
import 'package:project2/Components/menu.dart';
import 'package:project2/Components/variabel.dart';
import 'package:project2/Screen_Home/categories.dart';





class CategoriesAdd extends StatefulWidget{
  static const String routeName ="/CategoriesAdd";
  @override
  _CategoriesAddState createState() => _CategoriesAddState();
}

class _CategoriesAddState extends State<CategoriesAdd> {
  @override
  Widget build(BuildContext context) {
    var device =MediaQuery.of(context);
   return
     Scaffold(
         body: Container(
             child: Row(
                 children: [
                   Menu(),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       HeadPageAdd(textTitle: "Add Categories"),
                       Container(
                         width: device.size.width *0.13,
                         height: device.size.height *0.3,
                         margin: EdgeInsets.fromLTRB(60, 0, 0, 0),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           children: [
                             Text("Name"),
                             Fieldetext(textHint: "Name", iconField: Icons.title),
                             Text("Note"),
                             Fieldetext(textHint: "Note", iconField: Icons.note_outlined),

                             Row(
                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                               children: [
                                 ButtonGreen(onPressButton: (){
                                   Navigator.pushNamed(context, CategoriesHome.routeName );
                                 }, textButton: "Save"),
                                 Buttonred(onPressButton: (){
                                   Navigator.pushNamed(context, CategoriesHome.routeName );
                                 }, textButton: "cancel")
                               ],
                             )
                           ],
                         ),
                       ),
                     ],
                   )
                 ]
             )
         )

   );
  }
}
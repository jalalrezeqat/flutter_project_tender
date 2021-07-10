import 'package:flutter/material.dart';
import 'package:project2/Components/menu.dart';
import 'package:project2/Components/variabel.dart';

import 'package:project2/Screen_Home/prodact.dart';


class ProductAdd extends StatefulWidget{
  static const String routeName ="/ProductAdd";
  @override
  _ProductAddState createState() => _ProductAddState();
}

class _ProductAddState extends State<ProductAdd> {
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
                       HeadPageAdd(textTitle: "Add Product"),
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
                                   Navigator.pushNamed(context, ProductHome.routeName );
                                 }, textButton: "Save"),
                                 Buttonred(onPressButton: (){
                                   Navigator.pushNamed(context, ProductHome.routeName );
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
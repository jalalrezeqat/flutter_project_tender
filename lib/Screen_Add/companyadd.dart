import 'package:flutter/material.dart';
import 'package:project2/Components/menu.dart';
import 'package:project2/Components/variabel.dart';
import 'package:project2/Screen_Home/companyhome.dart';



class CompanyAdd extends StatefulWidget{
  static const String routeName ="/CompanyAdd";
  @override
  _CompanyAddState createState() => _CompanyAddState();
}

class _CompanyAddState extends State<CompanyAdd> {
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
                         HeadPageAdd(textTitle: "Add Company"),
                         Container(
                           width: device.size.width *0.13,
                           height: device.size.height *0.3,
                           margin: EdgeInsets.fromLTRB(60, 60, 0, 0),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             children: [
                               Text("Name"),
                               Fieldetext(textHint: "Name", iconField: Icons.person),
                               Text("Email"),
                               Fieldetext(textHint: "Email", iconField: Icons.alternate_email_outlined),
                               Text("Phone"),
                               Fieldetext(textHint: "Phone", iconField: Icons.phone),
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                 children: [
                                   ButtonGreen(onPressButton: (){
                                     Navigator.pushNamed(context, CompanyHome.routeName );
                                   }, textButton: "Save"),
                                   Buttonred(onPressButton: (){
                                     Navigator.pushNamed(context, CompanyHome.routeName );
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
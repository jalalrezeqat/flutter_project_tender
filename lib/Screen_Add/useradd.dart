import 'package:flutter/material.dart';
import 'package:project2/Components/menu.dart';
import 'package:project2/Components/variabel.dart';
import 'package:project2/Screen_Home/userhome.dart';


class UserAdd extends StatefulWidget{
  static const String routeName ="/UserAdd";
  @override
  _UserAddState createState() => _UserAddState();
}

class _UserAddState extends State<UserAdd> {
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
                       HeadPageAdd(textTitle: "Add User"),
                       Container(
                         width: device.size.width *0.13,
                         height: device.size.height *0.3,
                         margin: EdgeInsets.fromLTRB(60, 0, 0, 0),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           children: [
                             Text("Name"),
                             Fieldetext(textHint: "Name", iconField: Icons.person),
                             Text("Email"),
                             Fieldetext(textHint: "Email", iconField: Icons.alternate_email_outlined),
                             Text("Password"),
                             FieldPassword(),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                               children: [
                                 ButtonGreen(onPressButton: (){
                                   Navigator.pushNamed(context, UserHome.routeName );
                                 }, textButton: "Save"),
                                 Buttonred(onPressButton: (){
                                   Navigator.pushNamed(context, UserHome.routeName );
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
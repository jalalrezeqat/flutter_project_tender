import 'package:flutter/material.dart';
import 'package:project2/Components/variabel.dart';
import 'package:project2/Screen_Home/home.dart';



class Login extends StatefulWidget{
  static const String routeName ="/Login";
  Login();
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextStyle labelStyle = TextStyle(color: Colors.black,fontSize: 14);

  @override
  Widget build(BuildContext context) {

    var device =MediaQuery.of(context);
    return
      Scaffold(
          body: Center(
            child: Container(
              width: device.size.width *0.15,
              height: device.size.height *0.28,
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Login",
                    style: labelStyle,
                  ),
                  Fieldetext(textHint: "Email",iconField: Icons.alternate_email_outlined,

                  ),
                  FieldPassword(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ButtonBurgundy(onPressButton: () async {

                        Navigator.pushNamed(context, Home.routeName );
                        
                      }, textButton: "login")
                    ],
                  )
                ],
              ),
            ),
          )

    );
  }
}
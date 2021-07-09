import 'package:flutter/material.dart';

class ButtonGreen extends StatelessWidget {
  Color fontColor = Colors.white;
  Color backgroundColor = Color(0xff19C955);
  String textButton = "";
  final VoidCallback onPressButton;

  ButtonGreen({required this.onPressButton, required this.textButton});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressButton,
        child: Text(textButton),
        style: ElevatedButton.styleFrom(
            primary: backgroundColor,
            onPrimary: fontColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(13)))));
  }
}
class ButtonBurgundy extends StatelessWidget {
  Color fontColor = Colors.white;
  Color backgroundColor = Color(0xff4A1C35);
  String textButton = "";
  final VoidCallback onPressButton;

  ButtonBurgundy({required this.onPressButton, required this.textButton});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressButton,
        child: Text(textButton),
        style: ElevatedButton.styleFrom(
            primary: backgroundColor,
            onPrimary: fontColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(13)))));
  }
}

class Buttonred extends StatelessWidget {
  Color fontColor = Colors.white;
  Color backgroundColor = Color(0xffBA2020);
  String textButton = "";
  final VoidCallback onPressButton;

  Buttonred({required this.onPressButton, required this.textButton});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressButton,
        child: Text(textButton),
        style: ElevatedButton.styleFrom(
            primary: backgroundColor,
            onPrimary: fontColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(13)))));
  }
}

class Fieldetext extends StatefulWidget {
  String textHint="";
   IconData iconField;

  Fieldetext({required this.textHint,required this.iconField,});

  @override
  _FieldetextState createState() => _FieldetextState();
}

class _FieldetextState extends State<Fieldetext> {

  @override
  Widget build(BuildContext context) {
    return Form(

      child: TextFormField(
        decoration: InputDecoration(
          hintText: widget.textHint,
          hintStyle: TextStyle(color: Colors.black38),
          suffixIcon: Icon(widget.iconField,
            color: Color(0xff4A1C35),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xff4A1C35),
              style: BorderStyle.solid,
              width: 0.8,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xff4A1C35),
              style: BorderStyle.solid,
              width: 0.8,
            ),
          ),
        ),
      ),

    );
  }
}

class FieldPassword extends StatefulWidget{


  FieldPassword();

  @override
  _FieldPasswordState createState() => _FieldPasswordState();
}

class _FieldPasswordState extends State<FieldPassword> {
  bool passwordVis = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Password",
        hintStyle: TextStyle(color: Colors.black38),
        suffixIcon: IconButton(
          icon: Icon(
            passwordVis
                ? Icons.visibility
                : Icons.visibility_off,
            color: Color(0xff4A1C35),
          ),
          onPressed: () {
            setState(() {
              passwordVis = !passwordVis;
            });
          },
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xff4A1C35),
            style: BorderStyle.solid,
            width: 0.8,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xff4A1C35),
            style: BorderStyle.solid,
            width: 0.8,
          ),
        ),
      ),
      obscureText: passwordVis,
    );
  }
}

class HeadPage extends StatelessWidget{
  String textButton = "";
  String textTitle = "";
  TextStyle textTitleStyle = TextStyle(fontSize: 14, color: Colors.black);

  final VoidCallback onPressButton;
  HeadPage({required this.textButton,required this.onPressButton,required this.textTitle});
  @override
  Widget build(BuildContext context) {
    var device =MediaQuery.of(context);
    return Container(
      padding: EdgeInsets.all(60),
      width: device.size.width *0.88,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(textTitle ,style: textTitleStyle,),
          ButtonGreen(onPressButton: onPressButton, textButton: textButton)
        ],
      ),
    );
  }

}
class HeadPageAdd extends StatelessWidget{

  String textTitle = "";
  TextStyle textTitleStyle = TextStyle(fontSize: 14, color: Colors.black);


  HeadPageAdd({required this.textTitle});
  @override
  Widget build(BuildContext context) {
    var device =MediaQuery.of(context);
    return Container(
      padding: EdgeInsets.all(60),
      width: device.size.width *0.88,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(textTitle ,style: textTitleStyle,),

        ],
      ),
    );
  }

}

class Search extends StatelessWidget{

  final VoidCallback onPressButton;
  Search({required this.onPressButton});
  @override
  Widget build(BuildContext context) {
    var device =MediaQuery.of(context);
     return Container(
       width: device.size.width *0.88,
       padding: EdgeInsets.all(60),
       child: Row(
         children: [
          Container(
         width: device.size.width *0.15,
         height: device.size.height *0.04,
            padding: EdgeInsets.fromLTRB(0, 0, 40, 0),
            child: Fieldetext(textHint: "Search", iconField: Icons.search),
          ),
           ButtonBurgundy(onPressButton: onPressButton, textButton: "Search")
         ],
       ),
     );
  }

}

class TableData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var device = MediaQuery.of(context);
    return Container(
      width: device.size.width * 0.88,
      padding: EdgeInsets.all(60),
      child: DataTable(
          columns: [
            DataColumn(label: Text("UserName")),
            DataColumn(label: Text("Email")),
            DataColumn(label: Text("")),
          ],
          rows: [
            DataRow(cells: [
              DataCell(Text("User 1")),
              DataCell(Text("email@info.com")),
              DataCell( Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ButtonGreen(onPressButton: () {}, textButton: "Edit"),
                    Buttonred(onPressButton: () {}, textButton: "DEL"),
                  ],
                ),
              )

            ]
            )
          ]

      ),
    );
  }
}





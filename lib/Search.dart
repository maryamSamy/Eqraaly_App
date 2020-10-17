
import 'file:///C:/Users/Mariem/AndroidStudioProjects/bottom_n/lib/Hager/Home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(search());
}
class search extends StatefulWidget {
  @override
  _searchState createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget buildTextForm({String hint, bool secure}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: TextFormField(obscureText: secure, cursorColor: Colors.white,style:TextStyle(color: Colors.white),keyboardAppearance: Brightness.dark,
        decoration: InputDecoration( hintText: hint, hintStyle: TextStyle(color: Colors.grey, fontSize:20 ),
        ),),);}
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(onPressed: () {
            Navigator.push(context ,MaterialPageRoute(builder: (context) =>HomeScreen(),));
          },
            icon: (Icon(Icons.arrow_back_ios,color: Color.fromRGBO(252,103 , 2, 1),)),
          ),
        ),
        body: Column(
          children: <Widget>[
            buildTextForm(hint: ' ابحث عن كتاب أو مؤلف أو دار نشر أو مذيع', secure:false),
          ],
        ),
      ),
    );
  }
}
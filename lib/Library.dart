import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Drawer_class.dart';


class Library extends StatefulWidget {
  @override
  _LibraryState createState() => _LibraryState();
}


class _LibraryState extends State<Library> {

  @override

  Widget _types(String title){

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 40),
      child: Column(
        children: <Widget>[
          SizedBox(height: 40,),
          Text(title,style: TextStyle(color: Colors.black54,fontSize: 23),),
          SizedBox(height: 50,),
        ],),
    );
  }


  Widget _Content({String title,String icon}){

    return

      Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Icon(Icons.arrow_back_ios,color: Color.fromRGBO(252, 103, 2, 1),),
          Text('المزيد', style: TextStyle(color: Color.fromRGBO(252, 103, 2, 1), fontSize: 20, fontWeight: FontWeight.normal),),
          SizedBox(width: 150,),
          Text(title,style: TextStyle(color: Colors.black,fontSize: 20),),
          Container(width:20, height: 20, decoration: BoxDecoration(color:Color.fromRGBO(	255, 185, 196, 1))
            ,child: Center(child: Image.asset(icon),),),

        ],
      );
  }


  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,

      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(iconTheme: IconThemeData(color:  Color.fromRGBO(252,103 , 2, 1)),
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text('مكتبتي',style: TextStyle(color: Colors.black,fontSize: 20),),

        ),

        body: ListView(
          children: <Widget>[

            Column(children: <Widget>[

              Container(width: 400,height: 1, color:Color.fromRGBO(252, 103, 2, 1),),
              SizedBox(height: 10,),
              _Content(title:'المفضلة',icon: 'assets/Fav.jpg'),
              //_types('عفوا لا يوجد كتب مفضلة مضافة'),

              Container(width: 120,height: 150,
                decoration: BoxDecoration(color: Colors.black,borderRadius:BorderRadius.circular(5),
                    image: DecorationImage(image: NetworkImage('https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1363271071l/17613072.jpg'),
                        fit:BoxFit.fill ) ),
                margin: EdgeInsets.only(left: 210,top: 10,bottom: 10),),
              _Content(title: '   علامات مرجعية   ',icon: 'assets/Save.jpg'),
              _types('عفوا لا يوجد علامات مرجعية مضافة'),
              _Content(title: '  قوائم التشغيل  ',icon: 'assets/list.jpg'),
              _types('عفوا لا يوجد قوائم شخصية مضافة '),
              _Content(title: '  كتب محملة  ',icon: 'assets/Download.jpg'),
              _types('عفوا لا يوجد كتب محملة مضافة')

            ],)
          ],
        ),
        endDrawer:
        MyDrawer(),
      ),
    );
  }
}
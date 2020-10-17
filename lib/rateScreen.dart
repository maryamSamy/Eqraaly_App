
import 'package:flutter/material.dart';
import 'Drawer_class.dart';
import 'kotob.dart';

class RateScreen extends StatefulWidget {
  @override
  RateScreenState createState() => RateScreenState();
}

class RateScreenState extends State<RateScreen> {
  Widget buildTextForm({String title,image}){
    return Container(
      width: 105,
      height: 105,
      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Color.fromRGBO(252,103 , 2, 1),
            width: 2),),
      margin:  EdgeInsets.only(right: 5,left: 7,top: 12),
      child:
      Column(mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[

          Container(
            width:70,
            height: 30,
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                image: DecorationImage(image: NetworkImage(image))),
          ),
          Container(
            width:100,
            height: 25,
            margin: EdgeInsets.only(bottom: 10),
            child: Column(
              children: <Widget>[
                new GestureDetector(
                  onTap: () {
                    Navigator.push(context ,MaterialPageRoute(builder: (context) =>KotobScreen(),));
                  },
                  child: new Text(
                    title,
                    style: TextStyle(
                        fontSize: 13,
                        color:Colors.black54,
                        fontWeight: FontWeight.w600),),
                )

              ],
            ),
          )
        ],
      ),);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Row(mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                buildTextForm(
                    title: 'كتب سيرة ذاتية',
                    image: 'https://image.flaticon.com/icons/png/512/121/121693.png'
                ),
                buildTextForm(
                    title: 'كتب سياسية',
                    image: 'https://image.flaticon.com/icons/png/512/28/28620.png'
                ),
                buildTextForm(
                    title: 'قصص الأطفال',
                    image: 'https://image.flaticon.com/icons/png/512/12/12736.png'
                ),
              ]),
          Row(mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                buildTextForm(
                    title: 'كتب تنمبة ذاتية',
                    image: 'https://image.flaticon.com/icons/png/512/43/43179.png'
                ),
                buildTextForm(
                    title: 'كتب دينية',
                    image: 'https://image.flaticon.com/icons/png/512/84/84661.png'
                ),
                buildTextForm(
                    title: 'كتب خفيفة',
                    image: 'https://image.flaticon.com/icons/png/512/29/29302.png'
                ),
              ]),
          Row(mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                buildTextForm(
                    title: 'روايات سياسية',
                    image: 'https://image.flaticon.com/icons/png/512/28/28620.png'
                ),
                buildTextForm(
                    title: 'كتب ساخرة',
                    image: 'https://image.flaticon.com/icons/png/512/42/42796.png'
                ),
                buildTextForm(
                    title: 'كتب اجتماعية',
                    image: 'https://image.flaticon.com/icons/png/512/33/33308.png'
                ),
              ]),
          Row(mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                buildTextForm(
                    title: 'روايات رومانسية',
                    image: 'https://image.flaticon.com/icons/png/512/30/30571.png'
                ),
                buildTextForm(
                    title: 'روايات رعب',
                    image: 'https://image.flaticon.com/icons/png/512/121/121202.png'
                ),
                buildTextForm(
                    title: 'روايات دينية',
                    image: 'https://image.flaticon.com/icons/png/512/84/84661.png'
                ),
              ]),
          Row(mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                buildTextForm(
                    title: 'كتب تاريخية',
                    image: 'https://image.flaticon.com/icons/png/512/57/57113.png'
                ),
                buildTextForm(
                    title: 'روايات تاريخية',
                    image: 'https://image.flaticon.com/icons/png/512/57/57113.png'
                ),
                buildTextForm(
                    title: 'روايات اجتماعية',
                    image: 'https://image.flaticon.com/icons/png/512/33/33308.png'
                ),
              ]),
          Row(mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                buildTextForm(
                    title: 'القران الكريم',
                    image: 'https://image.flaticon.com/icons/png/512/84/84645.png'
                ),
                buildTextForm(
                    title: 'اثارة و غموض',
                    image: 'https://image.flaticon.com/icons/png/512/110/110152.png'
                ),
                buildTextForm(
                    title: 'كتب ثقافية',
                    image: 'https://image.flaticon.com/icons/png/512/110/110233.png'
                ),
              ]),
          Row(mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                buildTextForm(
                    title: 'ملخصات',
                    image: 'https://image.flaticon.com/icons/png/512/57/57113.png'
                ),
                buildTextForm(
                    title: 'روايات فلسفية',
                    image: 'https://image.flaticon.com/icons/png/512/89/89208.png'
                ),
              ]),
        ],
      ),
      endDrawer:
      MyDrawer(),
    );
  }
}
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SubScreen extends StatefulWidget {
  @override
  SubScreenState createState() => SubScreenState();
}

class SubScreenState extends State<SubScreen> {
  PageController pageController= PageController();
  @override
  void iniState(){
    super.initState();
    pageController=PageController(
      initialPage: 0,
      keepPage: true,
      viewportFraction: 1,
    );
  }
  @override
  void dispose(){
    pageController.dispose();
    super.dispose();
  }
  @override

  Widget top (String title, Color topcolor){
    return FlatButton(
      onPressed: (){},
      child: Text(title,style: TextStyle(fontSize: 15,
          fontWeight: FontWeight.w600,
          color: topcolor),),
    );

  }
  Widget Container1(){

    return Container(
      height:240,
      width: 250,
      padding: EdgeInsets.only(top: 8),
      decoration: BoxDecoration(color: Colors.white,
          borderRadius: BorderRadius.circular(20)),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text('الخطة الشهرية',style: TextStyle(fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(252,103 , 2, 1)),),
          Text("L.E 35,99",style: TextStyle(fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(252,103 , 2, 1)),),

          Row(mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  height: 130, width: 230,
                  margin: EdgeInsets.only(right: 15,top: 10),
                  color: Colors.white,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text('                 استمع بدون اعلانات ●',
                          style: TextStyle(fontSize: 16, color: Colors.black54),),
                        Text("استمع الى مئات الكتب بلا حدود ● ",
                          style: TextStyle(fontSize: 16, color: Colors.black54),),
                        Text('       حمل كتبك المفضلة و استمع ●'
                          ,style: TextStyle(fontSize: 16, color: Colors.black54),),
                        Text('         اليها بدون اتصال بالانترنت'
                          ,style: TextStyle(fontSize: 16, color: Colors.black54),),
                      ]),
                ),
              ]) ],
      ),
    );


  }

  Widget Container2(){

    return  Container(
      margin:  EdgeInsets.only(top: 8),
      height: 48, width: 160,
      decoration: BoxDecoration(
          color: Color.fromRGBO(252,103 , 2, 1),
          borderRadius: BorderRadius.circular(12)
      ),

      child:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FlatButton(
            onPressed: (){},
            child: Text('اشترك الان',style: TextStyle(fontSize: 20,
                fontWeight: FontWeight.normal,
                color: Colors.white),),
          )
        ],
      ),
    );
  }

  Widget Container3(Color buttoncolor) {
    return Container(
      height:40,
      width: 294,
      margin: EdgeInsets.only(top:2,left: 5),

      child:  Row(
        children: <Widget>[
          FlatButton(
            onPressed: (){},
            child: Text('تفعيل الاشتراك',style: TextStyle(fontSize: 15,
                fontWeight: FontWeight.w600, color: buttoncolor),),
          ),
          FlatButton(
            onPressed: (){},
            child: Text('●',style: TextStyle(fontSize: 13,
                fontWeight: FontWeight.w600, color:  Colors.blue),),
          ),
          FlatButton(
            onPressed: (){},
            child: Text('كيف اشترك',style: TextStyle(fontSize: 15,
                fontWeight: FontWeight.w600, color: buttoncolor),),
          ),
        ],
      ),
    );
  }
  Widget build(BuildContext context) {

    return MaterialApp(
        debugShowCheckedModeBanner: false,

        home: Scaffold(
            backgroundColor: Colors.white38,

            body: PageView(
                controller: pageController,
                scrollDirection: Axis.horizontal,
                pageSnapping: true,
                reverse: false,
                onPageChanged: (index){
                  print("$index");
                },

                children: <Widget>[
                  Container(
                    color: Color.fromRGBO(32, 23, 80, 1),
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 1000, width: 400,
                          color: Color.fromRGBO(32, 23, 80, 1),
                          child: Column(
                            children: <Widget>[
                              Container(
                                height:40, width: 400,
                                margin: EdgeInsets.only(top: 20),
                                color: Color.fromRGBO(32, 23, 80, 1),

                                child:  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                  children: <Widget>[
                                    top('شروط الاستخدام ●',Colors.white),
                                    top('سياسة الخصوصية ●',Colors.white),
                                    top('مساعدة ●',Colors.white),
                                  ],),),

                              IconButton(onPressed: () {
                                Navigator.pop(context);
                              },
                                icon: (Icon(
                                    Icons.close, color: Colors.white,
                                    size: 25)),),

                              Container(
                                height:228,
                                width: 370,
                                child: Column(
                                  children: <Widget>[
                                    Image.asset('assets/sub.png')

                                  ],
                                ),
                              ),

                              Container1(),

                              Container2(),
                              Container3( Colors.white ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    color: Color.fromRGBO(247, 247, 247, 1),
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 1000,
                          width: 400,
                          color: Color.fromRGBO(247, 247, 247, 1),
                          child: Column(
                            children: <Widget>[
                              Container(
                                height:40,
                                width: 400,
                                margin: EdgeInsets.only(top: 15),
                                color: Colors.white12,

                                child:  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    top('شروط الاستخدام ●',Color.fromRGBO(252,103 , 2, 1)),
                                    top('سياسة الخصوصية ●',Color.fromRGBO(252,103 , 2, 1)),
                                    top('مساعدة ●',Color.fromRGBO(252,103 , 2, 1)),

                                  ],
                                ),
                              ),
                              IconButton(onPressed: () {
                                Navigator.pop(context);
                              },
                                icon: (Icon(
                                    Icons.close, color: Colors.indigo,
                                    size: 25)),),
                              Container(
                                height:234,
                                width: 370,
                                child: Column(),
                                decoration: BoxDecoration(
                                    image:DecorationImage(image: NetworkImage('https://www.pngitem.com/pimgs/m/411-4118063_undraw-make-it-raindownload-hd-png-.png'))
                                ),
                              ),

                              Container1(),
                              Container2(),
                              Container3( Color.fromRGBO(252,103 , 2, 1)),
                            ],
                          ),
                        ), ],
                    ),
                  ),
                ]
            )));
  }
}
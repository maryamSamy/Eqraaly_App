import 'package:flutter/material.dart';
import 'log_in1.dart';
import 'log_in2.dart';
void main() {
  runApp(FirstPage());
}
class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.white,
            body: ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[

                        Container( margin: EdgeInsets.only(top:60), height:200, width: 300,
                          decoration: BoxDecoration(color: Colors.white,
                              image: DecorationImage(image:
                              NetworkImage(
                                  'https://lh3.googleusercontent.com/qgCHmSPs4keQzpdywNohuDkalXnZhNC9geCqrCD7jNweVSHX1aDAlabykdoJoVlHFg'
                              ))

                          ),),
                        Text('كتب وبرامج مســـموعة', style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.w500),),

                        Text('علي الـــموبايل', style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.w500),),

                        Container(width: 380, height: 60,margin: EdgeInsets.only(left:5,top: 15, bottom: 5,right: 5),
                            decoration: BoxDecoration(
                                color: Colors.white,borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 1,color: Color.fromRGBO(252, 103, 2,1))
                            ),

                            child: Row(
                              children: <Widget>[
                                SizedBox(width:10 ,),

                                IconButton(onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) =>Login1(),));
                                },
                                  icon: (Icon(
                                      Icons.arrow_back_ios,color: Color.fromRGBO(252, 103, 2,1),
                                      size: 20)),),
                                SizedBox(width:80 ,),
                                Center(  child: Text('تسجيل الدخول' ,style:TextStyle(fontSize: 22,color:Color.fromRGBO(252, 103, 2,1)),),

                                )],)
                        ),
                        Container(width: 380, height: 60,margin: EdgeInsets.only(left:5,top: 15, bottom: 5,right: 5),
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(252, 103, 2,1),borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 1,color: Color.fromRGBO(252, 103, 2,1))
                            ),

                            child: Row(
                              children: <Widget>[
                                SizedBox(width:10 ,),

                                IconButton(onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Login2(),));
                                },
                                  icon: (Icon(
                                      Icons.arrow_back_ios,color: Colors.white,
                                      size: 20)),),
                                SizedBox(width:90 ,),
                                Center(  child: Text('حساب جديد', textAlign: TextAlign.center,style:TextStyle(fontSize: 22,color: Colors.white),),

                                )],)
                        ),

                        SizedBox(height: 10,),
                        Text('تخطي التسجيل',style: TextStyle(color: Color.fromRGBO(252, 103, 2,1), fontSize: 20,fontWeight: FontWeight.w700),),

                        Container(
                            padding:EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                            width: 380, height: 60,margin: EdgeInsets.only(left:5,top: 15, bottom: 5,right: 5),
                            decoration: BoxDecoration(
                                color:Color.fromRGBO(58, 87, 157,1),borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 1,color: Color.fromRGBO(58, 87, 157,1))
                            ),

                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(top: 0), height:30, width: 60,
                                  decoration: BoxDecoration(color: Color.fromRGBO(58, 87, 157,1),
                                      image: DecorationImage(image:
                                      NetworkImage(
                                          'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fb/Facebook_icon_2013.svg/300px-Facebook_icon_2013.svg.png'
                                      ))

                                  ),

                                ),
                                Center(  child: Text('تسجيل الدخول بواسطة فيسبوك' ,style:TextStyle(fontSize: 22,color:Colors.white,),))


                              ],)
                        )
                      ]),
                ])
        ));
  }
}

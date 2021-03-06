
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'BottomNavigationScreen.dart';

void main() {
  runApp(Login1());
}

class Login1 extends StatefulWidget {
  _Login1State createState() => _Login1State();
}
class _Login1State extends State<Login1> {
  String email;
  String password;
  GlobalKey<FormState> globalKey=GlobalKey<FormState>();
  Widget buildTextForm({String hint, bool secure,TextInputType type,Function onSave}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: TextFormField( textAlign: TextAlign.end,
        obscureText: secure,
        keyboardType:type ,
        onSaved: (onSave),
        validator: (value){
          if(value.isEmpty){
            return 'This field is required';
          }
          else{
            return null;
          }
        },
        decoration: InputDecoration(
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            enabledBorder: OutlineInputBorder( borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(color: Colors.grey,),),
            hintText: hint,
            hintStyle: TextStyle(color: Colors.grey, fontSize: 22),
            filled: true,
            contentPadding: EdgeInsets.all(10)
        ),
      ),
    );
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.white,
            body: ListView(
                children: <Widget>[
                  Container(
                      width: 100,
                      height: 90,
                      margin: EdgeInsets.only(top: 90),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(image: NetworkImage('https://lh3.googleusercontent.com/qgCHmSPs4keQzpdywNohuDkalXnZhNC9geCqrCD7jNweVSHX1aDAlabykdoJoVlHFg')
                          ))
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10,right: 10),
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Form(key: globalKey,
                          child: Column(
                            children: [
                              buildTextForm(
                                  hint: 'البريد الالكترونى',
                                  secure:false,
                                  type: TextInputType.text,
                                  onSave: (value){
                                    setState((){
                                      email=value;
                                    });
                                  }
                              ),
                              buildTextForm(
                                  hint: 'كلمة المرور',
                                  secure: true,
                                  onSave: (value){
                                    setState((){
                                      password=value;
                                    });
                                  }
                              ),
                            ],
                          ),)

                      ],
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      if(!globalKey.currentState.validate()){
                        return;
                      }
                      else{
                        globalKey.currentState.save();
                      }
                    },
                    child:  Container(width: 20, height: 50,margin: EdgeInsets.only(left:25,right: 25,top: 20),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(252, 103, 2,1),
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(width: 1,color: Color.fromRGBO(252, 103, 2,1))
                        ),

                        child: Row(
                          children: <Widget>[
                            SizedBox(width:8 ,),
                            IconButton(onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavigationScreen(),));
                            },
                              icon: (Icon(
                                  Icons.arrow_back_ios,color: Colors.white,
                                  size: 20)),),
                            SizedBox(width:70 ,),
                            Center(  child: Text('تسجيل الدخول' ,textAlign: TextAlign.center,style:TextStyle(fontSize: 22,color:Colors.white ),),

                            )],)
                    ),
                  ),
                  Container(
                      margin:  EdgeInsets.only(top: 20),
                      child:
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('نسيت كلمة المرور؟',
                              style: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 19,
                                  fontWeight: FontWeight.normal),),])
                  ),
                  Container(
                      padding:  EdgeInsets.symmetric(horizontal: 0,vertical: 10),
                      child:
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('__________     أو     __________',
                              style: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal),),])
                  ),
                  Container(
                    padding:EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                    width: 300, height: 50,margin: EdgeInsets.only(left:25,top: 15, bottom: 5,right:25),
                    decoration: BoxDecoration(
                        color:Color.fromRGBO(58, 87, 157,1),borderRadius: BorderRadius.circular(5),
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
                                )))
                        ),
                        Center(  child: Text('تسجيل الدخول بواسطة فيسبوك' ,style:TextStyle(fontSize: 20,color:Colors.white,),)),

                      ],
                    ),
                  ),
                  Container(
                    margin:  EdgeInsets.only(top: 20),
                    child:
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('انضم لنا الان ليس لديك حساب؟',
                            style: TextStyle(
                                color: Color.fromRGBO(252, 103, 2,1),
                                fontSize: 19,
                                fontWeight: FontWeight.normal),),]),

                  ),
                ])
        ));
  }
}
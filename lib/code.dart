import 'Home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Code());
}
class Code extends StatefulWidget {
  @override
  _CodeState createState() => _CodeState();
}

class _CodeState extends State<Code> {

  @override

  Widget buildTextForm({String hint}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
      child: TextFormField(textAlign: TextAlign.right,
        decoration: InputDecoration(
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(color: Colors.grey,),),
            hintText: hint,
            hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
            filled: true,
            contentPadding: EdgeInsets.all(10),
            fillColor: Colors.white
        ),
      ),
    );
  }

  Widget build(BuildContext context) {

    return MaterialApp(debugShowCheckedModeBanner: false,
        home: Scaffold(backgroundColor: Colors.white,
            body: ListView(scrollDirection: Axis.vertical,
                children: <Widget>[
                  Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[

                        Container( margin: EdgeInsets.only(top:60), height:200, width: 300,
                          decoration: BoxDecoration(color: Colors.white,
                              image: DecorationImage(image:
                              NetworkImage(
                                  'https://lh3.googleusercontent.com/qgCHmSPs4keQzpdywNohuDkalXnZhNC9geCqrCD7jNweVSHX1aDAlabykdoJoVlHFg'))

                          ),),
                        SizedBox(height: 10,),
                        Text('هل لديك كود تسجيل -برموكود ؟ادخله', style: TextStyle(color: Color.fromRGBO(252, 103, 2,1), fontSize: 25,fontWeight: FontWeight.w700),),
                        buildTextForm(hint: 'كود التسجيل'),
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const SizedBox(height: 10),
                            RaisedButton(color:Color.fromRGBO(170, 170, 170, 1),
                              onPressed: () {
                                Navigator.push(context ,MaterialPageRoute(builder: (context) =>HomeScreen(),));
                              },
                              child: const Text('إلغاء', style: TextStyle(fontSize:30,color: Colors.white)),
                            ),
                            SizedBox(width: 50,),
                            RaisedButton(color:Color.fromRGBO(252, 103, 2, 1),
                              onPressed: () {},
                              child: const Text('إرسال', style: TextStyle(fontSize: 30,color: Colors.white),),
                            ),
                          ],
                        )
                      ])
                ])
        ));
  }
}

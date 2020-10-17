import 'package:flutter/material.dart';
import 'file:///C:/Users/Mariem/AndroidStudioProjects/bottom_n/lib/Maryam/Profile.dart';
import 'file:///C:/Users/Mariem/AndroidStudioProjects/bottom_n/lib/Abid/Sub.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'file:///C:/Users/Mariem/AndroidStudioProjects/bottom_n/lib/Maryam/Code.dart';
import 'help.dart';
import 'file:///C:/Users/Mariem/AndroidStudioProjects/bottom_n/lib/Hager/Program.dart';
import 'Home.dart';
import 'setting.dart';


class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Drawer(
        child: Container(color: Colors.white,

          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                  decoration: BoxDecoration(
                      color: Colors.white
                  ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text("اسم المستخدم", textAlign: TextAlign.right,
                        style: TextStyle(
                            fontSize: 20
                        ),),
                      SizedBox(width: 10,),
                      Container(
                        width: 70, height: 70,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/Profile.jpg'),
                        ),
                      ),

                    ],
                  )
              ),

              ListTile(

                title: Text(
                  'الصفحة الرئيسية', textAlign: TextAlign.right, style: TextStyle(
                    fontSize: 20
                ),),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen(),));
                },
              ),
              ListTile(

                title: Text('الصفحة الشخصية', textAlign: TextAlign.right,
                  style: TextStyle(
                      fontSize: 20
                  ),),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Profile(),));
                },
              ),
              ListTile(

                title: Text(
                  'الاشتراكات', textAlign: TextAlign.right, style: TextStyle(
                    fontSize: 20
                ),),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SubScreen(),));
                },
              ),
              ListTile(

                title: Text('الاعدادات', textAlign: TextAlign.right,
                  style: TextStyle(
                      fontSize: 20
                  ),),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Setting(),));
                },
              ),
              ListTile(

                title: Text(
                  'كود التسجيل', textAlign: TextAlign.right, style: TextStyle(
                    fontSize: 20
                ),),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Code(),));
                },
              ),
              ListTile(

                title: Text(
                  'البرامج', textAlign: TextAlign.right, style: TextStyle(
                    fontSize: 20
                ),),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => programs(),));
                  //Navigator.pop(context);
                },
              ),
              ListTile(

                title: Text(
                  'مساعدة', textAlign: TextAlign.right, style: TextStyle(
                    fontSize: 20
                ),),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Help(),));
                },
              ),
            ],
          ),
        ),
      );
  }
}

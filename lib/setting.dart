
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'Drawer_class.dart';

void main() {
  runApp(Setting());
}
class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(iconTheme: IconThemeData(color:  Color.fromRGBO(252,103 , 2, 1)),
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text('الاعدادات',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,),
          ),
          elevation:1,
        ),
        body: Builder(builder: (BuildContext context){
          return SingleChildScrollView(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('                                    '
                        'اعدادات عامة',
                        style: TextStyle(
                          color: Color.fromRGBO(252,103 , 2, 1),
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        )),
                    SwitchListTile(
                      title: Text('الابقاء على الشاشة مضاءة',textAlign: TextAlign.right,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87
                        ),),
                      contentPadding: EdgeInsets.all(15.0),
                      activeColor: Color.fromRGBO(252,103 , 2, 1),
                      dense: true,
                      value: true,
                      onChanged: (val){},

                    ),
                    SwitchListTile(
                      contentPadding: EdgeInsets.all(15.0),
                      activeColor: Color.fromRGBO(252,103 , 2, 1),
                      dense: true,
                      value: false,
                      onChanged: (val){},
                      title: Text('تحميل عبر واى فاى فقط',textAlign: TextAlign.right,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87
                        ),),
                    ),
                    FlatButton(materialTapTargetSize: MaterialTapTargetSize.padded,
                      child: Text('مسح كل التحميلات',
                        // textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87
                        ),),
                      padding: EdgeInsets.symmetric(horizontal: 120),

                      onPressed: (){
                        showDialog(context: context,
                            builder: (_)=>AlertDialog(
                              title: Text('تنبيه',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(252,103 , 2, 1)
                                ),
                                textAlign: TextAlign.center,),
                              content: Text('سيتم مسح جميع التحميلات؟',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black87
                                ),),
                              actions: <Widget>[
                                FlatButton(
                                  child: Text('الغاء',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.greenAccent
                                    ),),

                                  onPressed: (){
                                    Navigator.of(context).pop();
                                  },
                                ),
                                FlatButton(
                                  child: Text('موافق',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.red
                                    ),),
                                  onPressed: (){
                                    Navigator.of(context).pop();
                                    print('Delete Records');
                                  },
                                )
                              ],
                            ));
                      },
                    ),
                    FlatButton(materialTapTargetSize: MaterialTapTargetSize.padded,
                      child: Text('مدة التقديم والتأخير',
//                          textAlign: TextAlign.right,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87
                        ),),
                      padding: EdgeInsets.symmetric(horizontal: 120),
                      onPressed: (){
                        showDialog(context: context,
                            builder: (_)=>AlertDialog(
                              contentPadding: EdgeInsets.all(10.0),
                              actions: <Widget>[
                                FlatButton(
                                  child: Text('10 ثانية',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black87,
                                      ),
                                      textAlign: TextAlign.center),
                                  onPressed: (){
                                    Navigator.of(context).pop();
                                  },
                                ),
                                FlatButton(
                                  child: Text('20 ثانية',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black87
                                      ),
                                      textAlign: TextAlign.center),
                                  onPressed: (){
                                    Navigator.of(context).pop();
                                  },
                                ),
                                FlatButton(
                                  child: Text('30 ثانية',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black87
                                      ),
                                      textAlign: TextAlign.center),
                                  onPressed: (){
                                    Navigator.of(context).pop();
                                  },
                                ),FlatButton(
                                  child: Text('40 ثانية',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black87
                                      ),
                                      textAlign: TextAlign.center),
                                  onPressed: (){
                                    Navigator.of(context).pop();


                                  },
                                )
                              ],
                            ));
                      },
                    )
                  ])
          );
        }),
        endDrawer:
        MyDrawer(),
      ),
    );
  }
// This widget is the root of your application
}
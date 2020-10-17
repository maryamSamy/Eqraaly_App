import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/rendering.dart';
import 'Drawer_class.dart';

void main() {
  runApp(Profile());
}
class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  File _pickedImage;
  final _picker = ImagePicker();

  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    // _getImage();
    super.initState();
  }

  Future _getImage() async {
    final _image = await _picker.getImage(source: ImageSource.camera);
    setState(() {
      _pickedImage = File(_image.path);
    });
  }


  Widget buildTextForm({String hint, Icon iconData}) {
    return   Padding(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        child:
        TextFormField (
            decoration: InputDecoration(prefixIcon: iconData,fillColor: Colors.deepOrange,hintText: hint,hintStyle: TextStyle(color: Colors.black38, fontSize: 12),

            )
        ));
  }

  Widget buildTextForm1({String hint,double num}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: num, vertical: 5),
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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      backgroundColor: Color.fromRGBO(251, 251, 251, 1),

      appBar: AppBar(iconTheme: IconThemeData(color:  Color.fromRGBO(252,103 , 2, 1)),
        backgroundColor: Color.fromRGBO(251, 251, 251, 1),
        centerTitle: true,
        title: Text('الملف الشخصي',style:TextStyle(fontSize: 22,color:Colors.black,)),

      ),

      body: ListView(
          children: <Widget>[
            Column(children: <Widget>[
              Container(
                width: 400,
                height: 1,
                color: Color.fromRGBO(252, 103, 2, 1),),



              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      _getImage();
                    },
                    child: Container(margin: EdgeInsets.only(top: 5,left: 10,right: 10),
                      //padding: EdgeInsets.symmetric(horizontal: 0, vertical: 100),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          border: Border.all(width: 1.0, color: Colors.white),
                          color: Colors.black
                          ,image: DecorationImage(image:
                      NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcduRdzYt50RmU3mYPEm9Mfd-YAf3XuYt9aw&usqp=CAU'
                      ))
                      ),
                    ),
                  ),


                ],
              ),
              buildTextForm(iconData: Icon(Icons.edit) ,hint: 'اسم العرض'),
              buildTextForm1(hint:'الاسم الاول',num: 40),
              buildTextForm1(hint:'ايميل',num: 40),
              buildTextForm1(hint:'رقم الهاتف',num:40),
              buildTextForm1(hint:'تاريخ الميلاد',num: 40),
              buildTextForm1(hint:'الجنس',num: 40),
              SizedBox(height: 10,),
              Text('تغيير كلمة المرور', style: TextStyle(color:Color.fromRGBO(252, 103, 2, 1), fontSize:18),),
              Container(
                  width: 340,
                  height: 50,
                  margin: EdgeInsets.only(left: 5, top: 10, bottom: 5, right: 5),
                  decoration: BoxDecoration(
                    color:Color.fromRGBO(252, 103, 2, 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: Text('حفظ', style: TextStyle(
                    fontSize: 22, color: Colors.white,),))


              ),
              _pickedImage == null
                  ? Container()
                  : Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(image: FileImage(_pickedImage))),
              )
            ],
            )
          ]),
      endDrawer:
      MyDrawer(),
    );
  }
}
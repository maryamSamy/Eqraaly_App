
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Drawer_class.dart';
import 'Search.dart';
void main() {
  runApp(programs());
}
class programs extends StatefulWidget {
  @override
  _programsState createState() => _programsState();
}

class _programsState extends State<programs> {
  @override
  Widget _container1(String image){
    return Container(
      margin: EdgeInsets.only(top: 10),
      width: 360,height: 140,
      decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(image),fit: BoxFit.fill,),color: Colors.green,
          boxShadow:[
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5, blurRadius: 7,
              offset: Offset(0, 3),),] ,
          borderRadius: BorderRadius.only(topRight: Radius.circular(4),topLeft: Radius.circular(4))),

    );
  }
  Widget _container(String title){
    return Container(width: 360,height: 60,
      decoration: BoxDecoration(border: Border.all(style: BorderStyle.solid,color: Colors.grey,)),
      padding: EdgeInsets.only(left:10),
      child:
      Row(
        children: <Widget>[
          Icon(Icons.play_arrow,color: Color.fromRGBO(252, 103, 2, 1),size: 40,),
          Text(title,style: TextStyle(color: Colors.black,fontSize:19),),
        ],
      ),


    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(backgroundColor: Colors.white,iconTheme: IconThemeData(color:  Color.fromRGBO(252,103 , 2, 1)),
          leading: IconButton(onPressed: (){
            Navigator.push(context ,MaterialPageRoute(builder: (context) =>search(),));
          },
            icon: (Icon(Icons.search,color: Color.fromRGBO(252,103 , 2, 1),)),),
          elevation:0, automaticallyImplyLeading: true,
//actions: <Widget>[
//IconButton(onPressed: (){},
//icon: (Icon(Icons.notifications,color: Color.fromRGBO(252,103 , 2, 1),)),),
//],
        ),
        body: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(width: 400,height: 1, color:Color.fromRGBO(252, 103, 2, 1),),
                _container1('https://media.filgoal.com/news/verylarge/183666_0.jpg'),
                _container('              جولة الأخبار الرياضية 26-9-2019'),
                _container1('https://images.akhbarelyom.com/images/images/large/20181217134932299.jpg'),
                _container('          كبسولة الأخبار الصباحية 26-9-2019'),
                _container1('https://media.filgoal.com/news/verylarge/183666_0.jpg'),
                _container('              جولة الأخبار الرياضية 25-9-2019'),
                _container1('https://images.akhbarelyom.com/images/images/large/20181217134932299.jpg'),
                _container('          كبسولة الأخبار الصباحية 25-9-2019'),
              ],)
          ],
        ),
        endDrawer:
        MyDrawer(),

      ),
    );
  }
}
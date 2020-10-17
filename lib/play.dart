
import 'package:flutter/material.dart';
import 'Drawer_class.dart';

void main() {
  runApp(PlayScreen());
}
class PlayScreen extends StatefulWidget {
  @override
  _PlayScreenState createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  @override
  Widget _container(String image){
    return Container(
        width: 150,
        height: 200,
        decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(4),
            image: DecorationImage(image: NetworkImage(image),fit: BoxFit.fill)),
        margin:  EdgeInsets.only(right: 10,left: 15,top: 20));
  }
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(centerTitle: true,iconTheme: IconThemeData(color:  Color.fromRGBO(252,103 , 2, 1)),
            backgroundColor: Colors.white,
            title: Text('جديد أقرألي',style: TextStyle(color: Colors.black,fontSize: 20),),
            elevation:0, automaticallyImplyLeading: true,
          ),
          body: ListView(
            children: <Widget>[
              Container(width: 400,height: 1, color:Color.fromRGBO(252, 103, 2, 1),),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _container('https://i.pinimg.com/564x/a6/76/06/a676069e6fd2beec9cd3199462dd309b.jpg'),
                  _container('https://i.pinimg.com/originals/ee/72/d6/ee72d691dbafc523845b6771172e0cc6.jpg')
                ],),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _container('https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1363271071l/17613072.jpg'),
                  _container('https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1510895985l/36610022._SX318_.jpg')
                ],),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _container('https://images.media.iqraaly.com:444/users/1/shows/1217_1542646101.jpeg'),
                  _container('https://www.4read.net/uploads/images/1500037510.jpg')
                ],),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _container('https://i.pinimg.com/564x/a6/76/06/a676069e6fd2beec9cd3199462dd309b.jpg'),
                  _container('https://pbs.twimg.com/media/DqMezO0X4AE5mdd.jpg')
                ],),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _container('https://images.media.iqraaly.com:444/users/1/shows/1217_1542646101.jpeg'),
                  _container('https://www.4read.net/uploads/images/1500037510.jpg')
                ],),
            ],
          ),
          endDrawer:
          MyDrawer(),
        ) );
  }
}
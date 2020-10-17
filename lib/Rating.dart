
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'libScreen.dart';
import 'rateScreen.dart';
import 'Drawer_class.dart';

class RatingScreen extends StatefulWidget {
  @override
  RatingScreenState createState() => RatingScreenState();
}
class RatingScreenState extends State<RatingScreen> with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    _tabController= TabController(length: 2, vsync: this);
// TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(iconTheme: IconThemeData(color:  Color.fromRGBO(252,103 , 2, 1)),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text('المكتبة',
          style: TextStyle(
              color: Colors.black,
              fontSize: 20),
        ),
        elevation:1, automaticallyImplyLeading: true,
        bottom: TabBar(
          controller: _tabController ,
          onTap: (index){},
          tabs: <Widget>[
            Tab(child: Text('الكتب',
              style:TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                  fontWeight: FontWeight.bold) ,),),
            Tab(child: Text('التصنيفات',
              style:TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                  fontWeight: FontWeight.bold) ,),),
          ],),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          LibScreen(),
          RateScreen(),
        ],
      ),
      endDrawer:
      MyDrawer(),
    );
  }
}
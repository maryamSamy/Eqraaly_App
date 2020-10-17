
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'Search.dart';
import 'book_Details.dart';
import 'Drawer_class.dart';
import 'package:carousel_pro/carousel_pro.dart';

void main() {
  runApp(HomeScreen());
}
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  @override

  List<Map<String, dynamic>> _dataList = [
    {
      'isSelected': true,
      'image':
      'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1510895985l/36610022._SX318_.jpg',

    },
    {
      'isSelected': false,
      'image':
      'https://images.media.iqraaly.com:444/users/1/shows/1217_1542646101.jpeg',

    },
    {
      'isSelected': false,
      'image':
      'https://www.4read.net/uploads/images/1500037510.jpg',

    },
    {
      'isSelected': false,
      'image':
      'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1363271071l/17613072.jpg',
    },
  ];

  int selectedProduct = 0;

  Widget _productCard(
      { String imageUrl, int index, bool isSelected}) {
    return InkWell(
      onTap: (
          ) {
        Navigator.push(context ,MaterialPageRoute(builder: (context) =>(MyApp1()),));
        setState(() {
          _dataList[selectedProduct]['isSelected'] = false;
          selectedProduct = index;
          _dataList[selectedProduct]['isSelected'] = true;
        });
      },
      child: Container(
        width: 100,
        height: 170,
        margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), image: DecorationImage(image: NetworkImage(imageUrl),fit: BoxFit.cover),
          color: isSelected
              ? Colors.white: Colors.white.withOpacity(0.4),


        ),
        child: Column(
          children: [
            Container(
              height: 170,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(image: NetworkImage(imageUrl),fit: BoxFit.cover)),
            ),
          ],
        ),

      ),
    );
  }

  Widget _BookType({String title}){
    return Container(
      padding:  EdgeInsets.symmetric(horizontal: 25,vertical: 0),
      margin:  EdgeInsets.only(top: 5),
      child: Row(mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Icon(Icons.arrow_back_ios,color: Color.fromRGBO(252, 103, 2, 1),),
          Text('   المزيد', style: TextStyle(color: Color.fromRGBO(252, 103, 2, 1), fontSize: 20, fontWeight: FontWeight.normal),),
          SizedBox(width: 170,),
          Text(title,style: TextStyle(color: Colors.black,fontSize: 20),)
        ],),);
  }

  @override
  Widget build(BuildContext context) {
    Widget imageCarousel = new Container(
      width: 400,height: 170,
      child: new Carousel(
        boxFit: BoxFit.fill,
        images: [
          NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS8lIy8Of9l5qUR_bNSMQjEH1QZFUrFjpsr1g&usqp=CAU'),
          NetworkImage('https://www.storytel.com//images/320x320/0000587574.jpg'),
          NetworkImage('https://www.mominoun.com/picture/2019-01/reel/5c41e1bc7ec041306418173.jpg'),
          NetworkImage('https://iqraaly.com/img/blog/books-affair2018.png'),
          NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQip0_b0_XcQ17gR_12YI7wvrMM0o2CZaVp0A&usqp=CAU'),
          NetworkImage('https://iqraaly.com/img/blog/2017-top10.jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 6, dotColor: Colors.black12,
        indicatorBgPadding: 2,
      ),
    )  ;

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:  Scaffold(backgroundColor: Colors.white,

          appBar: AppBar(centerTitle: true,iconTheme: IconThemeData(color:  Color.fromRGBO(252,103 , 2, 1)),
            backgroundColor: Colors.white,
            title: Text('الرئيسية',style: TextStyle(color: Colors.black,fontSize: 20),),
            leading: IconButton(
              onPressed: () {
                Navigator.push(context ,MaterialPageRoute(builder: (context) =>search(),));
              },
              icon: (Icon(Icons.search,color: Color.fromRGBO(252,103 , 2, 1),)
              ),
            ),
            elevation:1, automaticallyImplyLeading: true,
            actions: <Widget>[
            ],
          ),


          body:
          ListView(
            children: <Widget>[

              Column(children: <Widget>[

                Container(width: 420,height: 1, color:Color.fromRGBO(252, 103, 2, 1),),
                imageCarousel,

                Container(width: 380, height:60, margin: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration( color: Color.fromRGBO(252,103 , 2, 1), borderRadius: BorderRadius.circular(50)),

                  child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 0,right: 30,left:10),
                          width: 100, height:40,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(35),
                              color: Colors.white),
                          child:Center(child: Text('اشتراك',style: TextStyle(color: Colors.black,fontSize:17),),),
                        ),
                        Center(child: Text('احصل علي 7 ايام اشتراك مجانا',style: TextStyle(color: Colors.white,fontSize:17),),),
                      ]),
                )],
              ),

              SizedBox(height: 10),
              _BookType(title: ' كتب مجانية'),
              Container(
                height: 190,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (ctx, i) {
                    return _productCard(
                        index: i,
                        isSelected: _dataList[i]['isSelected'],
                        imageUrl: _dataList[i]['image']
                    );
                  },
                ),
              ),

              _BookType(title: 'طاقة ايجابية'),
              Container(
                height: 190,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (ctx, i) {
                    return _productCard(
                        index: i,
                        isSelected: _dataList[i]['isSelected'],
                        imageUrl: _dataList[i]['image']
                    );
                  },
                ),
              ),


              _BookType(title: 'روايات درامية   '),
              Container(
                height: 190,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (ctx, i) {
                    return _productCard(
                        index: i,
                        isSelected: _dataList[i]['isSelected'],
                        imageUrl: _dataList[i]['image']
                    );
                  },
                ),
              ),
            ],
          ),

          endDrawer:
          MyDrawer(),

        ));
  }
}
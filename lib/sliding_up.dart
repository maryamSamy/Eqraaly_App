import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sliding_up_panel/flutter_sliding_up_panel.dart';
import 'package:flutter/rendering.dart';
import 'file:///C:/Users/Mariem/AndroidStudioProjects/bottom_n/lib/Hager/Home.dart';

class MyHomePage extends StatefulWidget {
  final VoidCallback onSetting;
  MyHomePage({Key key,  this.onSetting}) : super(key: key);
  @override
  MyHomePageState createState() => MyHomePageState();
}



class MyHomePageState extends State<MyHomePage> {
  static ScrollController scrollController;
  SlidingUpPanelController panelController = SlidingUpPanelController();
  double _value = 0.0;
  void _setvalue(double value) => setState(() => _value = value);
  PersistentBottomSheetController _controller;
  GlobalKey<ScaffoldState> _key = GlobalKey();
  bool _open = false;

  @override
  void initState() {
    scrollController = ScrollController();
    scrollController.addListener(() {
      if (scrollController.offset >=
          scrollController.position.maxScrollExtent &&
          !scrollController.position.outOfRange) {
        panelController.expand();
      }
    });
    super.initState();
  }
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

  Widget buildTextForm({String hint, bool secure}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0),
      child: TextFormField(obscureText: secure, cursorColor: Colors.white,style:TextStyle(color: Colors.white),keyboardAppearance: Brightness.dark,
        decoration: InputDecoration( hintText: hint,hintStyle: TextStyle(color: Colors.grey, fontSize:20 ),
        ),),);}

  Widget _productCard(
      { String imageUrl, int index, bool isSelected}) {
    return InkWell(
      onTap: () {
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
                ? Colors.white :  Colors.white.withOpacity(0.4)),

      ),
    );
  }


  Widget _BookType({String title}){

    return  Row(mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Text(title,style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)
      ],);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:
        Stack(
          children: <Widget>[
            Scaffold(
                key: _key,
                appBar: AppBar(centerTitle: true,
                  iconTheme: IconThemeData(color:  Color.fromRGBO(252,103 , 2, 1)),

                  backgroundColor: Colors.white,
                  title: Text('الآلة',style: TextStyle(color: Colors.black,fontSize: 23),),


                  leading: IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomeScreen(),));
                    },
                    icon: (Icon(Icons. arrow_back_ios,color: Color.fromRGBO(252,103 , 2, 1),)
                    ),
                  ),
                  elevation:1, automaticallyImplyLeading: true,
                  actions: <Widget>[
                    IconButton(onPressed: (){},
                      icon: (Icon(Icons.favorite_border,color: Color.fromRGBO(252,103 , 2, 1),)),),
                    IconButton(onPressed: (){},
                      icon: (Icon(Icons.share,color: Color.fromRGBO(252,103 , 2, 1),)),)
                  ],
                ),
                body:
                ListView(scrollDirection: Axis.vertical,
                    children: <Widget>[
                      Column(children: <Widget>[

                        Container(width: 420,height: 1, color:Color.fromRGBO(252, 103, 2, 1),),
                        Row(mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[

                            Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Row(mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text('عمرو الجندي', style: TextStyle(color: Color.fromRGBO(252, 103, 2, 1), fontSize: 21),),
                                    SizedBox(width: 5,),
                                    Text(': المؤلف', style: TextStyle(color: Colors.black, fontSize: 23),),
                                  ],
                                ),
                                Row(mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text('فريق بوفو الاذاعي', style: TextStyle(color: Color.fromRGBO(252, 103, 2, 1), fontSize: 21),),
                                    SizedBox(width: 5,),
                                    Text(': القاريء', style: TextStyle(color: Colors.black, fontSize: 23),),
                                  ],
                                ),
                                Row(mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text('دار الرسم بالكلمات', style: TextStyle(color: Colors.black, fontSize: 21),),
                                    SizedBox(width: 5,),
                                    Text(': الناشر', style: TextStyle(color: Colors.black, fontSize: 23),),
                                  ],
                                ),
                                Row(mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text('10 س 55 د', style: TextStyle(color: Colors.black, fontSize: 21),),
                                    SizedBox(width: 10,),
                                    Text(': المدة', style: TextStyle(color: Colors.black, fontSize: 23),),
                                  ],
                                )
                              ],
                            ),
                            Container(width: 160,height: 230,margin: EdgeInsets.only(top: 10,right: 10,left: 10,bottom: 10) ,
                              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15), border: Border.all( width: 4,color: Color.fromRGBO(252, 103, 2, 1).withOpacity(0.3)),
                                  image: DecorationImage(image: NetworkImage('https://images.media.iqraaly.com:444/users/1/shows/1217_1542646101.jpeg',))),),

                          ],
                        ),

                        Container(
                          width: 250,height: 50,margin: EdgeInsets.only(top: 10,right: 20,left: 20) ,
                          decoration: BoxDecoration(color: Color.fromRGBO(252, 103, 2, 1),borderRadius: BorderRadius.circular(15),
                          ),
                          child:Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('استمع للفصل الاول مجانا',style: TextStyle(color: Colors.white,fontSize:20),),

                                IconButton(
                                    onPressed: () {
                                      if (!_open) {
                                        _controller = _key.currentState.showBottomSheet(
                                              (_) => SizedBox(
                                            child:
                                            Stack(
                                              children: <Widget>[
                                                Container(
                                                  height: MediaQuery.of(context).size.height,
                                                  decoration: BoxDecoration(
                                                      color: Color.fromRGBO(233, 139, 78, 1),
                                                      image: DecorationImage(image: NetworkImage('https://images.media.iqraaly.com:444/users/1/shows/1217_1542646101.jpeg',),fit: BoxFit.fill)
                                                  ),),
                                                Container(
                                                    height: MediaQuery
                                                        .of(context).size.height,
                                                    decoration: BoxDecoration(
                                                      color: Color.fromRGBO(233, 139, 78, 0.9),
                                                    ),
                                                    child: ListView(
                                                      children: [
                                                        Column(children: <Widget>[
                                                          SizedBox(height: 5,),
                                                          Row(children: <Widget>[
                                                            IconButton(onPressed: () {
                                                              _controller.close();
                                                            },
                                                              icon: (Icon(
                                                                Icons.keyboard_arrow_down,
                                                                color: Colors.white,
                                                                size: 50,)),),
                                                            Container(
                                                                margin: EdgeInsets.only(left: 150, top: 13),
                                                                height: 50,
                                                                width: 190,
                                                                decoration: BoxDecoration(color: Colors.white,
                                                                  borderRadius: BorderRadius.circular(25),
                                                                ),
                                                                child: Row(mainAxisAlignment: MainAxisAlignment.start,
                                                                  children: <Widget>[

                                                                    Container(
                                                                      margin: EdgeInsets.only(left: 20, top: 0), height: 30, width: 40,
                                                                      decoration: BoxDecoration(
                                                                          color: Colors.white,
                                                                          borderRadius: BorderRadius.circular(
                                                                              25),
                                                                          image: DecorationImage(image:
                                                                          NetworkImage(
                                                                              'http://icons.iconarchive.com/icons/icons8/windows-8/256/Transport-Steering-Wheel-icon.png'
                                                                          ))
                                                                      )
                                                                      ,),
                                                                    FlatButton(

                                                                      child: Text('وضع القيادة',
                                                                        style: TextStyle(
                                                                            fontSize: 20,
                                                                            color: Colors.black,fontWeight: FontWeight.bold),),
                                                                      onPressed: () {
                                                                        showDialog(
                                                                          context: context,
                                                                          builder: (BuildContext context) {
                                                                            return AlertDialog(
                                                                              title: Column(
                                                                                  children:[
                                                                                    SizedBox(height: 10,),
                                                                                    Column(
                                                                                      children: <Widget>[
                                                                                        IconButton(
                                                                                          onPressed: () { Navigator.of(context).pop(); },
                                                                                          icon: (Icon(
                                                                                              Icons.close, color: Colors.black,
                                                                                              size: 20)),),
                                                                                      ],
                                                                                    ),

                                                                                    Image.network('http://icons.iconarchive.com/icons/icons8/windows-8/256/Transport-Steering-Wheel-icon.png',
                                                                                      width: 30, height: 30, fit: BoxFit.contain,),
                                                                                    Center(child:Text('الآلة',
                                                                                        style: TextStyle(
                                                                                          fontSize: 70,
                                                                                          color: Colors.black,)),),
                                                                                    Text(' (01) ')
                                                                                  ]
                                                                              ),
                                                                              content: IconButton(onPressed: () {},
                                                                                icon: (Icon(
                                                                                  Icons.play_arrow, color: Colors.deepOrange,
                                                                                  size: 90,)),),
                                                                              //buttonPadding: EdgeInsets.only(left: 100,right: 100),
                                                                              actions: <Widget>[
                                                                                Row(mainAxisAlignment:  MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.center,
                                                                                  children: <Widget>[
                                                                                    SizedBox(height: 30,),
                                                                                    IconButton(padding:EdgeInsetsDirectional.only(end: 40),
                                                                                      onPressed: () {  },
                                                                                      icon: (Icon(
                                                                                          Icons.replay_30, color: Colors.deepOrange,
                                                                                          size: 50)),),

                                                                                    Text(' | ',
                                                                                        style: TextStyle(
                                                                                          fontSize: 30,
                                                                                          color: Colors.black,)),
                                                                                    IconButton(
                                                                                      padding:EdgeInsetsDirectional.only(end: 80,start: 15),
                                                                                      onPressed: () {  },
                                                                                      icon: (Icon(
                                                                                          Icons.forward_30, color: Colors.deepOrange,
                                                                                          size: 50)),),
                                                                                  ],
                                                                                ),

                                                                              ],

                                                                            );
                                                                          },
                                                                        );
                                                                      },
                                                                    ),
                                                                  ],
                                                                )

                                                            ),


                                                          ],),
                                                          SizedBox(height: 30,),
                                                          Text('الآلة', textAlign: TextAlign.center,style: TextStyle(fontSize: 52,
                                                              color: Colors.white,
                                                              fontWeight: FontWeight.bold),),
                                                          Text('عمرو الجندي',  textAlign: TextAlign.center,style: TextStyle(fontSize: 23,
                                                              color: Colors.white,
                                                              fontWeight: FontWeight.normal),),
                                                          SizedBox(height: 45,),
                                                          Row(mainAxisAlignment: MainAxisAlignment.center,
                                                            children: <Widget>[
                                                              Text('X1',style: TextStyle(fontSize: 15,color: Colors.white),),
                                                              SizedBox(width: 95,)
                                                              ,

                                                              Column(
                                                                children: <Widget>[
                                                                  Text('برومو رواية عمرو الجندي',
                                                                    style: TextStyle(fontSize: 15,
                                                                        color: Colors.white,
                                                                        fontWeight: FontWeight.bold),),
                                                                  Text('فريق بوفو الاذاعي', style: TextStyle(
                                                                      fontSize: 15,
                                                                      color: Colors.white,
                                                                      fontWeight: FontWeight.normal),),
                                                                ],
                                                              ),
                                                              SizedBox(width: 65,)
                                                              ,
                                                              IconButton(onPressed: () {

                                                              },
                                                                icon: (Icon(
                                                                  Icons.access_time, color: Colors.white,
                                                                  size: 20,)),),
                                                            ],
                                                          ),
                                                          SizedBox(height: 25,),

                                                          Container(
                                                            padding: new EdgeInsets.all(10.0),
                                                            child: new Center(
                                                              child: new Column(
                                                                children: <Widget>[
                                                                  new Slider(
                                                                      activeColor: Colors.white,
                                                                      inactiveColor: Colors.white60,
                                                                      value: _value,
                                                                      onChanged: _setvalue)
                                                                ],
                                                              ),
                                                            ),
                                                          ),

                                                          SizedBox(height: 5,),

                                                          Row(mainAxisAlignment: MainAxisAlignment.center,
                                                            children: <Widget>[
                                                              Text('00:00:00', style: TextStyle(
                                                                fontSize: 17, color: Colors.white,),)
                                                              ,
                                                              SizedBox(width: 190,),
                                                              Text('00:01:05', style: TextStyle(
                                                                fontSize: 17, color: Colors.white,),)
                                                            ],
                                                          ),
                                                          SizedBox(height: 15,),
                                                          Row(mainAxisAlignment: MainAxisAlignment.center,
                                                            children: <Widget>[
                                                              IconButton(onPressed: () {},
                                                                icon: (Icon(
                                                                    Icons.replay_30, color: Colors.white,
                                                                    size: 35)),),
                                                              SizedBox(width: 90,),
                                                              IconButton(onPressed: () {},
                                                                icon: (Icon(
                                                                  Icons.play_arrow, color: Colors.white,
                                                                  size: 66,)),),
                                                              SizedBox(width: 100,),
                                                              IconButton(onPressed: () {},
                                                                icon: (Icon(
                                                                  Icons.forward_30, color: Colors.white,
                                                                  size: 35,)),),
                                                            ],),
                                                          SizedBox(height: 30,),
                                                          Row(mainAxisAlignment: MainAxisAlignment.center,
                                                            children: <Widget>[
                                                              IconButton(onPressed: () {},
                                                                icon: (Icon(Icons.share, color: Colors.white,
                                                                    size: 27)),),
                                                              SizedBox(width: 65,),
                                                              IconButton(

                                                                icon: (Icon(
                                                                  Icons.bookmark, color: Colors.white,
                                                                  size: 27,)),
                                                                onPressed: () {
                                                                  showDialog(
                                                                    context: context,
                                                                    builder: (BuildContext context) {
                                                                      return AlertDialog(
                                                                        content:
                                                                        buildTextForm(hint: ' اضف ملاحظة', secure:false),


                                                                        actions: <Widget>[
                                                                          Row(
                                                                            mainAxisAlignment:  MainAxisAlignment.center,
                                                                            children: <Widget>[
                                                                              FlatButton(

                                                                                  child: Text('الغاء',textAlign: TextAlign.center,
                                                                                    style: TextStyle(
                                                                                        fontSize: 20,
                                                                                        color: Colors.black,fontWeight: FontWeight.bold),),
                                                                                  onPressed: () {
                                                                                    Navigator.pop(context);
                                                                                  }),

                                                                              Text(' | ',textAlign: TextAlign.center,
                                                                                  style: TextStyle(
                                                                                    fontSize: 30,
                                                                                    color: Colors.black,)),
                                                                              FlatButton(

                                                                                  child: Text('حفظ',textAlign: TextAlign.center,
                                                                                    style: TextStyle(
                                                                                        fontSize: 20,
                                                                                        color: Colors.deepOrange,fontWeight: FontWeight.bold),),
                                                                                  onPressed: () {}),
                                                                            ],
                                                                          ),

                                                                        ],

                                                                      );
                                                                    },
                                                                  );
                                                                },
                                                              ),
                                                              SizedBox(width: 60,),
                                                              IconButton(onPressed: () {},
                                                                icon: (Icon(
                                                                    Icons.file_download, color: Colors.white,
                                                                    size: 27)),

                                                              ),

                                                            ],),
                                                          SizedBox(height: 15,),
                                                          IconButton(onPressed: () {
                                                            panelController.expand();
                                                            //Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp1(),));
                                                          },
                                                            icon: (Icon(
                                                                Icons.keyboard_arrow_up, color: Colors.white,
                                                                size: 35)),),
                                                          Text('المزيد', style: TextStyle(fontSize: 22,
                                                              color: Colors.white,
                                                              fontWeight: FontWeight.normal),),

                                                        ])
                                                      ],
                                                    )
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      }
                                    },
                                    icon: (Icon(Icons.play_circle_filled ,color: Colors.white,size:25))
                                ),

                              ])
                          ,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text(': نبذة', style: TextStyle(color: Colors.black, fontSize: 23,fontWeight: FontWeight.bold),),
                            SizedBox(width: 20,),
                          ],
                        ),
                        Container(
                          padding:  EdgeInsets.symmetric(horizontal: 0,vertical: 0), margin:  EdgeInsets.only(bottom: 10,right: 6),

                          child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,

                            children: <Widget>[

                              Text('ماذا لو صحوت من نومك واكتشفت فجأة أن المسألة كلها لا تتعدى كونها تجربة ؟! الحياة التي تعيشها مجرد تجربة '
                                  'ماذا لو اكتشفت ببساطة أنها تجربة ضمن تجارب عديدة مررت بها ولكنك لا تتذكر ؟'
                                  ' فكما قال أفلاطون : الإنسان كائن ساقط مفعم بالنسيان .. فرصته الوحيدة في التعلم .. في التخلص عما يفصله عن رؤية الحقيقة .. عن النظر إليها ليكتشف وهو يحدق في عينيها أنه في الحقيقة قد وصل إلى الوطن المقدس بعد أن أتم رحلته التي جاء خصيصا من أجلها .'
                                  'ماذا لو كانت الحقيقة بالفعل كذلك ؟ ',

                                style: TextStyle(fontSize: 18, color: Colors.black,),textAlign: TextAlign.right,),],),),

                        _BookType(title: '   آخرون يستمعون الي   '),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
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
                        ),

                        _BookType(title: '   كتب لنفس المؤلف   '),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
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
                        ),
                        _BookType(title: '   كتب لنفس الراوي   '),
                        Container(
                          height: 190,
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
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
                        ),

                      ])
                    ]
                )
            ),

            SlidingUpPanelWidget(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 15.0),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shadows: [BoxShadow(blurRadius: 5.0, spreadRadius: 2.0, color: const Color(0x11000000))
                  ],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0),),
                  ),
                ),

                child: Column(
                  children: <Widget>[
                    Container( height: 70.0,
                      alignment: Alignment.center,
                      child: Column( mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'عرض المشغل',style: TextStyle(fontSize: 20,color: Colors.deepOrange,),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,color: Colors.deepOrange,
                            size: 30,
                          ),],),),
                    Divider(
                      height: 0.0,
                      color: Colors.grey,
                    ),
                    Flexible(
                      child: Container(
                        child: ListView.separated(
                          controller: scrollController,
                          physics: ClampingScrollPhysics(),
                          itemBuilder: (context, index) {
                            return
                              Container(

                                  child:
                                  Row(mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      IconButton(onPressed: () {},
                                        icon: (Icon(
                                          Icons.play_arrow, color: Colors.deepOrange,
                                          size: 30,)),),
                                      IconButton(onPressed: () {},
                                        icon: (Icon(
                                          Icons.file_download, color: Colors.deepOrange,
                                          size: 30,)),),
                                      SizedBox(width: 185,
                                      ),
                                      Text(
                                        ' ($index)',style: TextStyle(fontSize: 20,color: Colors.black,),
                                      ),
                                      Container(margin: EdgeInsets.only(bottom: 10,top: 10),
                                        height: 50, width:50,padding: EdgeInsets.only( top: 10,bottom: 50),
                                        decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(50),

                                            image: DecorationImage(image:
                                            NetworkImage(
                                                'https://images.media.iqraaly.com:444/users/1/shows/1217_1542646101.jpeg'
                                            ))

                                        ),
                                      ),
                                      SizedBox(width: 10,)



                                    ],)


                              );

                          },
                          separatorBuilder: (context, index) {
                            return Divider(
                              height: 0.5,
                            );
                          },
                          shrinkWrap: true,
                          itemCount: 10,
                        ),
                        color: Colors.white,
                      ),
                    ),
                  ],
                  mainAxisSize: MainAxisSize.min,
                ),
              ),
              controlHeight: 50.0,
              anchor: 0.4,
              panelController: panelController,
              onTap: () {
                if (SlidingUpPanelStatus.expanded == panelController.status) {
                  panelController.hide();
                } else {
                  panelController.expand();
                }
              },
              enableOnTap: true, //Enable the onTap callback for control bar.
            ),
          ],
        ));
  }
}
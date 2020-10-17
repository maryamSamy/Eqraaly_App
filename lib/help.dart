import 'package:flutter/material.dart';
import 'Drawer_class.dart';
import 'Home.dart';

void main() {
  runApp(Help());
}
class Help extends StatefulWidget {
  @override
  _HelpState createState() => _HelpState();
}

class _HelpState extends State<Help> {

  @override
  Widget buildTextForm({String hint, double num}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: TextFormField(textAlign: TextAlign.center,
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
            contentPadding: EdgeInsets.all(num),
            fillColor: Colors.white
        ),
      ),
    );
  }


  List<ListItem> _dropdownItems = [
    ListItem(1, "اختر المشكلة"),
    ListItem(2, "اواجه مشكلة في الاشتراكات"),
    ListItem(3, "اواجه مشكلة في الاستماع"),
    ListItem(4, "اواجه مشكلة في التحميل"),
    ListItem(5, "التطبيق لا يعمل معي"),
    ListItem(6, "اخري")

  ];

  List<DropdownMenuItem<ListItem>> _dropdownMenuItems;
  ListItem _selectedItem;

  void initState() {
    super.initState();
    _dropdownMenuItems = buildDropDownMenuItems(_dropdownItems);
    _selectedItem = _dropdownMenuItems[0].value;
  }

  List<DropdownMenuItem<ListItem>> buildDropDownMenuItems(List listItems) {
    List<DropdownMenuItem<ListItem>> items = List();
    for (ListItem listItem in listItems) {
      items.add(
        DropdownMenuItem(
          child: Text(listItem.name, style: TextStyle( fontSize: 22,),),
          value: listItem,
        ),
      );
    }
    return items;
  }

  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(backgroundColor: Colors.white,iconTheme: IconThemeData(color:  Color.fromRGBO(252,103 , 2, 1)),
            leading: IconButton(onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen(),));
            },
              icon: (Icon(Icons.arrow_back_ios,color: Color.fromRGBO(252,103 , 2, 1),)),),
            elevation:0, automaticallyImplyLeading: true,
          ),
          body: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[

                Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Container(height: 280, width: 300,
                      decoration: BoxDecoration(color: Colors.white,
                          image: DecorationImage(image:
                          NetworkImage(
                              'https://www.opencartarab.com/image/cache/catalog/s-1000x1000.jpg'
                          ))

                      ),),

                    Text('نحن هنا لمساعدتك ', style: TextStyle(
                        color: Color.fromRGBO(39, 35, 70, 1),
                        fontSize: 35,
                        fontWeight: FontWeight.bold),),
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(width: 370, padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.white,
                                border: Border.all()),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                  value: _selectedItem,
                                  items: _dropdownMenuItems,
                                  onChanged: (value) {
                                    setState(() {
                                      _selectedItem = value;
                                    });
                                  }),
                            ),
                          ),
                        ),
                      ],
                    ),
                    buildTextForm(hint: "ادخل البريد الالكتروني", num: 10),
                    buildTextForm(hint: "ادخل رقم التليفون", num: 10),
                    buildTextForm(
                        hint: "اخبرنا المزيد عن المشكلة التي تواجهها",
                        num: 35),

                    Container(
                        width: 370,
                        height: 50,
                        margin: EdgeInsets.only(
                            left: 5, top: 15, bottom: 5, right: 5),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(252, 103, 2, 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(child: Text(' ارسال', style: TextStyle(
                          fontSize: 22, color: Colors.white,),))


                    )
                  ],)
              ]),
          endDrawer:
          MyDrawer(),

        ));
  }
}
class ListItem {
  int value;
  String name;

  ListItem(this.value, this.name);
}
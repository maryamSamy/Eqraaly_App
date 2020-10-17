
import 'package:flutter/material.dart';
import 'Drawer_class.dart';

class LibScreen extends StatefulWidget {
  @override
  LibScreenState createState() => LibScreenState();
}

class LibScreenState extends State<LibScreen> {
  Widget container(String image){
    return Container(
        width: 150,
        height: 200,
        decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(4),
            image: DecorationImage(image: NetworkImage(image),fit: BoxFit.fill)),
        margin:  EdgeInsets.only(right: 5,left: 15,top: 10));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Row(mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                container('https://d28hgpri8am2if.cloudfront.net/book_images/onix/cvr9781501166150/the-possible-world-9781501166150_xlg.jpg'),
                container('https://img.pngio.com/textpurplevioletfontgraphic-designposterbook-cover-book-covers-png-678_1082.png')]),
          Row(mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                container('https://i.pinimg.com/236x/0b/61/1c/0b611c4a2f7aa26eae7189763984f51c.jpg'),
                container('https://lithub.com/wp-content/uploads/2019/01/9781616208882.jpg')]),
          Row(mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                container('https://i.pinimg.com/236x/64/3e/94/643e94634f8a0c534e46b0cd8f2e3fcf.jpg'),
                container('https://imagesvc.meredithcorp.io/v3/mm/image?q=85&c=sc&poi=face&w=402&h=536&url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F6%2F2016%2F09%2Fkkhp5.jpg')]),
          Row(mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                container('https://bookriot.com/wp-content/uploads/2019/06/the-winter-of-the-witch-arden-682x1024.jpg.optimal.jpg'),
                container('https://www.creativindie.com/wp-content/uploads/2013/10/cover-design-secrets-pinterest.jpg')]),
        ],
      ),
      endDrawer:
      MyDrawer(),
    );
  }
}

import 'package:flutter/material.dart';
import 'Home.dart';
import 'Library.dart';
import 'play.dart';
import 'Rating.dart';
import 'sub.dart';

class BottomNavigationScreen extends StatefulWidget {
  @override
  _BottomNavigationScreenState createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int _currentIndex = 4;
  List _screens = [
    SubScreen(),
    Library(),
    PlayScreen(),
    RatingScreen(),
    HomeScreen(),
  ];

  BottomNavigationBarItem item() {
    return BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
          size: 30,
        ),
        title: Text(
          '',
          style: TextStyle(fontSize: 0),
        ));
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp( debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            selectedItemColor: Colors.black,
            type: BottomNavigationBarType.fixed,
            onTap: (index) {
              setState(() {
                _currentIndex = index;

              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.subscriptions,
                    size: 30,
                  ),
                  title: Text(
                    '',
                    style: TextStyle(fontSize: 0),
                  )),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.library_books,
                    size: 30,
                  ),
                  title: Text('', style: TextStyle(fontSize: 0))),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.play_circle_filled,
                    size: 30,
                    color:  Color.fromRGBO(252, 103, 2, 1),
                  ),
                  title: Text('', style: TextStyle(fontSize: 0))),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.layers,
                    size: 30,
                  ),
                  title: Text('', style: TextStyle(fontSize: 0))),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    size: 30,
                  ),
                  title: Text('', style: TextStyle(fontSize: 0)))
            ],
          ),
          body: _screens[_currentIndex],
        ) );
  }
}
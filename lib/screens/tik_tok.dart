import 'package:flutter/material.dart';
import 'package:tiktok/screens/add.dart';
import 'package:tiktok/screens/discover.dart';
import 'package:tiktok/screens/home.dart';
import 'package:tiktok/screens/inbox.dart';
import 'package:tiktok/screens/me.dart';

class Tiktok extends StatefulWidget {
  const Tiktok({Key? key}) : super(key: key);

  @override
  State<Tiktok> createState() => _TiktokState();
}

class _TiktokState extends State<Tiktok> {
  List<Widget> pages = [Home(), Discover(), Add(), Inbox(), Me()];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xff2B2B2B),
        bottomNavigationBar: BottomNavigationBar(showUnselectedLabels: true,
          elevation: 0,
          // backgroundColor: Color(0xff3C3F41),
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          backgroundColor: Colors.white12,

          unselectedFontSize: 10,
          currentIndex: index,
          items: [
          BottomNavigationBarItem(
          icon: Icon(
          Icons.home, color: Colors.white,),
        label: "Home",
        backgroundColor: Colors.black38),
    BottomNavigationBarItem(
    // backgroundColor: Color(0xff3C3F41),
    icon: Icon(
    Icons.south_america_rounded,
    color: Colors.white,
    ),
    label: "Discover",
    backgroundColor: Colors.black38),
    BottomNavigationBarItem(
    activeIcon: Stack(
    children: [
    Container(
    width: 43,
    height: 30,
    decoration:BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(7),
    gradient: LinearGradient(colors: [
      Colors.tealAccent,
      Colors.pinkAccent
    ],
    begin: Alignment.centerLeft,
    end: AlignmentDirectional.centerEnd),

    ) ,
    ),
    Positioned(
      left: 3.4,
      top: 1,
      child: Container(
      child: Icon(
      Icons.add,
      color: Colors.black,
      ),
      width: 36,
      height: 30,
      decoration:BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),


      )
      ),
    ),
    ]
    ),
    icon: Icon(
    Icons.add,
    color: Colors.white,
    ),
    label: "Add",
    backgroundColor: Colors.black38),
    BottomNavigationBarItem(
    // backgroundColor: Color(0xff3C3F41),
    icon: Icon(
    Icons.inbox_outlined,
    color: Colors.white,
    ),
    label: "Inbox",
    backgroundColor: Colors.black38),
    BottomNavigationBarItem(
    // backgroundColor: Color(0xff3C3F41),
    icon: Icon(Icons.person,
    color: Colors.white),
    label: "Me",backgroundColor: Colors.black38),
    ]),
    body: pages[
    index
    ]
    ,
    );
  }
}

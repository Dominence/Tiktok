import 'package:flutter/material.dart';
import 'package:tiktok/screens/tik_tok.dart';
import 'package:tiktok/screens/splash_screen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  Future<void> Splashscreen() async {
   await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Tiktok(),
        ));
  }

  @override
  void initState() {
    Splashscreen(); // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black26,
        body: Center(
          child:Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
          Container(
              child:
              Icon(
            Icons.tiktok_outlined,
            size: 110,
            color: Colors.orange,
          )
          ),
          Text("Tiktok",
          style: TextStyle(
            fontSize: 33,
            color: Colors.amber,
            fontWeight: FontWeight.bold
          ),)
          ])
        ));
  }
}

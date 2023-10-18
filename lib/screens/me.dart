import 'package:flutter/material.dart';
import 'package:tiktok/screens/widgets/setting.dart';

class Me extends StatelessWidget {
  const Me({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
              child: Text(
            "Profile",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          )),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Settings(),
                      ));
                },
                icon: Icon(Icons.menu))
          ]),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 125, top: 20),
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                    "images/camera-50.png",
                  )),
                  borderRadius: BorderRadius.circular(900),
                  gradient: LinearGradient(colors: [
                    Colors.blueAccent.withOpacity(0.11),
                    Colors.indigo.withOpacity(0.11),
                    Colors.red.withOpacity(0.11)
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 130, top: 9),
            child: Text(
              "@username",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text("O",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17)),
                    Text(
                      "Following",
                      style: TextStyle(color: Colors.black38),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text("O",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17)),
                    Text(
                      "Followers",
                      style: TextStyle(color: Colors.black38),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text("O",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17)),
                    Text(
                      "Likes",
                      style: TextStyle(color: Colors.black38),
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80, left: 70),
            child: Text(
              "Revisit videos you liked",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60, top: 10, right: 60),
            child: Container(
              height: 40,
              width: 300,
              color: Colors.redAccent,
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 16),
                  )),
            ),
          ),

        ],
      ),
    );
  }
}

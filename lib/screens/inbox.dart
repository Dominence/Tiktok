import 'package:flutter/material.dart';

class Inbox extends StatelessWidget {
  const Inbox({Key? key}) : super(key: key);
/// lets try again
  @override


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:
      Center(child: Text("Inbox",
        style: TextStyle(fontWeight: FontWeight.w600,
            fontSize: 17),))),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 47, top: 30),
            child:
            Row(
              children: [
                CircleAvatar(backgroundColor: Colors.blue,
                  child: IconButton(onPressed: () {

                  }, icon: Icon(Icons.group, color: Colors.white,)),),
                Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: Container(width: 108,
                      height: 13,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Colors.red.withOpacity(0.10),
                            // Colors.indigo.withOpacity(0.11),
                            Colors.blueAccent.withOpacity(0.11)
                          ],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight)
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 34),
                  child: Container(width: 52,
                    height: 12,
                    color: Colors.brown.withOpacity(0.12),),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 60, left: 105, top: 8),
            child: Container(
                width: 355,
                height: 1,
                color: Colors.grey.shade200
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 47, top: 10),
            child:
            Row(
              children: [
                CircleAvatar(backgroundColor: Colors.pinkAccent,
                  child: IconButton(onPressed: () {

                  }, icon: Icon(Icons.favorite, color: Colors.white,)),),
                Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: Container(width: 108,
                      height: 13,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Colors.red.withOpacity(0.10),
                            // Colors.indigo.withOpacity(0.11),
                            Colors.blueAccent.withOpacity(0.11)
                          ],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight)
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 34),
                  child: Container(width: 52,
                    height: 12,
                    color: Colors.brown.withOpacity(0.12),),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 60, left: 105, top: 8),
            child: Container(
                width: 355,
                height: 1,
                color: Colors.grey.shade200
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 47, top: 10),
            child:
            Row(
              children: [
                CircleAvatar(backgroundColor: Colors.blue,
                  child: IconButton(onPressed: () {

                  }, icon: Icon(Icons.group, color: Colors.white,)),),
                Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: Container(width: 108,
                      height: 13,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Colors.red.withOpacity(0.10),
                            // Colors.indigo.withOpacity(0.11),
                            Colors.blueAccent.withOpacity(0.11)
                          ],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight)
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 34),
                  child: Container(width: 52,
                    height: 12,
                    color: Colors.brown.withOpacity(0.12),),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 60, left: 105, top: 8),
            child: Container(
                width: 355,
                height: 1,
                color: Colors.grey.shade200
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 47, top: 10),
            child:
            Row(
              children: [
                CircleAvatar(backgroundColor: Colors.pinkAccent,
                  child: IconButton(onPressed: () {

                  }, icon: Icon(Icons.telegram_sharp, color: Colors.white,)),),
                Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: Container(width: 108,
                      height: 13,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Colors.red.withOpacity(0.10),
                            // Colors.indigo.withOpacity(0.11),
                            Colors.blueAccent.withOpacity(0.11)
                          ],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight)
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 34),
                  child: Container(width: 52,
                    height: 12,
                    color: Colors.brown.withOpacity(0.12),),
                ),
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: 25, left: 10),
            child: Text("Share videos with friends",
              style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 22),),
          ),
          Padding(
            padding:EdgeInsets.only(left: 60, top: 20, right: 60),
            child: Container(
              height: 40,
              width: 300,
              color: Colors.redAccent,
              child: TextButton(onPressed: () {

              }, child: Text("Sign up",
                style: TextStyle(
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontSize: 16
                ),)),
            ),
          ),
          SizedBox(height: 7,),
          ElevatedButton(onPressed: () {
            showDialog(
              context: context, builder: (context) => AlertDialog(
              title: Text("Default settings",
              style: TextStyle(fontWeight: FontWeight.w600,
                fontSize: 20
              )),
                content:  Text("This is the default setting of this app"),
                actions: [
                  TextButton(onPressed: () {
                  Navigator.of(context).pop();
                }, child: Text("Close")),
                  TextButton(onPressed: () {
                  Navigator.of(context).pop();
                }, child: Text("Continue")),
                ]),);
          }, child: Text("Show AlertDialog")),

        ],
      ),
    );
  }
}

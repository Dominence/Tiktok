import 'package:flutter/material.dart';


class Follow extends StatefulWidget {
  const Follow({Key? key}) : super(key: key);

  @override
  State<Follow> createState() => _FollowState();
}

class _FollowState extends State<Follow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFBFBFB),
      appBar: AppBar(
        leading: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 25,
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_sharp),
            color: Colors.black,
            iconSize: 34,
            style: ButtonStyle(
                shadowColor: MaterialStatePropertyAll(Colors.transparent)),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 70),
          child: Text("Fi~Dence",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 19)),
        ),
        actions: [
          PopupMenuButton(elevation: 4,
               color: Colors.grey,
              offset: Offset(8, 100),
              itemBuilder: (context) => [
                    PopupMenuItem(
                        child: Row(
                      children: [
                        Icon(Icons.star),
                        SizedBox(
                          // sized box with width 10
                          width: 10,
                        ),
                        Text("Get The App")
                      ],
                    )),
                    PopupMenuItem(
                        child: Row(
                      children: [ Icon(Icons.chrome_reader_mode),
                        SizedBox(
                          // sized box with width 10
                          width: 10,
                        ),
                        Text("About")],
                    )),
                    PopupMenuItem(
                        child: Row(
                      children: [ Icon(Icons.more_rounded),
                        SizedBox(
                          // sized box with width 10
                          width: 10,
                        ),
                        Text("Privacy")],
                    )),
                  ]
          ),
        ],
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage:
                    AssetImage( "images/img-removebg-preview (1).png",
                        ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 140, top: 9),
              child: Text("@Fi~Dence",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text("70",
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
                      Text("2.3M",
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
                      Text("3.4M",
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
              padding: const EdgeInsets.only(left: 70, top: 13, right: 40),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 170,
                    color: Colors.redAccent,
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Follow",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              fontSize: 16),
                        )),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 40,
                    width: 44,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(color: Colors.black26, width: 1)),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 2, bottom: 5, right: 5),
                      child: Icon(
                        Icons.arrow_drop_down_sharp,
                        size: 30,
                        color: Colors.black38,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80, top: 15),
              child: Text("Too Blessed to be Stressed..."),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 100,
              ),
              child: Text("iG: its_Fi~Dence"),
            ),
            TabBar(
                indicatorColor: Colors.black,
                unselectedLabelColor: Colors.black38,
                tabs: [
                  Padding(
                    padding: const EdgeInsets.only(right: 130),
                    child: Tab(
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 49),
                          child:
                              Icon(Icons.stream_outlined, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 130),
                    child: Tab(
                      icon: Padding(
                        padding: const EdgeInsets.only(left: 49),
                        child: Icon(
                          Icons.favorite_border_outlined,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  )
                ])
          ],
        ),
      ),
    );
  }
}

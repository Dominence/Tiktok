import 'package:flutter/material.dart';
import 'package:tiktok/screens/logo.dart';
import 'package:tiktok/screens/widgets/bottom_sheet.dart';
import 'package:pod_player/pod_player.dart';

import '../model/project_story.dart';

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController pageController = PageController(initialPage: 0);

  List<ProjectStory> listProjects = [
    ProjectStory(url: 'https://www.youtube.com/shorts/7a32dOKz5mg',
        likecount: "\$200.5K",
        userimage: "images/img.png",
        messagecount: "\$200.5K",
        returncount: "\$200.5K",
        description: 'Do have a blessed weekend',
        title: 'King fortune',
        name: '#kingfortune#Nesan#Dominence',
        profileimage:'images/2370.jpg' ,
        image: 'images/img.png'),
    ProjectStory(url: 'https://www.youtube.com/shorts/ZkSmcw2UhFs',
        likecount: "\$90K",
        messagecount: "\$120K",
        returncount: "\$9K",
        userimage: 'images/img_1.png',
        description: 'Happy sunday my people',
        profileimage: 'images/img_1.png',
        title: 'Aboby',
        name: '#Aboby#mirabel#trendy',
        image: 'images/img_1.png'),
 ProjectStory(url: 'https://www.youtube.com/shorts/AhTW7_f6VPY',
        likecount: "\$2.5M",
        messagecount: "\$12K",
        returncount: "\$23K",
        userimage: 'images/img_1.png',
        description: 'OfficialDeBoss',
        profileimage: 'images/img_1.png',
        title: 'Slow Flow',
        name: '#Love#song#music#officialdboss',
        image: 'images/img_1.png'),
ProjectStory(url: 'https://www.youtube.com/shorts/IzoNgeM7rlY',
        likecount: "\$2.5M",
        messagecount: "\$12K",
        returncount: "\$23K",
        description: '@Fi~Dence',
        userimage: 'images/img_2.png',
        profileimage: 'images/img_2.png',
        title: 'Bold Glamour',
        name: '#foryoupage#viral#explore#fyp',
        image: 'images/img_2.png'),

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black87.withOpacity(0.9),
        appBar: AppBar(
          elevation: null,
          backgroundColor: Colors.black38,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search_rounded,
                  color: Colors.white,
                ))
          ],
          title: Padding(
            padding: const EdgeInsets.only(left: 65),
            child: Row(
              children: [
                Text(
                  "Following",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "~",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "For You",
                  style: TextStyle(
                      color: Colors.white30,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        body: PageView.builder(
          pageSnapping: true,
          controller: pageController,
          scrollDirection: Axis.vertical,
          itemCount: listProjects.length,
          onPageChanged: (value) {},
          itemBuilder: (context, index) {
            return Story(projectStory: listProjects[index]);
          },
        ));
  }
}

class Story extends StatefulWidget {
  const Story(
      {Key? key,
        required this.projectStory,
     })
      : super(key: key);

final ProjectStory projectStory;
  @override
  State<Story> createState() => _StoryState();
}

class _StoryState extends State<Story> {

  bool isFav = false;
  late final PodPlayerController controller;

  @override
  void initState() {
    controller = PodPlayerController(

        playVideoFrom: PlayVideoFrom.youtube(widget.projectStory.url)
      // network(
      //   'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4',
      // ),
    )..initialise();
    super.initState();
  } @override
  void dispose() {
    controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Align(
        alignment: Alignment.topCenter,
        child: Container(
          child:PodVideoPlayer(
    controller: controller,
    videoAspectRatio: 0.5,
            frameAspectRatio: 0.5,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 560, left: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 2),
              child: Container(
                width: 120,
                height: 30,
                child: Row(
                  children: [
                    Icon(
                      Icons.grain_outlined,
                      color: Colors.yellow,
                    ),
                    SizedBox(width: 7),
                    Text(
                      widget.projectStory.title,
                      style: TextStyle(color: Colors.yellow),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.white38),
              ),
            ),
            SizedBox(height: 6),
            Text(widget.projectStory.description,
                style: TextStyle(color: Colors.white)),
            Container(
              child: Text(widget.projectStory.name,
                  style: TextStyle(color: Colors.white)),
            )
          ],
        ),
      ),
      Positioned(
        top: 230,
        right: 13,
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Follow(),
                ));
          },
          child: CircleAvatar(
            radius: 24,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage(widget.projectStory.image),
          ),
        ),
      ),
      Positioned(
        right: 25,
        top: 261,
        child: CircleAvatar(
          radius: 12,
          backgroundColor: Colors.red,
          child: Icon(Icons.add, color: Colors.white),
        ),
      ),
      Positioned(
          top: 290,
          right: 10,
          child: GestureDetector(
            onTap: () {
              setState(() {
                isFav = !isFav;
              });
            },
            child: Icon(
              isFav == true ? Icons.favorite : Icons.favorite,
              size: 50,
              color: isFav == true ? Colors.red : Colors.white,
            ),
          )),
      Positioned(
          right: 10,
          top: 345,
          child: Text(
            widget.projectStory.likecount,
            style: TextStyle(color: Colors.white),
          )),
      Positioned(
        top: 371,
        right: 11,
        child: Image(
            image: AssetImage("images/Chat Bubble.png"), height: 47, width: 47),
      ),
      Positioned(
          right: 10,
          top: 430,
          child: Text(
            widget.projectStory.messagecount,
            style: TextStyle(color: Colors.white),
          )),
      Positioned(
          top: 450,
          right: 6,
          child: GestureDetector(
            onTap: () {
              showModalBottomSheet(
                  context: context, builder: (context) => Bottomsheet());
            },
            child: Container(
              width: 50,
              child: Image(
                image: AssetImage("images/Forward Arrow.png"),
                fit: BoxFit.cover,
                width: 35,
                height: 50,
              ),
            ),
          )),
      Positioned(
          right: 10,
          top: 507,
          child: Text(
            widget.projectStory.returncount,
            style: TextStyle(color: Colors.white),
          )),
      Positioned(
        top: 532,
        right: 8,
        child: CircleAvatar(
            backgroundColor: Colors.black38,
            radius: 30,
            child: Image(
              image: AssetImage("images/icons8-facebook-96 (1).png"),
              fit: BoxFit.cover,
            )),
      ),
      Positioned(
        top: 600,
        right: 13,
        child: CircleAvatar(
            radius: 24,
            backgroundImage: AssetImage(
             widget.projectStory.profileimage,
            )),
      ),
    ]);
  }
}

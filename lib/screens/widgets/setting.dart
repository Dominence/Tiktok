import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white.withOpacity(0.9),
        body: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
          padding: const EdgeInsets.only(left: 15, top: 34),
          child: CircleAvatar(backgroundColor: Colors.transparent,
              radius: 25,
              child: IconButton(onPressed: () {
                Navigator.pop(context);
              }, icon: Icon(Icons.arrow_back_sharp, size: 28),))),
    Padding(
    padding: const EdgeInsets.only(left: 30),
    child: Text("Settings and privacy",
    style: TextStyle(fontSize: 26,
    fontWeight: FontWeight.bold
    ),),
    ),
    SizedBox(height: 20),
    Padding(
    padding: const EdgeInsets.only(left: 29),
    child: Text("Account",
    style: TextStyle(
    color: Colors.black38
    )),
    ),
    Padding(
    padding: const EdgeInsets.only(left: 12,top: 8,right: 12),
    child: Container(
    child: Row(
    children: [
    Padding(
    padding: const EdgeInsets.only(left: 21),
    child: Icon(Icons.person,color:Colors.black38 ),
    ),
    Text("My account",
    style: TextStyle(
    fontWeight: FontWeight.w500
    )),
    Padding(
    padding: const EdgeInsets.only(left: 125),
    child: Container(height: 20,
    child: Center(
    child: Text("Sign up",
    style: TextStyle(color: Colors.white)),
    ),
    width: 70,
    decoration: BoxDecoration(
    color: Colors.redAccent,
    borderRadius: BorderRadius.circular(4)
    ),),
    )
    ],
    ),
    width: 340,
    height: 56,
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10)
    ),
    ),
    ),
    SizedBox(height: 23),
    Padding(
    padding: const EdgeInsets.only(left: 29),
    child: Text("Content & Display",
    style: TextStyle(
    color: Colors.black38
    )),
    ),
    Padding(
    padding: const EdgeInsets.only(left: 12,right: 12,top: 8),
    child: Container(
    child:
    Column(
      children: [
          screens(
            image: "images/icons8-video-playlist-24.png",
            text: 'LIVE',
            fontSize: 17,
            icon: Icons.arrow_forward_ios_outlined,

          ),
          screens(

            image: "images/icons8-video-call-30.png",
            text: 'Content preferences',
            fontSize: 15,
            icon: Icons.arrow_forward_ios_outlined,

          ),
          screens(
            image: "images/icons8-video-24.png",
            text: 'Playback',
            fontSize: 15,
            icon: Icons.arrow_forward_ios_outlined,
          ),
          screens(
            image: "images/icons8-xbox-a-50.png",
            text: 'Language',
            fontSize: 15,
            icon: Icons.arrow_forward_ios_outlined,
          ),
      ],
    ),

    width: 340,
    height: 224,
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius:BorderRadius.circular(11) ),
    ),
    ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 29),
              child: Text("Cache & Cellular",
                  style: TextStyle(
                      color: Colors.black38
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12,right: 12,top: 9),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(11)),
                height: 177,
                width: 340,
              child: Column(
                children: [
                  screens(
                    image: "images/icons8-trash-50.png",
                    text: 'Free up space',
                    fontSize: 15,
                    icon: Icons.arrow_forward_ios_outlined,
                  ),
                  screens(
                    image: "images/icons8-marker-n-50.png",
                    text: 'Data saver',
                    fontSize: 15,
                    icon: Icons.arrow_forward_ios_outlined,
                  ),
                  screens(
                    image: "images/icons8-circled-play-80.png",
                    text: 'Wallpaper ',
                    fontSize: 15,
                    icon: Icons.arrow_forward_ios_outlined,
                  ),
                ],
              ),
              ),
            ),SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 29),
              child: Text("Support & About",
                  style: TextStyle(
                      color: Colors.black38
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12,right: 12,top: 9),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(11)),
                height: 177,
                width: 340,
              child: Column(
                children: [
                  screens(
                    image: "images/report.png",
                    text: 'Report a problem',
                    fontSize: 15,
                    icon: Icons.arrow_forward_ios_outlined,
                  ),
                  screens(
                    image: "images/icons8-popular-24.png",
                    text: 'Support ',
                    fontSize: 15,
                    icon: Icons.arrow_forward_ios_outlined,
                  ),
                  screens(
                    image: "images/icons8-circled-i-50.png",
                    text: 'Terms and Policies ',
                    fontSize: 15,
                    icon: Icons.arrow_forward_ios_outlined,
                  ),
                ],
              ),
              ),
            ),
            SizedBox(height: 40,),
            Center(child: Text("v31.3.4(2023103040)",
            style: TextStyle(color: Colors.black54),))

    ]
    ),
        )
    );
  }
}

class screens extends StatelessWidget {
  const screens({
    super.key,
    this.text,
    required this.image,
    this.fontSize,
    this.icon,
  });
final text;
final String image;
final double? fontSize;
final icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image(image: AssetImage(image),
          color: Colors.black38,
          height: 17,
          width: 17 ),
      title: Text(text,
        style: TextStyle(color: Colors.black,
          fontSize: fontSize,
          fontWeight: FontWeight.w500,
        ), ),
      trailing: Icon(icon,
        size: 16,
        color: Colors.black38,),
    )
  ;
  }
}

import 'package:flutter/material.dart';

class Bottomsheet extends StatelessWidget {
  const Bottomsheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        height: 238,
        decoration: BoxDecoration(color: Colors.white,
            borderRadius:BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8)
            ) ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Center(
                child: Text("Share to",
                style: TextStyle(
                    color: Colors.black.withOpacity(0.7),
                fontWeight: FontWeight.bold,
                fontSize: 15),),
              ),
            ),
      Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child:
            Row(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child:
                  Container(padding: EdgeInsets.all(12),
                    child: filing(backgroundColor: Colors.indigoAccent,
                      text:"Copy link" ,
                      color: Colors.white,
                      image: 'images/link.png',
                    ),
                  ),),
                Container(padding: EdgeInsets.only(top: 12,left: 1),
                  child: filing(
                    backgroundColor: Colors.yellow,
                    text:"Snapchat" ,
                    color: Colors.black,
                    image: 'images/snapchat.png',
                  ),
                ),
                Container(padding: EdgeInsets.only(top: 12,left: 12),
                  child: filing(
                    backgroundColor: Colors.green,
                    text:"SMS",
                    color: Colors.white,
                    image: 'images/speech-bubble.png',
                  ),
                ),
                Container(padding: EdgeInsets.only(top: 12,left: 12),
                  child: filing(
                    backgroundColor: Colors.lightBlue,
                    text:"Email",
                    // color: Colors.white,
                    image: 'images/envelope.png',
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 12,left: 12),
                  child: filing(
                    backgroundColor: Colors.white,
                    text:"Lite",
                    image: 'images/facebook.png',
                    color: Colors.blue,
                  ),
                ),
                Container(padding: EdgeInsets.only(top: 12,left: 12),
                  child: filing(
                    backgroundColor: Colors.blue,
                    text:"Twitter",
                    color: Colors.white,
                    image: 'images/twitter.png',
                  ),
                ),
                Container(padding: EdgeInsets.only(top: 12,left: 12),
                  child: filing(
                    backgroundColor: Colors.lightBlue,
                    text:"Facebook",
                    color: Colors.white,
                    image: 'images/facebook.png',
                  ),
                ),
                Container(padding: EdgeInsets.only(top: 12,left: 12),
                  child: filing(
                    backgroundColor: Colors.blue,
                    text:"More",
                    color: Colors.black,
                    image: 'images/more.png',
                  ),
                ),
              ]
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 7),
                  child:
                  Container(padding: EdgeInsets.only(left: 5),
                    child: filing(backgroundColor: Colors.black12,
                      text:"Report " ,
                      // color: Colors.black,
                      image: 'images/report.png',
                    ),
                  ),),
                Container(padding: EdgeInsets.only(left: 4),
                  child: filing(
                    backgroundColor: Colors.black12,
                    text:"Not interested" ,
                    color: Colors.black,
                    image: 'images/icons8-broken-heart-48.png',
                  ),
                ),
                Container(padding: EdgeInsets.only(left: 5),
                  child: filing(
                    backgroundColor: Colors.black12,
                    text:"Save video",
                    image: 'images/icons8-circled-play-80.png',
                  ),
                ),
                Container(padding: EdgeInsets.only(left: 5),
                  child: filing(
                    backgroundColor: Colors.black12,
                    text:"Turn off "
                        "captions",
                    // color: Colors.white,
                    image: 'images/icons8-ios-application-placeholder-50.png',
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 5),
                  child: filing(
                    backgroundColor: Colors.black12,
                    text:"Set as wallpaper",
                    image: 'images/icons8-google-photos-48.png',

                  ),
                ),
                Container(padding: EdgeInsets.only(left: 5),
                  child: filing(
                    backgroundColor: Colors.black12,
                    text:"Create sticker",
                    image: 'images/sticker.png',
                  ),
                ),
                Container(padding: EdgeInsets.only(left: 5),
                  child: filing(
                    backgroundColor: Colors.black12,
                    text:"Duet",
                    color: Colors.black,
                    image: 'images/bookmark.png',
                  ),
                ),
                Container(padding: EdgeInsets.only(left: 5),
                  child: filing(
                    backgroundColor: Colors.black12,
                    text:"Stitch",
                    color: Colors.black,
                    image: 'images/icons8-ios-application-placeholder-50.png',
                  ),
                ), Container(padding: EdgeInsets.only(left: 5),
                  child: filing(
                    backgroundColor: Colors.black12,
                    text:"Playback speed",
                    color: Colors.black,
                    image: 'images/icons8-speedometer-25.png',
                  ),
                ), Container(padding: EdgeInsets.only(left: 5),
                  child: filing(
                    backgroundColor: Colors.black12,
                    text:"Share as GIF",
                    color: Colors.black,
                    image: 'images/gif.png',
                  ),
                ),
              ]
            ),
          ),
        ],
      )

        ],
        ),
      ),
    );
  }
}

class filing extends StatelessWidget {
  const filing({
    super.key,
    this.icon,
    required this.image,
     required this.text,
    this.color, this.backgroundColor,

  });
  final IconData? icon;
  final String image;
  final  String text;
  final Color? color;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          decoration: ShapeDecoration(shape: CircleBorder(
            side: BorderSide(color: Colors.black12,)
          )),
          child: CircleAvatar(

            radius: 25,
            backgroundColor: backgroundColor,
            child: Image.asset(image,
                color:  color,
                width: 30,
                height: 21) ,
          ),
        ),
        Text(text,style: TextStyle(color:Colors.black,
          fontSize: 11
        ),),
        Icon(icon,
        color:color,
    ),



    ],
    );
  }
}

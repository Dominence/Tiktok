import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CustomIcons extends StatelessWidget {
  const CustomIcons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.favorite,color: Colors.red,size: 50,
    );
  }
}

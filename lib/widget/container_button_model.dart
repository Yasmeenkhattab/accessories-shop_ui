import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerButtonModel extends StatelessWidget {
  final Color? bgColor;
  final double? containerWidth;
  final String itext;
   ContainerButtonModel({super.key, required this.bgColor, required this.containerWidth, required this.itext});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: containerWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: bgColor
      ),
      child: Center(child: Text(itext,style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),)),
    );
  }
}

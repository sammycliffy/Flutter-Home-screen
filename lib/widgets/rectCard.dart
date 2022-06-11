

import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:services/utils/dimensions.dart';

class RectCard extends StatelessWidget {
  RectCard({this.backGroundColor=Colors.white,
    this.backGroundColor2=Colors.white,
    this.iconColor=Colors.blueAccent,
    required this.imageIcon,
    this.iconSize=24,
    this.txt='',
    this.paddin=20,Key? key}) : super(key: key);
  Color? backGroundColor;
  Color? backGroundColor2;
  Color? iconColor;
  double? iconSize=24;
  String? imageIcon;
  double? paddin=6;
  String? txt;

  @override
  Widget build(BuildContext context) {
    return Container( padding: EdgeInsets.symmetric(vertical:paddin!,horizontal:paddin!*1.8),
      decoration: BoxDecoration(
        gradient: LinearGradient(begin: Alignment.topLeft,end: Alignment.bottomRight,
            colors: [ backGroundColor!,
              backGroundColor2!

            ]),
        color: backGroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          SvgPicture.asset(imageIcon!,color:iconColor,width: iconSize,height: iconSize,),
          SizedBox(height: Dimensions.height10,),
          Text(txt!,style: TextStyle(fontFamily: 'NetflixMid',color: Color(
              0xFF1B165B)),),
        ],
      ),
      //Image(image: imgIcon!,),
    );
  }
}

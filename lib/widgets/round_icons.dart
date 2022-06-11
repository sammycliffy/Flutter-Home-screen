
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/dimensions.dart';

class RoundIcons extends StatelessWidget {
   RoundIcons({this.backGroundColor=Colors.grey,this.backGroundColor2=Colors.grey,
     this.iconColor=Colors.blue,
     required this.imageIcon,
     this.txt='',
     this.iconSize=24,this.paddin=12,Key? key}) : super(key: key);
    Color? backGroundColor=Colors.grey;
   Color? backGroundColor2=Colors.grey.shade700;
   Color? iconColor;
   double? iconSize=24;
   String? imageIcon;
   double? paddin=10;
   String? txt;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container( padding: EdgeInsets.all(paddin!),
          decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topLeft,end: Alignment.bottomRight,
                colors: [ backGroundColor!,
                  backGroundColor2!

                ]),
            color: backGroundColor,
            borderRadius: BorderRadius.circular(100),
          ),
          child: SvgPicture.asset(imageIcon!,color:iconColor,width: iconSize,height: iconSize,),
          //Image(image: imgIcon!,),
        ),
        SizedBox(height: Dimensions.height10,),
        Text(txt!,style: TextStyle(fontFamily: 'NetflixMid',color: Color(
            0xFF1B165B)),),
      ],
    );
  }
}

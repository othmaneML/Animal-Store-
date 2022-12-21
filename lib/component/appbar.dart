import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:theme/constant.dart';

class Appbar extends StatelessWidget {
  const Appbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: kdefaultMargin,
        right: kdefaultMargin,
        top: 54,
      ).h,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        SvgPicture.asset(
          'assets/Menu.svg',
          height: 17.h,
          width: 18.h,
          fit: BoxFit.cover,
        ),
        CircleAvatar(
          radius: 20.r,
          backgroundImage: const AssetImage('assets/Avatar.png'),
          child: Image.asset(
            'assets/Avatar.png',
            height: 40.w,
            width: 40.w,
            fit: BoxFit.cover,
          ),
        )
      ]),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant.dart';

class WelcomeComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
          margin:  EdgeInsets.only(
              left: 30.r, right:30.r,top:20.h,bottom: 25),
          height: 115.h,
          width:double.infinity,
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.all(Radius.circular(17)))),
      Positioned(
        top: 15.r,
        left: 5.r,
        child: Image.asset(
          height: 154.r,
          width: 134.r,
          'assets/Cat.png',
          fit: BoxFit.cover,
        ),
      ),
      Positioned(
        top: 30.72.h,
        left: 130.91.w,
        child: SizedBox(
          height: 78.h,
          width: 178.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Text(
                  'Hello Othmane 👋',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              Flexible(
                child: Text('Ready for an amazing and lucky experience 🐈 🐕',
                    style: Theme.of(context).textTheme.bodyMedium),
              ),
            ],
          ),
        ),
      )
    ]);
  }
}





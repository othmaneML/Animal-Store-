import '../constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:date_format/date_format.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemDescription extends StatelessWidget {
  final String animalName;
  final String imageUrl;
  final DateTime dayAdded;
  final String favoriteMeal;

  const ItemDescription(
      {required this.animalName,
      required this.dayAdded,
      required this.imageUrl,
      required this.favoriteMeal});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 15).h,
        padding: EdgeInsets.all(9).r,
        height: 168.r,
        width: 150.r,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.r),
                child: Image.asset(
                  imageUrl,
                  width: 129.w,
                  height: 80.h,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding:
                      EdgeInsets.only(top: 1, left: 8, bottom: 1, right: 10).h,
                  height: 17.h,
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor.withOpacity(0.2),
                      borderRadius: BorderRadius.all(Radius.circular(40))),
                  child: Text(
                    favoriteMeal,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: Theme.of(context).primaryColor,
                          fontSize: 9.sp,
                        ),
                  ),
                ),
                Icon(
                  Icons.favorite_border,
                  size: 15,
                  color: Colors.red,
                )
              ],
            ),
            Flexible(
              child: Text(
                animalName,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            Flexible(
              child: Text(formatDate(dayAdded, [dd, ' ', mm, ' ', yyyy]),
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Color(0xff838092))),
            ),
          ],
        ));
  }
}

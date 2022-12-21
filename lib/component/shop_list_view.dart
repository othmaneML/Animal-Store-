import '../constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import './item_description.dart';
import '../models/dummy_data.dart';

class ShopeListView extends StatelessWidget {
  final String animalCategory;

  const ShopeListView(
    this.animalCategory,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220.h,
      margin: EdgeInsets.only(
        top: 25.r,
        left: kdefaultMargin,
      ).h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Text(
              animalCategory,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          SizedBox(
            height: 168.h,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: availableDogs.length,
                itemBuilder: ((context, index) => ItemDescription(
                      animalName: availableDogs[index].name,
                      dayAdded: availableDogs[index].dateAdded,
                      imageUrl: availableDogs[index].imageUrl,
                      favoriteMeal: availableDogs[index].favoriteMeal,
                    ))),
          )
        ],
      ),
    );
  }
}

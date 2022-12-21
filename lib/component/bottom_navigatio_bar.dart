import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: [
      BottomNavigationBarItem(
        icon: IconButton(
          constraints: const BoxConstraints(),
          padding: const EdgeInsets.all(0),
          onPressed: () {},
          icon: const Icon(
            Icons.home,
          ),
        ),
        label: '',
      ),
      BottomNavigationBarItem(
          icon: InkWell(
            onTap: () {},
            child: Container(
                height: 50.h,
                width: 100.w,
                decoration: BoxDecoration(
                    color: Color(0xffFEECE5),
                    borderRadius: BorderRadius.all(Radius.circular(60))),
                child: const Icon(Icons.shopping_cart)),
          ),
          label: ''),
      BottomNavigationBarItem(
        icon: IconButton(
          constraints: const BoxConstraints(),
          padding: const EdgeInsets.all(0),
          onPressed: () {},
          icon: const Icon(Icons.account_circle),
        ),
        label: '',
      )
    ]);
  }
}
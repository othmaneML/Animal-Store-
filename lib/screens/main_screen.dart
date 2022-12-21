import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../component/Welcome_cmoponent.dart';

import '../component/appbar.dart';
import '../component/shop_list_view.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      
      
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Appbar(),
          WelcomeComponent(),
          ShopeListView('Doges 🐕'),
          ShopeListView('Cats 🐈'),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:google_fonts/google_fonts.dart';
import './screens/main_screen.dart';
import './component/bottom_navigatio_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primaryColor: const Color(0xffF8CBB4),
              accentColor: const Color(0xffECA27E),
              backgroundColor: Color(0xffF2F2F2),
              textTheme: TextTheme(
                headlineSmall: GoogleFonts.abel(fontSize: 24.sp),
                titleLarge: GoogleFonts.abel(fontSize: 22.sp),
                bodyMedium: GoogleFonts.abel(fontSize: 14.sp),
                bodySmall: GoogleFonts.abel(fontSize: 12.sp),
              ),
            ),
            home: MyHomePage(),
          );
        });
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      bottomNavigationBar: const BottomBar(),
      body: const MainScreen(),
    );
  }
}

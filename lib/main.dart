import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meet_our_astrologer/Meet_Astrologer/meet_astrologer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(428, 926),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Meet',
            theme: ThemeData(
              useMaterial3: false,
              textTheme:
                  GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
            ),
            home: const MeetAstrologersScreen(),
          );
        });
  }
}

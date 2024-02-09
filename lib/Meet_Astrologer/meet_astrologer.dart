import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MeetAstrologersScreen extends StatefulWidget {
  const MeetAstrologersScreen({Key? key}) : super(key: key);

  @override
  State<MeetAstrologersScreen> createState() => _MeetAstrologersScreenState();
}

class _MeetAstrologersScreenState extends State<MeetAstrologersScreen> {
  List<String> title = ["Ranjan Paudel", "Geetika Sharma"];
  List<String> img = [
    "assets/images/astrology1.jpg",
    "assets/images/astrology2.jpg"
  ];
  List<String> subTitle = [
    "My spiritual journey began in 2012, when I started exploring astrology. With the support of incredible mentors, I sharpened my skills and honed my practice. My professional fields are Western Astrology and Tibetian Astrology. Beyond these experiences, it will be a pleasure for me to talk about your birth chart, your potential in your life, and your limitations. We can find an answer to your question that can help you. Never forget, if you hear something from your heart, it should be in your chart.",
    "Hello,I am Geetika, I have over 15 years of experience in vedic astrology, Jaimini astrology, kp astrology and Vastu shastra and have analysed thousands of charts. I have been connected through the field of astrology and occult sciences since my childhood. I have chanted 3 sacred mantras for about 125000 times and that also gave me enormous power and exceptional ability to predict future and help others solve their problems. I have expertise in Marriage, love and relationship, career related problem solving."
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 70.h),
            Text(
              "Meet Our Astrologers",
              style: GoogleFonts.poppins(
                fontSize: 30.sp,
                color: const Color(0xFFFBBC04),
              ),
            ),
            SizedBox(height: 20.h),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.r),
                        topRight: Radius.circular(30.r))),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: title.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(25.r),
                            border: Border.all(
                              color:
                                  Colors.black.withOpacity(0.2), // border color
                              width: 1.5, // border width
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.w),
                            child: Column(
                              children: [
                                SizedBox(height: 20.h),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      height: 100.h,
                                      width: 100.w,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          image: DecorationImage(
                                              image: AssetImage(img[index]),
                                              fit: BoxFit.fill)),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Astrologer",
                                          style: GoogleFonts.poppins(
                                            fontSize: 16.sp,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          title[index],
                                          style: GoogleFonts.poppins(
                                            fontSize: 16.sp,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox.shrink()
                                  ],
                                ),
                                SizedBox(height: 10.h),
                                Text(
                                  subTitle[index],
                                  style: GoogleFonts.poppins(
                                    fontSize: 16.sp,
                                    color: Colors.black,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                                SizedBox(height: 10.h),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

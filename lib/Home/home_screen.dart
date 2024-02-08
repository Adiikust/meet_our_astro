import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meet_our_astrologer/Home/component/card_widget.dart';
import 'package:meet_our_astrologer/Utils/app_color.dart';
import 'package:meet_our_astrologer/Utils/app_text.dart';
import 'package:meet_our_astrologer/Widget/cusom_sizedBox.dart';
import 'package:meet_our_astrologer/Widget/custom_texts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomSizeBox(height: 70.h),
            CustomTextRegular(
              title: "Meet Our Astrologers",
              color: AppColor.yellowColor,
              fontSize: 30.sp,
              // fontWeight: FontWeight.bold,
            ),
            CustomSizeBox(height: 20.h),
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
                      itemCount: AppText.title.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: CardWidget(
                            title: AppText.title[index],
                            subtitle: AppText.subTitle[index],
                            img: AppText.img[index],
                          ),
                        );
                      },
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

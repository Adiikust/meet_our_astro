import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Utils/app_color.dart';
import '../../Widget/cusom_sizedBox.dart';
import '../../Widget/custom_texts.dart';

class CardWidget extends StatelessWidget {
  String title;
  String subtitle;
  String img;

  CardWidget(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(25.r),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.grey.withOpacity(0.5),
        //     spreadRadius: 2,
        //     blurRadius: 4,
        //     offset: const Offset(0, 4), // changes position of shadow
        //   ),
        // ],
        border: Border.all(
          color: Colors.black.withOpacity(0.2), // border color
          width: 1.5, // border width
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            CustomSizeBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 100.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                      color: AppColor.white,
                      image: DecorationImage(
                          image: AssetImage(img ?? ""), fit: BoxFit.fill)),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextRegular(
                      title: "Astrologer",
                      color: AppColor.black,
                      fontSize: 16.sp,
                    ),
                    CustomTextRegular(
                      title: title ?? "",
                      color: AppColor.black,
                      fontSize: 16.sp,
                      // fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
                const SizedBox.shrink()
              ],
            ),
            CustomSizeBox(height: 10.h),
            CustomTextRegular(
                title: subtitle ?? "",
                color: AppColor.black,
                fontSize: 16.sp,
                align: TextAlign.justify),
            CustomSizeBox(height: 10.h),
          ],
        ),
      ),
    );
  }
}

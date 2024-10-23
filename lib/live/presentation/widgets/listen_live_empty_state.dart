import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:radio_abia/common/widgets/input_text.dart';

class EmptyLiveWidget extends StatelessWidget {
  const EmptyLiveWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset("assets/svg/warning.svg"),
        SizedBox(height: 14.h),
        InputText(
          fontSize: 18.sp,
          text: "No current live broadcast",
          fontWeight: FontWeight.w600,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 14.h),
        SizedBox(
          width: 250,
          child: InputText(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              textAlign: TextAlign.center,
              text:
                  "You will be notified when there's a live broadcast. Check the podcast library to listen to previous broadcast."),
        )
      ],
    );
  }
}

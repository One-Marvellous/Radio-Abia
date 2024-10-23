import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:radio_abia/core/constants/color.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {super.key,
      required this.title,
      this.bottom,
      this.showBackButton = false});
  final String title;
  final bool showBackButton;

  final PreferredSizeWidget? bottom;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: Colors.transparent,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      elevation: 0,
      leading: showBackButton
          ? IconButton(
              icon: SvgPicture.asset("assets/svg/arrow_left.svg"),
              onPressed: () => Navigator.pop(context),
            )
          : Image.asset(
              "assets/images/logo.png",
              height: 56,
              width: 56,
            ),
      leadingWidth: 60,
      centerTitle: true,
      bottom: bottom,
      title: Text(
        title,
        textScaler: TextScaler.noScaling,
        style: TextStyle(
          fontSize: 16.sp,
          color: AppColors.titleColor,
          fontWeight: FontWeight.w500,
        ),
      ),
      actions: [
        IconButton(
            onPressed: () {
              // TODO: open drawer
            },
            icon: SvgPicture.asset("assets/svg/notification.svg"))
      ],
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(kToolbarHeight + (bottom?.preferredSize.height ?? 0));
}

import 'package:flutter/material.dart';
import 'package:mediboard/widgets/custom_icon_button.dart';
import 'package:mediboard/widgets/custom_image_view.dart';

// ignore: must_be_immutable
class AppbarLeadingIconbuttonOne extends StatelessWidget {
  AppbarLeadingIconbuttonOne({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomIconButton(
          height: 32,
          width: 32,
          decoration: BoxDecoration(
            color: const Color(0XFFE5E7EB),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(12)
          ),
          child: CustomImageView(
            imagePath: "assets/img_chevron_left.svg",
          ),
        ),
      ),
    );
  }
}

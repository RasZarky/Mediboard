import 'package:flutter/material.dart';
import '../custom_icon_button.dart';
import '../custom_image_view.dart';

// ignore: must_be_immutable
class AppbarTitleIconbutton extends StatelessWidget {
  AppbarTitleIconbutton({
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
          height: 45,
          width: 45,
          decoration: IconButtonStyleHelper.fillDeepPurple,
          child: CustomImageView(
            imagePath: "assets/img_television.svg",
          ),
        ),
      ),
    );
  }
}

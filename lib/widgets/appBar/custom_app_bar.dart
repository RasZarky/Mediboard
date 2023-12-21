import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    Key? key,
    this.height,
    this.styleType,
    this.leadingWidth,
    this.leading,
    this.title,
    this.centerTitle,
    this.actions,
  }) : super(
          key: key,
        );

  final double? height;

  final Style? styleType;

  final double? leadingWidth;

  final Widget? leading;

  final Widget? title;

  final bool? centerTitle;

  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height ?? 60,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
        200,
        height ?? 60,
      );
  _getStyle() {
    switch (styleType) {
      case Style.bgOutline:
        return Container(
          height: 60,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: const Color(0XFFDC2626).withOpacity(1),
            border: const Border(
              bottom: BorderSide(
                color: Colors.grey,
                width: 1,
              ),
            ),
          ),
        );
      case Style.bgShadow:
        return Container(
          height: 61,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: Color(0XFFDC2626).withOpacity(1),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.06),
                spreadRadius: 2,
                blurRadius: 2,
                offset: const Offset(
                  0,
                  1,
                ),
              ),
            ],
          ),
        );
      case Style.bgShadow_1:
        return Container(
          height: 60,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: const Color(0XFFDC2626).withOpacity(1),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.07),
                spreadRadius: 2,
                blurRadius: 2,
                offset: const Offset(
                  0,
                  1,
                ),
              ),
            ],
          ),
        );
      case Style.bgGradientblack:
        return Container(
          height: 243,
          width: double.maxFinite,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/img_frame_819_1.png",
              ),
              fit: BoxFit.cover,
            ),
          ),
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              begin: const Alignment(0.5, 0),
              end: const Alignment(0.5, 1),
              colors: [
                const Color(0XFF000000).withOpacity(0),
                const Color(0XFF000000).withOpacity(0.65),
              ],
            ),
          ),
        );

      default:
        return null;
    }
  }
}

enum Style {
  bgOutline,
  bgShadow,
  bgShadow_1,
  bgGradientblack,
}

import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(16),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillDeepPurple => BoxDecoration(
        color: Colors.deepPurple,
        borderRadius: BorderRadius.circular(8),
      );
  static BoxDecoration get fillIndigoA => BoxDecoration(
        color: Colors.indigo,
        borderRadius: BorderRadius.circular(24),
      );
  static BoxDecoration get fillDeepPurpleTL12 => BoxDecoration(
        color: Colors.deepPurple,
        borderRadius: BorderRadius.circular(12),
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      );
  static BoxDecoration get fillBlack => BoxDecoration(
        color: Colors.black.withOpacity(0.26),
        borderRadius: BorderRadius.circular(25),
      );
  static BoxDecoration get fillOrange => BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(20),
      );
  static BoxDecoration get fillCyan => BoxDecoration(
        color: Colors.cyan,
        borderRadius: BorderRadius.circular(20),
      );
  static BoxDecoration get fillLime => BoxDecoration(
        color: Colors.lime,
        borderRadius: BorderRadius.circular(20),
      );
  static BoxDecoration get fillDeepOrange => BoxDecoration(
        color: Colors.deepOrange,
        borderRadius: BorderRadius.circular(12),
      );
  static BoxDecoration get fillGrayTL15 => BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(15),
      );
  static BoxDecoration get outlineBlack => BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 2,
            offset: const Offset(
              0,
              0,
            ),
          ),
        ],
      );
}

import 'package:flutter/material.dart';
import '../../../widgets/custom_image_view.dart';

// ignore: must_be_immutable
class RecentordersItemWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final String quantity;
  final Color colour;

  const RecentordersItemWidget({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.quantity,
    required this.colour,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8)
      ),
      child: Container(
        padding: const EdgeInsets.fromLTRB(8, 16, 8, 15),
        decoration: BoxDecoration(
          color: const Color(0X7AFFFFFF).withOpacity(1),
          boxShadow: [
            BoxShadow(
              color: const Color(0XFF000000).withOpacity(0.07),
              spreadRadius: 2,
              blurRadius: 2,
              offset: const Offset(
                0,
                1,
              ),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: imagePath,
              height: 32,
              width: 32,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 8,
                top: 7,
                bottom: 7,
              ),
              child: Text(
                title,
              ),
            ),
            const Spacer(),
            Container(
              width: 24,
              margin: const EdgeInsets.symmetric(vertical: 4),
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 3,
              ),
              decoration: BoxDecoration(
                color: colour,
                borderRadius: BorderRadius.circular(12)
              ),
              child: Text(
                quantity,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            CustomImageView(
              imagePath: "assets/img_arrow_down_gray_600_01.svg",
              height: 16,
              width: 16,
              margin: const EdgeInsets.fromLTRB(8, 8, 4, 8),
            ),
          ],
        ),
      ),
    );
  }
}

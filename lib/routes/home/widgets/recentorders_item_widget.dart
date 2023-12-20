import 'package:flutter/material.dart';

import '../../../widgets/custom_image_view.dart';

// ignore: must_be_immutable
class RecentordersItemWidget extends StatelessWidget {
  const RecentordersItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(8, 16, 8, 15),
        decoration: BoxDecoration(
          color: Color(0XFFDC2626).withOpacity(1),
          border: Border(
            bottom: BorderSide(
              color: Color(0XFFF1F5F9),
              width: 1,
            ),
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0XFF111827).withOpacity(0.06),
              spreadRadius: 2,
              blurRadius: 2,
              offset: Offset(
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
              imagePath: "assets/img_user_cyan_400.svg",
              height: 32,
              width: 32,
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 8,
                top: 7,
                bottom: 7,
              ),
              child: Text(
                "Future Visits",
              ),
            ),
            Spacer(),
            Container(
              width: 24,
              margin: EdgeInsets.symmetric(vertical: 4),
              padding: EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 3,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                "1",
                style: TextStyle(
                  color: Color(0XFFDC2626).withOpacity(1),
                ),
              ),
            ),
            CustomImageView(
              imagePath: "assets/img_arrow_down_gray_600_01.svg",
              height: 16,
              width: 16,
              margin: EdgeInsets.fromLTRB(8, 8, 4, 8),
            ),
          ],
        ),
      ),
    );
  }
}

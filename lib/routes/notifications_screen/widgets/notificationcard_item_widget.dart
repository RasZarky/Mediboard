import 'package:flutter/material.dart';
import 'package:mediboard/widgets/custom_image_view.dart';

class NotificationcardItemWidget extends StatelessWidget {
  const NotificationcardItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.fromLTRB(16, 10, 16, 9),
      decoration: const BoxDecoration(
        color: Color(0XFFF5F3FF),
        border: Border(
          bottom: BorderSide(
            color: Color(0XFFF1F5F9),
            width: 1,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: "assets/img_warning_red_300.svg",
            height: 40,
            width: 40,
            radius: BorderRadius.circular(
              20,
            ),
            margin: const EdgeInsets.only(
              top: 1,
              bottom: 35,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 8,
                top: 1,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Test results are uploaded",
                    style: TextStyle(
                      color: Color(0XFF000000),
                    ),
                  ),
                  const SizedBox(height: 2),
                  SizedBox(
                    width: 284,
                    child: RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text:
                                "View your Blood Test results taken at Salus on ",
                            style: TextStyle(
                              color: Color(0XFF64748A),
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextSpan(
                            text: "Jul 27, 2023 ",
                            style: TextStyle(
                              color: Color(0XFF64748A),
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  const SizedBox(height: 2),
                  const Text(
                    "20 minutes ago",
                    style: TextStyle(
                      color: Color(0XFF9CA3AF),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: "assets/img_more_vertical.svg",
            height: 16,
            width: 16,
            margin: const EdgeInsets.only(
              left: 9,
              top: 1,
              bottom: 59,
            ),
          ),
        ],
      ),
    );
  }
}

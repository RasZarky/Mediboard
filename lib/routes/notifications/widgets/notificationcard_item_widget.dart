import 'package:flutter/material.dart';
import 'package:mediboard/widgets/custom_image_view.dart';

class NotificationcardItemWidget extends StatelessWidget {
  final String iconImagePath;
  final String title;
  final String description;
  final String timestamp;

  const NotificationcardItemWidget({
    Key? key,
    required this.iconImagePath,
    required this.title,
    required this.description,
    required this.timestamp,
  }) : super(key: key);

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
            imagePath: iconImagePath,
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
                  Text(
                    title,
                    style: const TextStyle(
                      color: Color(0XFF000000),
                    ),
                  ),
                  const SizedBox(height: 2),
                  SizedBox(
                    width: 284,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: description,
                            style: const TextStyle(
                              color: Color(0XFF64748A),
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    timestamp,
                    style: const TextStyle(
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

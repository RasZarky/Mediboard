import 'package:flutter/material.dart';
import 'package:mediboard/widgets/custom_image_view.dart';

class Userprofile23ItemWidget extends StatelessWidget {
  const Userprofile23ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 14,
      ),
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color(0X7AFFFFFF).withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: const Color(0XFF000000).withOpacity(0.06),
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: "assets/img_user_cyan_400.svg",
                  height: 32,
                  width: 32,
                  margin: const EdgeInsets.only(
                    top: 2,
                    bottom: 4,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Dr.\tName ",
                        style: TextStyle(
                          color: Color(0XFF111826),
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(height: 3),
                      SizedBox(
                        width: 158,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Specialty",
                              style:  TextStyle(
                                color: Color(0XFF64748A),
                                fontSize: 14,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Container(
                              height: 3,
                              width: 3,
                              margin: const EdgeInsets.only(
                                top: 5,
                                bottom: 8,
                              ),
                              decoration: BoxDecoration(
                                color: const Color(0XFF9CA3AF),
                                borderRadius: BorderRadius.circular(
                                  1,
                                ),
                              ),
                            ),
                            const Text(
                              "Feb 15, 2023",
                              style: TextStyle(
                                color: Color(0XFF64748A),
                                fontSize: 14,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: "assets/img_arrow_down_gray_600_01.svg",
            height: 16,
            width: 16,
            margin: const EdgeInsets.symmetric(vertical: 12),
          ),
        ],
      ),
    );
  }
}

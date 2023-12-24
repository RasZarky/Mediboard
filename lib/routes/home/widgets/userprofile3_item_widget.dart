import 'package:flutter/material.dart';

import '../../../widgets/custom_image_view.dart';

// ignore: must_be_immutable
class Userprofile3ItemWidget extends StatelessWidget {
  const Userprofile3ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0X7AFFFFFF).withOpacity(1),
        border: const Border(
          left: BorderSide(
            color: Color(0XFFF1F5F9),
            width: 2,
          ),
        ),
      ),
      width: 232,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 232,
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 9),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Color(0XFFE2E8F0),
                  width: 1,
                ),
              ),
            ),
            child: const Text(
              "1 day ago",
              style: TextStyle(
                color: Color(0XFF111826)
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(6, 16, 8, 16),
            decoration: BoxDecoration(
              color: const Color(0X7AFFFFFF).withOpacity(1),
              border: const Border(
                left: BorderSide(
                  color: Color(0XFFF1F5F9),
                  width: 2,
                ),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 208,
                  margin: const EdgeInsets.only(left: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 2),
                        child: Text(
                          "Avg. Heart Rate",
                          style: TextStyle(
                            color: Color(0XFF111826),
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Container(
                        width: 53,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0XFFF0FDF4),
                          borderRadius: BorderRadius.circular(12)
                        ),
                        child: const Text(
                          "Good",
                          style: TextStyle(
                            color: Color(0XFF16A34A)
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Row(
                      children: [
                        Text(
                          "92 ",
                          style: TextStyle(
                            color: Color(0XFF22C55E),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 7,
                            top: 8,
                            bottom: 8,
                          ),
                          child: Text(
                            "BPM",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0XFF94A3B7)
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: "assets/img_image_12.png",
                      height: 19,
                      width: 19,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 2),
                      child: Text(
                        "Oura",
                        style: TextStyle(
                          color: Color(0XFF94A3B7)
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 2,
                        top: 5,
                        bottom: 5,
                      ),
                      child: Text(
                        "+1 Record",
                        style: TextStyle(
                          color: Color(0XFF22C55E),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

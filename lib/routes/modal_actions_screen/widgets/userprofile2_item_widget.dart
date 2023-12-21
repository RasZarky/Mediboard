import 'package:flutter/material.dart';
import 'package:mediboard/widgets/custom_image_view.dart';

class Userprofile2ItemWidget extends StatelessWidget {
  const Userprofile2ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 1),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 71,
                          width: 76,
                          child: Stack(
                            alignment: Alignment.topRight,
                            children: [
                              CustomImageView(
                                imagePath: "assets/visits.png",
                                height: 68,
                                width: 68,
                                radius: BorderRadius.circular(
                                  24,
                                ),
                                alignment: Alignment.centerLeft,
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  width: 24,
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 7,
                                    vertical: 3,
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color(0XFFEF4444),
                                    border: Border.all(
                                      color: const Color(0X7AFFFFFF).withOpacity(1),
                                      width: 1,
                                    ),
                                    borderRadius:
                                        BorderRadius.circular(12),
                                  ),
                                  child: Text(
                                    "2",
                                    style: TextStyle(
                                      color: const Color(0X7AFFFFFF).withOpacity(1),
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 7),
                        const Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Text(
                            "Visits",
                            style: TextStyle(
                              color: Color(0XFF111826)
                        ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 3),
                    child: Column(
                      children: [
                        CustomImageView(
                          imagePath: "assets/reports.png",
                          height: 68,
                          width: 68,
                          radius: BorderRadius.circular(
                            24,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          "Reports",
                          style: TextStyle(
                              color: Color(0XFF111826)
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 3,
                      bottom: 1,
                    ),
                    child: Column(
                      children: [
                        CustomImageView(
                          imagePath: "assets/medical_profile.png",
                          height: 68,
                          width: 68,
                          radius: BorderRadius.circular(
                            24,
                          ),
                        ),
                        const SizedBox(height: 7),
                        const Text(
                          "Medical Profile",
                          style: TextStyle(
                              color: Color(0XFF111826)
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 35),
            Padding(
              padding: const EdgeInsets.only(right: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 3),
                    child: Column(
                      children: [
                        CustomImageView(
                          imagePath: "assets/medication.png",
                          height: 68,
                          width: 68,
                          radius: BorderRadius.circular(
                            24,
                          ),
                        ),
                        const SizedBox(height: 7),
                        const Text(
                          "Medications",
                          style: TextStyle(
                              color: Color(0XFF111826)
                          ),                      ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 71,
                        width: 76,
                        child: Stack(
                          alignment: Alignment.topRight,
                          children: [
                            CustomImageView(
                              imagePath: "assets/tests.png",
                              height: 68,
                              width: 68,
                              radius: BorderRadius.circular(
                                24,
                              ),
                              alignment: Alignment.centerLeft,
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                width: 24,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 3,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color(0XFFEF4444),
                                  border: Border.all(
                                    color: const Color(0X7AFFFFFF).withOpacity(1),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Text(
                                  "1",
                                  style: TextStyle(
                                    color: const Color(0X7AFFFFFF).withOpacity(1),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 7),
                      const Padding(
                        padding: EdgeInsets.only(left: 16),
                        child: Text(
                          "Tests",
                          style: TextStyle(
                              color: Color(0XFF111826)
                          ),                      ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 3),
                    child: Column(
                      children: [
                        CustomImageView(
                          imagePath: "assets/wearables.png",
                          height: 68,
                          width: 68,
                          radius: BorderRadius.circular(
                            24,
                          ),
                        ),
                        const SizedBox(height: 7),
                        const Text(
                          "Wearables",
                          style: TextStyle(
                              color: Color(0XFF111826)
                          ),                      ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mediboard/routes/medications/medications_detail_page.dart';
import 'package:mediboard/theme/app_decoration.dart';
import 'package:mediboard/theme/custom_text_style.dart';
import 'package:mediboard/theme/theme_helper.dart';
import 'package:mediboard/widgets/custom_image_view.dart';

// ignore: must_be_immutable
class MedicationcomponentItemWidget extends StatelessWidget {
  const MedicationcomponentItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const MedicationsDetailPage()),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 15,
        ),
        decoration: AppDecoration.shadow.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: "assets/img_thumbs_up_blue_300.svg",
                  height: 32,
                  width: 32,
                  margin: EdgeInsets.symmetric(vertical: 3),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Medication Name",
                        style: CustomTextStyles.titleSmallGray90015,
                      ),
                      SizedBox(height: 2),
                      SizedBox(
                        width: 191,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 1),
                              child: Text(
                                "Prescribed for",
                                style: theme.textTheme.bodyMedium,
                              ),
                            ),
                            Container(
                              height: 3,
                              width: 3,
                              margin: EdgeInsets.symmetric(vertical: 7),
                              decoration: BoxDecoration(
                                color: appTheme.blueGray300,
                                borderRadius: BorderRadius.circular(
                                  1,
                                ),
                              ),
                            ),
                            Text(
                              "Feb 15, 2023",
                              style: theme.textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            CustomImageView(
              imagePath: "assets/img_arrow_down_gray_600_01.svg",
              height: 16,
              width: 16,
              margin: EdgeInsets.symmetric(vertical: 11),
            ),
          ],
        ),
      ),
    );
  }
}

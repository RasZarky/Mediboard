import 'package:flutter/material.dart';
import 'package:mediboard/routes/vaccinations_screen/vaccination_detail_page.dart';
import 'package:mediboard/theme/app_decoration.dart';
import 'package:mediboard/theme/custom_text_style.dart';
import 'package:mediboard/theme/theme_helper.dart';
import 'package:mediboard/widgets/custom_image_view.dart';

class VaccinationcardItemWidget extends StatelessWidget {
  const VaccinationcardItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => VaccinationDetailPageScreen()),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 14,
        ),
        decoration: AppDecoration.shadow.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: "assets/vaccinations.png",
                    height: 32,
                    width: 32,
                    margin: EdgeInsets.only(
                      top: 3,
                      bottom: 4,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Vaccination Name",
                          style: CustomTextStyles.titleSmallGray90015,
                        ),
                        SizedBox(height: 3),
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
            CustomImageView(
              imagePath: "assets/img_arrow_down_gray_600_01.svg",
              height: 8,
              width: 4,
              margin: EdgeInsets.only(
                top: 16,
                right: 6,
                bottom: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

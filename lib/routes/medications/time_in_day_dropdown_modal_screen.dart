import 'package:flutter/material.dart';
import 'package:mediboard/theme/app_decoration.dart';
import 'package:mediboard/theme/custom_text_style.dart';
import 'package:mediboard/theme/theme_helper.dart';
import 'package:mediboard/widgets/custom_icon_button.dart';
import 'package:mediboard/widgets/custom_image_view.dart';

class TimeInDayDropdownModalScreen extends StatelessWidget {
  const TimeInDayDropdownModalScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeaderSection(context),
              SizedBox(height: 16),
              _buildFrameSection(context),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.only(left: 24),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: "assets/img_sun.svg",
                      height: 16,
                      width: 16,
                      margin: EdgeInsets.symmetric(vertical: 2),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 18),
                      child: Text(
                        "Afternoon",
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 37),
              Padding(
                padding: EdgeInsets.only(left: 24),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: "assets/img_moon_gray_600_01.svg",
                      height: 16,
                      width: 16,
                      margin: EdgeInsets.only(bottom: 3),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 18),
                      child: Text(
                        "Evening",
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeaderSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 17,
      ),
      decoration: AppDecoration.outlineBlack900,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 3),
            child: Text(
              "Time in day",
              style: theme.textTheme.titleMedium,
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: CustomImageView(
              imagePath: "assets/img_x.svg",
              height: 24,
              width: 24,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameSection(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 102,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomIconButton(
                    height: 32,
                    width: 32,
                    padding: EdgeInsets.all(8),
                    child: CustomImageView(
                      imagePath: "assets/img_settings_deep_purple_a200_03.svg",
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 7,
                      bottom: 4,
                    ),
                    child: Text(
                      "Morning",
                      style: CustomTextStyles.bodyLargePrimary,
                    ),
                  ),
                ],
              ),
            ),
            CustomImageView(
              imagePath: "assets/img_check.svg",
              height: 24,
              width: 24,
              margin: EdgeInsets.symmetric(vertical: 4),
            ),
          ],
        ),
      ),
    );
  }
}

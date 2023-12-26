import 'package:flutter/material.dart';
import 'package:mediboard/theme/app_decoration.dart';
import 'package:mediboard/theme/custom_button_style.dart';
import 'package:mediboard/theme/custom_text_style.dart';
import 'package:mediboard/theme/theme_helper.dart';
import 'package:mediboard/widgets/appBar/appbar_trailing_image.dart';
import 'package:mediboard/widgets/appBar/custom_app_bar.dart';
import 'package:mediboard/widgets/custom_elevated_button.dart';
import 'package:mediboard/widgets/custom_icon_button.dart';
import 'package:mediboard/widgets/custom_image_view.dart';
import 'package:mediboard/widgets/custom_switch.dart';

class ModalActionsTwoScreen extends StatelessWidget {
  ModalActionsTwoScreen({Key? key})
      : super(
          key: key,
        );

  bool isSelectedSwitch = true;

  bool isSelectedSwitch1 = true;

  bool isSelectedSwitch2 = true;

  bool isSelectedSwitch3 = true;

  bool isSelectedSwitch4 = true;

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 2,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomIconButton(
                height: 44,
                width: 44,
                padding: EdgeInsets.all(10),
                decoration: IconButtonStyleHelper.fillDeepPurpleTL8,
                child: CustomImageView(
                  imagePath: "assets/img_bell_primary.svg",
                ),
              ),
              SizedBox(height: 13),
              Text(
                "You are subscribed to XXXXX!",
                style: CustomTextStyles.titleMedium18,
              ),
              SizedBox(height: 11),
              Container(
                width: 332,
                margin: EdgeInsets.only(right: 33),
                child: Text(
                  "To manage your notifications, simply toggle on/off the topics you wish to receive notifications for.",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium!.copyWith(
                    height: 1.14,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                decoration: AppDecoration.outlineBlack.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildClinicalTrialsSwitch(context),
                    _buildNewMedicinesSwitch(context),
                    _buildScientificArticlesSwitch(context),
                    _buildNewTreatmentsSwitch(context),
                    _buildNewTechSwitch(context),
                    SizedBox(height: 12),
                    CustomElevatedButton(
                      height: 36,
                      text: "Unsubscribe",
                      margin: EdgeInsets.symmetric(horizontal: 12),
                      leftIcon: Container(
                        margin: EdgeInsets.only(right: 4),
                        child: CustomImageView(
                          imagePath: "assets/img_belloff.svg",
                          height: 16,
                          width: 16,
                        ),
                      ),
                      buttonStyle: CustomButtonStyles.fillDeepPurple,
                      buttonTextStyle: CustomTextStyles.titleSmallPrimaryMedium,
                    ),
                    SizedBox(height: 12),
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

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 56,
      actions: [
        AppbarTrailingImage(
          onTap: (){
            Navigator.pop(context);
          },
          imagePath: "assets/img_x.svg",
          margin: EdgeInsets.all(16),
        ),
      ],
    );
  }

  Widget _buildClinicalTrialsSwitch(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(12, 12, 12, 11),
      decoration: AppDecoration.outlineGray200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Clinical Trials",
                  style: CustomTextStyles.titleSmallBluegray800,
                ),
                SizedBox(
                  width: 238,
                  child: Text(
                    "Get notified of the latest clinical trial updates.",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodyMediumGray600.copyWith(
                      height: 1.14,
                    ),
                  ),
                ),
              ],
            ),
          ),
          CustomSwitch(
            margin: EdgeInsets.symmetric(vertical: 18),
            value: isSelectedSwitch,
            onChange: (value) {
              isSelectedSwitch = value;
            },
          ),
        ],
      ),
    );
  }

  Widget _buildNewMedicinesSwitch(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(12, 14, 12, 13),
      decoration: AppDecoration.outlineGray200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "New medicines",
                  style: CustomTextStyles.titleSmallBluegray800,
                ),
                SizedBox(height: 2),
                Padding(
                  padding: EdgeInsets.only(left: 3),
                  child: Text(
                    " Stay updated on new medicine releases.",
                    style: CustomTextStyles.bodyMediumGray600,
                  ),
                ),
              ],
            ),
          ),
          CustomSwitch(
            margin: EdgeInsets.only(
              left: 30,
              top: 8,
              bottom: 8,
            ),
            value: isSelectedSwitch1,
            onChange: (value) {
              isSelectedSwitch1 = value;
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildScientificArticlesSwitch(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(12, 15, 12, 14),
      decoration: AppDecoration.outlineGray200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Scientific articles",
                style: CustomTextStyles.titleSmallBluegray800,
              ),
              SizedBox(
                width: 242,
                child: Text(
                  "Stay informed on the latest scientific discoveries.",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyMediumGray600.copyWith(
                    height: 1.14,
                  ),
                ),
              ),
            ],
          ),
          CustomSwitch(
            margin: EdgeInsets.symmetric(vertical: 15),
            value: isSelectedSwitch2,
            onChange: (value) {
              isSelectedSwitch2 = value;
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNewTreatmentsSwitch(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(12, 15, 12, 14),
      decoration: AppDecoration.outlineGray200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "New treatments",
                  style: CustomTextStyles.titleSmallBluegray800,
                ),
                Text(
                  "e the first to know about new treatments.",
                  style: CustomTextStyles.bodyMediumGray600,
                ),
              ],
            ),
          ),
          CustomSwitch(
            margin: EdgeInsets.only(
              left: 28,
              top: 7,
              bottom: 7,
            ),
            value: isSelectedSwitch3,
            onChange: (value) {
              isSelectedSwitch3 = value;
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNewTechSwitch(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(12, 15, 12, 14),
      decoration: AppDecoration.outlineGray200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "New tech",
                style: CustomTextStyles.titleSmallBluegray800,
              ),
              SizedBox(
                width: 215,
                child: Text(
                  "Discover the latest technological advancements in medicine.",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyMediumGray600.copyWith(
                    height: 1.14,
                  ),
                ),
              ),
            ],
          ),
          CustomSwitch(
            margin: EdgeInsets.symmetric(vertical: 15),
            value: isSelectedSwitch4,
            onChange: (value) {
              isSelectedSwitch4 = value;
            },
          ),
        ],
      ),
    );
  }
}

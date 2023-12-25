import 'package:flutter/material.dart';
import 'package:mediboard/theme/app_decoration.dart';
import 'package:mediboard/theme/custom_button_style.dart';
import 'package:mediboard/theme/custom_text_style.dart';
import 'package:mediboard/widgets/appBar/appbar_title.dart';
import 'package:mediboard/widgets/appBar/appbar_trailing_image.dart';
import 'package:mediboard/widgets/appBar/custom_app_bar.dart';
import 'package:mediboard/widgets/custom_elevated_button.dart';
import 'package:mediboard/widgets/custom_outlined_button.dart';
import 'package:mediboard/widgets/custom_text_form_field.dart';

class LogoutModalActionScreen extends StatelessWidget {
  LogoutModalActionScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController confirmationController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          height: 267,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusStyle.customBorderTL24,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildAppBar(context),
                      SizedBox(height: 8),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: CustomTextFormField(
                          controller: confirmationController,
                          hintText:
                              "Are you sure you want to log out of your account?",
                          hintStyle: CustomTextStyles.bodyLargeBluegray500,
                          textInputAction: TextInputAction.done,
                          maxLines: 3,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 30,
                          ),
                          borderDecoration:
                              TextFormFieldStyleHelper.fillOnPrimary,
                        ),
                      ),
                      SizedBox(height: 79),
                    ],
                  ),
                ),
              ),
              _buildFrame(context),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 60,
      title: AppbarTitle(
        text: "Logging out?",
        margin: EdgeInsets.only(left: 16),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: "assets/img_x.svg",
          margin: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 18,
          ),
        ),
      ],
      styleType: Style.bgShadow,
    );
  }

  Widget _buildFrame(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(
          left: 1,
          top: 195,
        ),
        padding: EdgeInsets.symmetric(vertical: 15),
        decoration: AppDecoration.outlineIndigo50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: CustomOutlinedButton(
                text: "Cancel",
                margin: EdgeInsets.only(right: 5),
                buttonStyle: CustomButtonStyles.outlinePrimary,
                buttonTextStyle: CustomTextStyles.titleSmallPrimary,
              ),
            ),
            Expanded(
              child: CustomElevatedButton(
                height: 40,
                text: "Log out",
                margin: EdgeInsets.only(left: 5),
                buttonStyle: CustomButtonStyles.fillRed,
                buttonTextStyle: CustomTextStyles.titleSmallOnPrimary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

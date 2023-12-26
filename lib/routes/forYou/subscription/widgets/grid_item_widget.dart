import 'package:flutter/material.dart';
import 'package:mediboard/routes/forYou/subscription/modal_action.dart';
import 'package:mediboard/theme/app_decoration.dart';
import 'package:mediboard/theme/custom_button_style.dart';
import 'package:mediboard/theme/custom_text_style.dart';
import 'package:mediboard/widgets/custom_elevated_button.dart';
import 'package:mediboard/widgets/custom_image_view.dart';

class GridItemWidget extends StatelessWidget {
  final String imagePath;
  final String label;
  final String status;
  GridItemWidget({
    Key? key,
    this.onTapArticle,
    required this.imagePath,
    required this.label,
    required this.status,
  }) : super(
          key: key,
        );

  VoidCallback? onTapArticle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapArticle!.call();
      },
      child: Container(
        decoration: AppDecoration.outlineBlack.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomImageView(
              imagePath: imagePath,
              height: 100,
              width: 177,
            ),
            SizedBox(height: 12),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 12),
                child: Text(
                  label,
                  style: CustomTextStyles.titleSmallSemiBold14,
                ),
              ),
            ),
            SizedBox(height: 25),
            CustomElevatedButton(
              height: 32,
              width: 153,
              text: "",
              onPressed: (){
                showModalBottomSheet(
                    useSafeArea: true,
                    isScrollControlled: true,
                    context: context,
                    builder: (BuildContext context) {
                      // You can replace this with your own widget for the bottom sheet content
                      return ModalActionsTwoScreen();
                    }
                );
              },
              leftIcon: Container(
                margin: EdgeInsets.only(right: 4),
                child: CustomImageView(
                  imagePath: status == "unsub" ? "assets/Button.png" :
                              "assets/Button2.png",
                  height: 32,
                  width: 100,
                ),
              ),
              buttonStyle: status == "unsub" ? CustomButtonStyles.fillDeepPurple :
                            CustomButtonStyles.fillPrimaryTL16,
              buttonTextStyle: CustomTextStyles.titleSmallPrimaryMedium,
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

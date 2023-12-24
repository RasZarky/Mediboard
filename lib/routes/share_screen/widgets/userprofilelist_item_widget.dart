import 'package:flutter/material.dart';
import 'package:mediboard/theme/app_decoration.dart';
import 'package:mediboard/theme/theme_helper.dart';
import 'package:mediboard/widgets/custom_icon_button.dart';
import 'package:mediboard/widgets/custom_image_view.dart';

class UserprofilelistItemWidget extends StatelessWidget {
  const UserprofilelistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 63,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 62,
            width: 63,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: AppDecoration.fillBluegray10001.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder30,
                    ),
                    child: CustomImageView(
                      imagePath: "assets/img_logo_secretpixels.png",
                      height: 60,
                      width: 60,
                      radius: BorderRadius.circular(
                        30,
                      ),
                      alignment: Alignment.center,
                    ),
                  ),
                ),
                CustomIconButton(
                  height: 20,
                  width: 20,
                  decoration: IconButtonStyleHelper.outlineBlack,
                  alignment: Alignment.bottomRight,
                  child: CustomImageView(
                    imagePath: "assets/img_imessage.png",
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 4),
          Container(
            width: 36,
            margin: EdgeInsets.only(left: 12),
            child: Text(
              "Hugo \nCollins",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodySmall!.copyWith(
                height: 1.18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

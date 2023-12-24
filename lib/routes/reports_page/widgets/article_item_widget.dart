import 'package:flutter/material.dart';
import 'package:mediboard/theme/app_decoration.dart';
import 'package:mediboard/theme/custom_text_style.dart';
import 'package:mediboard/widgets/custom_image_view.dart';

class ArticleItemWidget extends StatelessWidget {
  const ArticleItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.shadow.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      width: 177,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: "assets/img_rectangle_175_100x177.png",
            height: 100,
            width: 177,
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text(
              "Gastroenterology",
              style: CustomTextStyles.titleSmallGray900,
            ),
          ),
          const SizedBox(height: 14),
          Container(
            width: 133,
            margin: const EdgeInsets.only(left: 12),
            child: Text(
              "Last Update Feb 28, 2023",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyMediumBluegray700.copyWith(
                height: 1.14,
              ),
            ),
          ),
          const SizedBox(height: 11),
        ],
      ),
    );
  }
}

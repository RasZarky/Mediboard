import 'package:flutter/material.dart';
import 'package:mediboard/widgets/custom_image_view.dart';

class Article3ItemWidget extends StatelessWidget {
  Article3ItemWidget({
    Key? key,
    this.onTapArticle,
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: "assets/img_rectangle_175.png",
            height: 205,
            width: 171,
            radius: BorderRadius.circular(
              8,
            ),
          ),
          const SizedBox(height: 10),
          const SizedBox(
            width: 156,
            child: Text(
              "Advancements in Gene Therapy for Inherited Diseases",
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                height: 1.14,
              ),
            ),
          ),
          const SizedBox(height: 2),
          const Text(
            "1 min read",
            style: TextStyle(
              color: Color(0XFF475568)
            ),
          ),
        ],
      ),
    );
  }
}

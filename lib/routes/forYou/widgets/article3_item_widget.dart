import 'package:flutter/material.dart';
import 'package:mediboard/widgets/custom_image_view.dart';

class Article3ItemWidget extends StatelessWidget {
  final String imagePath;
  final String headline;
  final String duration;
  Article3ItemWidget({
    Key? key,
    this.onTapArticle,
    required this.imagePath,
    required this.headline,
    required this.duration,
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
            imagePath: imagePath,
            height: 205,
            width: 171,
            radius: BorderRadius.circular(
              8,
            ),
          ),
          const SizedBox(height: 10),
           SizedBox(
            width: 156,
            child: Text(
              headline,
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
          Text(
            duration,
            style: TextStyle(
              color: Color(0XFF475568)
            ),
          ),
        ],
      ),
    );
  }
}

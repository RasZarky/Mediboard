import 'package:flutter/material.dart';
import 'package:mediboard/widgets/custom_image_view.dart';

class Article4ItemWidget extends StatelessWidget {
  const Article4ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: "assets/img_rectangle_175_3.png",
          height: 205,
          width: 171,
          radius: BorderRadius.circular(
            8,
          ),
        ),
        const SizedBox(height: 10),

        const SizedBox(
          width: 115,
          child: Text(
            "How Artificial Intelligence is Revolutionizing Healthcare",
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              height: 1.14,
            ),
          ),
        ),
        const Text(
          "1 min read",
          style: TextStyle(
            color: Color(0XFF475568)
          ),
        ),
      ],
    );
  }
}

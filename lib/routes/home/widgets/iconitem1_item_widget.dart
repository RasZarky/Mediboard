import 'package:flutter/material.dart';

import '../../../widgets/custom_image_view.dart';

class Iconitem1ItemWidget extends StatelessWidget {
  final String imagePath;
  final String label;
  final int? count;

  const Iconitem1ItemWidget({
    Key? key,
    required this.imagePath,
    required this.label,
    required this.count,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 71,
          width: 76,
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              CustomImageView(
                imagePath: imagePath,
                height: 71,
                width: 71,
                radius: BorderRadius.circular(24),
                alignment: Alignment.centerLeft,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 24,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 7,
                    vertical: 3,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    count == null ? "" : count.toString(),
                    style: TextStyle(
                      color: const Color(0XFFDC2626).withOpacity(1),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
         Padding(
          padding: EdgeInsets.only(left: 16),
          child: Text(
            label,
            style: TextStyle(
              color: Color(0XFF111826),
            ),
          ),
        ),
      ],
    );
  }
}

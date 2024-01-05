import 'package:flutter/material.dart';
import '../../../widgets/custom_icon_button.dart';
import '../../../widgets/custom_image_view.dart';

// ignore: must_be_immutable
class MedicationlistItemWidget extends StatelessWidget {
  final String name;
  final String time;
  final String imagePath1;
  final String imagePath2;
  final String imagePath3;
  const MedicationlistItemWidget({Key? key, required this.name,
    required this.time,
    required this.imagePath1,
    required this.imagePath2,
    required this.imagePath3})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8)
      ),
      width: 206,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            time,
            style: TextStyle(
              fontSize: 12,
            ),
          ),
          const SizedBox(height: 40),
          Row(
            children: [
              CustomIconButton(
                height: 32,
                width: 32,
                padding: const EdgeInsets.all(8),
                child: CustomImageView(
                  imagePath: imagePath1,
                ),
              ),
              CustomImageView(
                imagePath: imagePath2,
                height: 16,
                width: 16,
                margin: const EdgeInsets.only(
                  left: 24,
                  top: 8,
                  bottom: 8,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: CustomIconButton(
                  height: 32,
                  width: 32,
                  padding: const EdgeInsets.all(8),
                  child: CustomImageView(
                    imagePath: imagePath3,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

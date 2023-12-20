import 'package:flutter/material.dart';
import '../../../widgets/custom_icon_button.dart';
import '../../../widgets/custom_image_view.dart';

// ignore: must_be_immutable
class MedicationlistItemWidget extends StatelessWidget {
  const MedicationlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8)
      ),
      width: 206,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "ENTRESTO, 100 mg",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 4),
          const Text(
            "2/day",
            style: TextStyle(
              fontSize: 12,
            ),
          ),
          SizedBox(height: 40),
          Row(
            children: [
              CustomIconButton(
                height: 32,
                width: 32,
                padding: EdgeInsets.all(8),
                child: CustomImageView(
                  imagePath: "assets/img_settings_deep_purple_a200_03.svg",
                ),
              ),
              CustomImageView(
                imagePath: "assets/img_sun.svg",
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
                  padding: EdgeInsets.all(8),
                  child: CustomImageView(
                    imagePath: "assets/img_moon.svg",
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

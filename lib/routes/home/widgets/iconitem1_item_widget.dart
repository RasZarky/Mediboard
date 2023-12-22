import 'package:flutter/material.dart';
import 'package:mediboard/routes/visits_page/visits_page.dart';

import '../../../widgets/custom_image_view.dart';

class Iconitem1ItemWidget extends StatelessWidget {
  final String imagePath;
  final String label;
  final int? count;
  final VoidCallback? onTap;

  const Iconitem1ItemWidget({
    Key? key,
    required this.imagePath,
    required this.label,
    required this.count,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => VisitsPage()),
        );
      },
      child: Column(
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
                    decoration: count == null ? const BoxDecoration()
                        : BoxDecoration(
                      color: const Color(0XFFEF4444),
                      border: Border.all(
                        color: const Color(0X7AFFFFFF).withOpacity(1),
                        width: 1,
                      ),
                      borderRadius:
                      BorderRadius.circular(12),
                    ),
                    child: Text(
                        count == null ? "" : count.toString(),
                      style: TextStyle(
                        color: const Color(0X7AFFFFFF).withOpacity(1),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                // Align(
                //   alignment: Alignment.topRight,
                //   child: Container(
                //     width: 24,
                //     padding: const EdgeInsets.symmetric(
                //       horizontal: 7,
                //       vertical: 3,
                //     ),
                //     decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(12),
                //     ),
                //     child: Text(
                //       count == null ? "" : count.toString(),
                //       style: TextStyle(
                //         color: const Color(0XFFDC2626).withOpacity(1),
                //         fontWeight: FontWeight.w700,
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
           Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              label,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Color(0XFF111826),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

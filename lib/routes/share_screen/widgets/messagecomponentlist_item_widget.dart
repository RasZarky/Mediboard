import 'package:flutter/material.dart';
import 'package:mediboard/theme/custom_text_style.dart';
import 'package:mediboard/theme/theme_helper.dart';
import 'package:mediboard/widgets/custom_image_view.dart';

class MessagecomponentlistItemWidget extends StatelessWidget {
  const MessagecomponentlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.only(bottom: 1),
          child: Column(
            children: [
              CustomImageView(
                imagePath: "assets/img_imessage.png",
                height: 60,
                width: 60,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 1, right: 5),
                      child: Text(
                        "Message",
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                    // Padding(
                    //   padding: EdgeInsets.only(left: 296),
                    //   child: Text(
                    //     "Twitter",
                    //     textAlign: TextAlign.center,
                    //     style: CustomTextStyles.bodySmall12,
                    //   ),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

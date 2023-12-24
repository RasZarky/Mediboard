
import 'package:flutter/material.dart';
import 'package:mediboard/routes/share_screen/widgets/messagecomponentlist_item_widget.dart';
import 'package:mediboard/routes/share_screen/widgets/userprofilelist_item_widget.dart';
import 'package:mediboard/theme/custom_text_style.dart';
import 'package:mediboard/theme/theme_helper.dart';
import 'package:mediboard/widgets/custom_icon_button.dart';
import 'package:mediboard/widgets/custom_image_view.dart';
import 'package:mediboard/widgets/custom_text_form_field.dart';

class ShareScreen extends StatelessWidget {
  ShareScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController messageController = TextEditingController();

  TextEditingController buttonTwoController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray10003,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: 375,
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              _buildTitleRow(context),
              Divider(
                color: appTheme.gray300,
              ),
              _buildUserProfileList(context),
              Divider(
                color: appTheme.gray300,
              ),
              SizedBox(height: 20),
              _buildMessageComponentList(context),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: ElevatedButton(
                  onPressed: () {
                    // Add your button click logic here
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9.0), // Set border radius
                      side: BorderSide(color: Colors.black), // Set border color
                    ),
                  ),
                  child: Ink(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.0), // Set border radius
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Copy",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(30, 13, 16, 13),
                          child: CustomImageView(
                            imagePath: "assets/img_file.svg",
                            height: 24,
                            width: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: ElevatedButton(
                  onPressed: () {
                    // Add your button click logic here
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9.0), // Set border radius
                      side: BorderSide(color: Colors.black), // Set border color
                    ),
                  ),
                  child: Ink(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.0), // Set border radius
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Add to reading list",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(30, 13, 16, 13),
                          child: CustomImageView(
                            imagePath: "assets/img_settings_black_900.svg",
                            height: 24,
                            width: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTitleRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16,
        right: 12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 152,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomIconButton(
                  height: 40,
                  width: 40,
                  padding: EdgeInsets.all(5),
                  // decoration: IconButtonStyleHelper.fillOnPrimary,
                  child: CustomImageView(
                    imagePath: "assets/img_television_primary.svg",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Visit Summary",
                        style: CustomTextStyles.titleSmallSFProTextBlack900,
                      ),
                      SizedBox(height: 1),
                      Text(
                        "Mediboard",
                        style: CustomTextStyles.bodyMediumSFProTextGray500,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: CustomIconButton(
              height: 30,
              width: 30,
              padding: EdgeInsets.all(8),
              decoration: IconButtonStyleHelper.fillGrayTL15,
              child: CustomImageView(
                imagePath: "assets/img_settings_black_900.svg",
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildUserProfileList(BuildContext context) {
    return SizedBox(
      height: 95,
      child: ListView.separated(
        padding: EdgeInsets.only(left: 16),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 20,
          );
        },
        itemCount: 5,
        itemBuilder: (context, index) {
          return UserprofilelistItemWidget();
        },
      ),
    );
  }

  Widget _buildMessageComponentList(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        height: 80,
        child: ListView.separated(
          padding: EdgeInsets.only(
            left: 16,
            right: 16,
          ),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 25,
            );
          },
          itemCount: 4,
          itemBuilder: (context, index) {
            return const MessagecomponentlistItemWidget();
          },
        ),
      ),
    );
  }

  Widget _buildButtonTwo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: 19,
      ),
      child: CustomTextFormField(
        controller: buttonTwoController,
        hintText: "Add to readinglist",
        textInputAction: TextInputAction.done,
        suffix: Container(
          margin: EdgeInsets.fromLTRB(30, 13, 16, 13),
          child: CustomImageView(
            imagePath: "assets/img_settings_black_900.svg",
            height: 24,
            width: 24,
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 50,
        ),
        contentPadding: EdgeInsets.only(
          left: 16,
          top: 14,
          bottom: 14,
        ),
        borderDecoration: TextFormFieldStyleHelper.outlineBlackTL9,
      ),
    );
  }
}

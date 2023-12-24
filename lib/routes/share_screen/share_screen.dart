
import 'package:flutter/material.dart';
import 'package:mediboard/routes/share_screen/widgets/messagecomponentlist_item_widget.dart';
import 'package:mediboard/routes/share_screen/widgets/userprofilelist_item_widget.dart';
import 'package:mediboard/theme/custom_text_style.dart';
import 'package:mediboard/theme/theme_helper.dart';
import 'package:mediboard/widgets/custom_icon_button.dart';
import 'package:mediboard/widgets/custom_image_view.dart';

class ShareScreen extends StatelessWidget {
  final String label;
  ShareScreen({Key? key, required this.label})
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
                        label,
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
        itemCount: userItems.length,
        itemBuilder: (context, index) {
          final itemData = userItems[index];
          return UserprofilelistItemWidget(
            imagePath: itemData.imagePath,
            imagePath2: itemData.imagePath2,
            name: itemData.name,
          );
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
          itemCount: appItems.length,
          itemBuilder: (context, index) {
            final appItemData = appItems[index];
            return MessagecomponentlistItemWidget(
              imagePath: appItemData.imagePath,
              name: appItemData.name,
            );
          },
        ),
      ),
    );
  }

}

class UserItemData {
  final String imagePath;
  final String imagePath2;
  final String name;

  UserItemData( {
    required this.imagePath,
    required this.imagePath2,
    required this.name,
  });
}

final List<UserItemData> userItems = [
  UserItemData(imagePath: "assets/img_logo_secretpixels.png",
    imagePath2: "assets/messenger icon.png",
    name: "Hugo \nCollins",),
  UserItemData(imagePath: "assets/Userpic.png",
    imagePath2: "assets/Whatsapp Icon.png",
    name: "Laura \nScott",),
  UserItemData(imagePath: "assets/Userpic2.png",
    imagePath2: "assets/img_imessage.png",
    name: "Anne \Frank",),
  UserItemData(imagePath: "assets/Userpic3.png",
    imagePath2: "assets/img_imessage.png",
    name: "Jacobs",),
  UserItemData(imagePath: "assets/img_logo_secretpixels.png",
    imagePath2: "assets/messenger icon.png",
    name: "Hugo \nCollins",),
  UserItemData(imagePath: "assets/img_logo_secretpixels.png",
    imagePath2: "assets/messenger icon.png",
    name: "Hugo \nCollins",),
];

class AppItemData {
  final String imagePath;
  final String name;

  AppItemData( {
    required this.imagePath,
    required this.name,
  });
}

final List<AppItemData> appItems = [
  AppItemData(imagePath: "assets/img_imessage.png",
    name: "Message",),
  AppItemData(imagePath: "assets/Mail Icon.png",
    name: "Mail",),
  AppItemData(imagePath: "assets/messenger icon.png",
    name: "Messenger",),
  AppItemData(imagePath: "assets/Whatsapp Icon.png",
    name: "WhatsApp",),
  AppItemData(imagePath: "assets/img_imessage.png",
    name: "Telegram",),

];

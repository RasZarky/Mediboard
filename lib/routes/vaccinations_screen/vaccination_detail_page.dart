import 'package:flutter/material.dart';
import 'package:mediboard/routes/share_screen/share_screen.dart';
import 'package:mediboard/theme/app_decoration.dart';
import 'package:mediboard/theme/custom_button_style.dart';
import 'package:mediboard/theme/custom_text_style.dart';
import 'package:mediboard/theme/theme_helper.dart';
import 'package:mediboard/widgets/appBar/appbar_leading_image.dart';
import 'package:mediboard/widgets/appBar/appbar_title.dart';
import 'package:mediboard/widgets/appBar/custom_app_bar.dart';
import 'package:mediboard/widgets/custom_drop_down.dart';
import 'package:mediboard/widgets/custom_elevated_button.dart';
import 'package:mediboard/widgets/custom_image_view.dart';
import 'package:mediboard/widgets/custom_outlined_button.dart';

class VaccinationDetailPageScreen extends StatelessWidget {
  VaccinationDetailPageScreen({Key? key}) : super(key: key);

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(bottom: 5),
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                decoration: AppDecoration.fillGray,
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                  SizedBox(height: 8),
                  Container(
                      padding: EdgeInsets.all(16),
                      decoration: AppDecoration.outlineBlack900.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder8),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 3),
                            _buildDoctorFrame(context,
                                purposeText: "Start date",
                                monthText: "March 15, 2023"),
                            SizedBox(height: 21),
                            _buildDoctorFrame(context,
                                purposeText: "Previous date",
                                monthText: "March 15, 2023"),
                            SizedBox(height: 26),
                            CustomDropDown(
                                icon: Container(
                                    margin: EdgeInsets.only(left: 30),
                                    child: CustomImageView(
                                        imagePath:
                                            "assets/img_arrow_down_gray_600_01.svg",
                                        height: 16,
                                        width: 16)),
                                hintText: "Show History",
                                items: dropdownItemList,
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 8),
                                onChanged: (value) {}),
                            SizedBox(height: 24),
                            CustomElevatedButton(
                                buttonStyle: ButtonStyle(
                                 backgroundColor:  MaterialStateProperty.all<Color>(
                                     Colors.purple)
                                ),
                                onPressed: (){
                                  showModalBottomSheet(
                                      useSafeArea: true,
                                      isScrollControlled: false,
                                      context: context,
                                      builder: (BuildContext context) {
                                        return ShareScreen(label: 'Vaccine Name',);
                                      }
                                  );
                                },
                                height: 36,
                                text: "Share",
                                rightIcon: Container(
                                    margin: EdgeInsets.only(left: 4),
                                    child: CustomImageView(
                                        imagePath: "assets/img_share.svg",
                                        height: 16,
                                        width: 16)))
                          ])),
                  SizedBox(height: 16),
                  Container(
                      decoration: AppDecoration.shadow.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder8),
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 8, vertical: 16),
                          decoration: AppDecoration.outlineBlack9001.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    imagePath:"assets/img_television_amber_600.svg",
                                    height: 32,
                                    width: 32),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 8, top: 7, bottom: 7),
                                    child: Text("Vaccine Document",
                                        style: theme.textTheme.titleSmall)),
                                Spacer(),
                                CustomOutlinedButton(
                                    height: 24,
                                    width: 41,
                                    text: "EN",
                                    margin: EdgeInsets.symmetric(vertical: 4),
                                    buttonStyle:
                                        CustomButtonStyles.outlineIndigoA,
                                    buttonTextStyle: CustomTextStyles
                                        .bodySmallInterIndigoA200),
                                CustomImageView(
                                    imagePath: "assets/img_external_link.svg",
                                    height: 16,
                                    width: 16,
                                    margin:
                                        EdgeInsets.fromLTRB(8, 8, 4, 8))
                              ]))),
                  SizedBox(height: 12),
                  Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8, vertical: 14),
                      decoration: AppDecoration.shadow.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder8),
                      child: Row(children: [
                        Container(
                            height: 32,
                            width: 32,
                            margin: EdgeInsets.symmetric(vertical: 2),
                            child:
                                Stack(alignment: Alignment.center, children: [
                              CustomImageView(
                                  imagePath: "assets/img_profile.svg",
                                  height: 24,
                                  width: 24,
                                  alignment: Alignment.center),
                              Align(
                                  alignment: Alignment.center,
                                  child: Card(
                                      clipBehavior: Clip.antiAlias,
                                      elevation: 0,
                                      margin: EdgeInsets.all(0),
                                      color: appTheme.yellow700,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder4),
                                      child: Container(
                                          height: 32,
                                          width: 32,
                                          decoration: AppDecoration.fillYellow
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder4),
                                          child: Stack(
                                              alignment: Alignment.bottomLeft,
                                              children: [
                                                CustomImageView(
                                                    imagePath: "assets/img_profile_onprimary.svg",
                                                    height: 20,
                                                    width: 20,
                                                    alignment:
                                                        Alignment.center),
                                                CustomImageView(
                                                    imagePath: "assets/img_user_gray_400.svg",
                                                    height: 24,
                                                    width: 24,
                                                    alignment:
                                                        Alignment.bottomLeft)
                                              ]))))
                            ])),
                        Expanded(
                            child: Padding(
                                padding: EdgeInsets.only(left: 8),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("More Info",
                                          style: CustomTextStyles
                                              .titleSmallGray900),
                                      SizedBox(height: 2),
                                      Text(
                                          "Persistent chest pain and shortness of breath",
                                          style: CustomTextStyles
                                              .bodyMediumBluegray30001)
                                    ])))
                      ]))
                ]))));
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 60,
        leadingWidth: 40,
        leading: AppbarLeadingImage(
            imagePath: "assets/img_arrow_down_gray_600_01.svg",
            margin: EdgeInsets.only(left: 16, top: 18, bottom: 18),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarTitle(
            text: "Vaccine Name", margin: EdgeInsets.only(left: 24)),
        );
  }

  Widget _buildDoctorFrame(
    BuildContext context, {
    required String purposeText,
    required String monthText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(bottom: 1),
          child: Text(purposeText,
              style: theme.textTheme.bodyMedium!
                  .copyWith(color: appTheme.blueGray500))),
      Text(monthText,
          style: CustomTextStyles.titleSmallBlack900Medium
              .copyWith(color: appTheme.black900))
    ]);
  }

  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}

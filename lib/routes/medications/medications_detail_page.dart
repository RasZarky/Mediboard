import 'package:flutter/material.dart';
import 'package:mediboard/theme/app_decoration.dart';
import 'package:mediboard/theme/custom_button_style.dart';
import 'package:mediboard/theme/custom_text_style.dart';
import 'package:mediboard/theme/theme_helper.dart';
import 'package:mediboard/widgets/appBar/appbar_leading_image.dart';
import 'package:mediboard/widgets/appBar/appbar_title.dart';
import 'package:mediboard/widgets/appBar/custom_app_bar.dart';
import 'package:mediboard/widgets/custom_elevated_button.dart';
import 'package:mediboard/widgets/custom_icon_button.dart';
import 'package:mediboard/widgets/custom_image_view.dart';
import 'package:readmore/readmore.dart';

class MedicationsDetailPage extends StatelessWidget {
  const MedicationsDetailPage({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                    child: Container(
                        padding: EdgeInsets.all(12),
                        decoration: AppDecoration.fillGray,
                        child: Column(children: [
                          _buildDoctorFrame(context),
                          SizedBox(height: 12),
                          _buildHypertensionColumn(context),
                          SizedBox(height: 10),
                          _buildPrescribedByFrame(context),
                          SizedBox(height: 10),
                          _buildUpdatedByFrame(context),
                          SizedBox(height: 10),
                          _buildInstructionsFrame(context),
                          SizedBox(height: 10),
                          _buildVitaminB12Frame(context),
                          SizedBox(height: 10),
                          _buildInteractionsFrame(context),
                          SizedBox(height: 10),
                          _buildSideEffectsFrame(context),
                          SizedBox(height: 69)
                        ]))))));
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
            text: "Medication Name", margin: EdgeInsets.only(left: 24)),
        styleType: Style.bgShadow);
  }

  Widget _buildDoctorFrame(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(16),
        decoration: AppDecoration.outlineBlack900
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Padding(
                padding: EdgeInsets.symmetric(vertical: 3),
                child: Text("Status", style: theme.textTheme.bodyMedium)),
            CustomElevatedButton(
                height: 24,
                width: 66,
                text: "Active",
                buttonStyle: CustomButtonStyles.fillLime,
                buttonTextStyle: CustomTextStyles.bodyMediumLightgreen700)
          ]),
          SizedBox(height: 19),
          _buildStartDateFrame(context, startDate: "Type", month: "Periodic"),
          SizedBox(height: 21),
          _buildStartDateFrame(context,
              startDate: "Start date", month: "March 15, 2023"),
          SizedBox(height: 21),
          _buildStartDateFrame(context,
              startDate: "End date", month: "March 15, 2023"),
          SizedBox(height: 23),
          _buildStartDateFrame(context,
              startDate: "Family", month: "Family Name"),
          SizedBox(height: 26),
          CustomElevatedButton(
              height: 36,
              text: "More Information",
              buttonTextStyle: CustomTextStyles.titleSmallOnPrimaryBold)
        ]));
  }

  /// Section Widget
  Widget _buildHypertensionColumn(BuildContext context) {
    return Column(children: [
      Container(
          decoration: AppDecoration.outlineBlack900
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Container(
                width: 366,
                padding: EdgeInsets.fromLTRB(10, 8, 10, 7),
                decoration: AppDecoration.outlineIndigo,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 2),
                      Text("Dosage", style: CustomTextStyles.titleSmallGray900)
                    ])),
            Container(
                padding: EdgeInsets.fromLTRB(8, 16, 8, 15),
                decoration: AppDecoration.outlineGray100014,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("25 mg", style: theme.textTheme.titleSmall),
                      SizedBox(height: 6),
                      Text("1/day", style: theme.textTheme.bodyMedium),
                      SizedBox(height: 22),
                      Padding(
                          padding: EdgeInsets.only(right: 230),
                          child: Row(children: [
                            CustomIconButton(
                                height: 32,
                                width: 32,
                                padding: EdgeInsets.all(8),
                                child: CustomImageView(
                                    imagePath: "assets/img_settings_deep_purple_a200_03.svg")),
                            CustomImageView(
                                imagePath: "assets/img_sun.svg",
                                height: 16,
                                width: 16,
                                margin: EdgeInsets.only(
                                    left: 24, top: 8, bottom: 8)),
                            Spacer(),
                            CustomImageView(
                                imagePath: "assets/img_moon_gray_600_01.svg",
                                height: 16,
                                width: 16,
                                margin: EdgeInsets.symmetric(vertical: 8))
                          ]))
                    ]))
          ])),
      SizedBox(height: 10),
      Container(
          decoration: AppDecoration.outlineBlack900
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Container(
                width: 366,
                padding: EdgeInsets.fromLTRB(10, 9, 10, 8),
                decoration: AppDecoration.outlineIndigo,
                child: Text("Prescribed for",
                    style: CustomTextStyles.titleSmallGray900)),
            Container(
                width: 366,
                padding: EdgeInsets.fromLTRB(8, 16, 8, 15),
                decoration: AppDecoration.outlineGray100014,
                child: CustomElevatedButton(
                    height: 28,
                    width: 114,
                    text: "Hypertension",
                    buttonStyle: CustomButtonStyles.fillGrayTL14,
                    buttonTextStyle: CustomTextStyles.bodyMediumBluegray800))
          ]))
    ]);
  }

  /// Section Widget
  Widget _buildPrescribedByFrame(BuildContext context) {
    return Container(
        decoration: AppDecoration.outlineBlack900
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Container(
              width: 366,
              padding: EdgeInsets.fromLTRB(10, 8, 10, 7),
              decoration: AppDecoration.outlineIndigo,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 2),
                    Text("Prescribed by",
                        style: CustomTextStyles.titleSmallGray900)
                  ])),
          Container(
              padding: EdgeInsets.fromLTRB(8, 16, 8, 15),
              decoration: AppDecoration.outlineGray100014,
              child: Row(children: [
                CustomImageView(
                    imagePath: "assets/img_thumbs_up_purple_a100.svg",
                    height: 40,
                    width: 40,
                    radius: BorderRadius.circular(20)),
                Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Dr.\tDavid\tQ.\tCochran",
                              style: CustomTextStyles.titleSmallGray900Bold),
                          SizedBox(height: 2),
                          Row(children: [
                            Text("Assuta Medical Center",
                                style: CustomTextStyles.bodyMediumGray90015),
                            CustomImageView(
                                imagePath: "assets/img_external_link.svg",
                                height: 15,
                                width: 16,
                                margin: EdgeInsets.only(left: 2, top: 2))
                          ])
                        ]))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildUpdatedByFrame(BuildContext context) {
    return Container(
        decoration: AppDecoration.outlineBlack900
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Container(
              width: 366,
              padding: EdgeInsets.fromLTRB(10, 8, 10, 7),
              decoration: AppDecoration.outlineIndigo,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 2),
                    Text("Updated by",
                        style: CustomTextStyles.titleSmallGray900)
                  ])),
          Container(
              padding: EdgeInsets.fromLTRB(8, 16, 8, 15),
              decoration: AppDecoration.outlineGray100014,
              child: Row(children: [
                CustomImageView(
                    imagePath: "assets/img_large_icons_indigo_a200.svg",
                    height: 40,
                    width: 40,
                    radius: BorderRadius.circular(20)),
                Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Team Name",
                              style: CustomTextStyles.titleSmallGray900Bold),
                          SizedBox(height: 3),
                          Text("Role",
                              style: CustomTextStyles.bodyMediumGray90015)
                        ]))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildInstructionsFrame(BuildContext context) {
    return Container(
        decoration: AppDecoration.shadow
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          _buildAboutFrame(context, aboutText: "Guidelines"),
          SizedBox(height: 15),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Text("Instructions",
                      style: CustomTextStyles.titleSmallGray900))),
          SizedBox(height: 2),
          SizedBox(
              width: 332,
              child: ReadMoreText(
                  "Prescription: MedX should only be prescribed by licensed healthcare providers based on a patient's specific medical condition and needs.\n\nDosage Determination: The dosage of MedX must be individualized for each patient. Consider factors such as the patient's age, weight, medical history, and the severity of their condition.",
                  trimLines: 8,
                  colorClickableText: theme.colorScheme.primary,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: "Read more",
                  moreStyle:
                      CustomTextStyles.bodyMediumGray900.copyWith(height: 1.14),
                  lessStyle: CustomTextStyles.bodyMediumGray900
                      .copyWith(height: 1.14))),
          SizedBox(height: 15)
        ]));
  }

  Widget _buildVitaminB12Frame(BuildContext context) {
    return Container(
        decoration: AppDecoration.shadow
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          _buildAboutFrame(context, aboutText: "About"),
          Container(
              decoration: AppDecoration.shadow
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
              child: Container(
                  decoration: AppDecoration.outlineIndigo,
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 15),
                        SizedBox(
                            width: 331,
                            child: ReadMoreText(
                                "Vitamin B12 is a nutrient that helps keep your body’s blood and nerve cells healthy and helps make DNA, the genetic material in all of your cells. Vitamin B12 also helps prevent megaloblastic anemia, a blood condition that makes people tired and weak.",
                                trimLines: 4,
                                colorClickableText: theme.colorScheme.primary,
                                trimMode: TrimMode.Line,
                                trimCollapsedText: "Read more",
                                moreStyle: CustomTextStyles
                                    .bodyMediumBluegray80001
                                    .copyWith(height: 1.14),
                                lessStyle: CustomTextStyles
                                    .bodyMediumBluegray80001
                                    .copyWith(height: 1.14))),
                        SizedBox(height: 15),
                        Container(
                            padding: EdgeInsets.fromLTRB(8, 15, 8, 16),
                            decoration: AppDecoration.outlineGray100,
                            child: Row(children: [
                              CustomImageView(
                                  imagePath: "assets/img_image_10.png",
                                  height: 22,
                                  width: 33),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 4, top: 2, bottom: 2),
                                  child: Text("National Institutes of Health",
                                      style: CustomTextStyles
                                          .bodyMediumBluegray80001)),
                              CustomImageView(
                                  imagePath: "assets/img_external_link.svg",
                                  height: 15,
                                  width: 16,
                                  margin: EdgeInsets.only(
                                      left: 4, top: 3, bottom: 3))
                            ]))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildInteractionsFrame(BuildContext context) {
    return Container(
        decoration: AppDecoration.shadow
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          _buildAboutFrame(context, aboutText: "Interactions"),
          SizedBox(height: 16),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Row(children: [
                    Padding(
                        padding: EdgeInsets.only(top: 2),
                        child: Text("Tetracycline",
                            style: CustomTextStyles.titleSmallGray900Bold_1)),
                    Container(
                        width: 46,
                        margin: EdgeInsets.only(left: 2),
                        padding: EdgeInsets.symmetric(
                            horizontal: 4, vertical: 1),
                        decoration: AppDecoration.fillLightBlue.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4),
                        child: Text("Minor",
                            style: CustomTextStyles.bodyMediumCyan700))
                  ]))),
          SizedBox(height: 3),
          SizedBox(
              width: 328,
              child: ReadMoreText(
                  "Antibiotics, Tetracycline: Vitamin B12 should not be taken at the same time as tetracycline because it interferes with the absorption and effectiveness of this medication.",
                  trimLines: 2,
                  colorClickableText: theme.colorScheme.primary,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: "Read more",
                  moreStyle:
                      CustomTextStyles.bodyMediumGray900.copyWith(height: 1.14),
                  lessStyle: CustomTextStyles.bodyMediumGray900
                      .copyWith(height: 1.14))),
          SizedBox(height: 13),
          Container(
              padding: EdgeInsets.fromLTRB(8, 15, 8, 16),
              decoration: AppDecoration.outlineGray100,
              child: Row(children: [
                CustomImageView(
                    imagePath: "assets/img_image_10_22x18.png",
                    height: 22,
                    width: 18),
                Padding(
                    padding: EdgeInsets.only(left: 4, top: 2, bottom: 2),
                    child: Text("Mount Sinai",
                        style: CustomTextStyles.bodyMediumBluegray80001)),
                CustomImageView(
                    imagePath: "assets/img_external_link.svg",
                    height: 15,
                    width: 16,
                    margin: EdgeInsets.only(left: 4, top: 3, bottom: 3))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildSideEffectsFrame(BuildContext context) {
    return Container(
        decoration: AppDecoration.shadow
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Container(
              padding: EdgeInsets.fromLTRB(8, 8, 8, 7),
              decoration: AppDecoration.outlineGray100011,
              child: Row(children: [
                Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 0,
                    margin: EdgeInsets.all(0),
                    color: appTheme.purple50,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusStyle.circleBorder20),
                    child: Container(
                        height: 40,
                        width: 40,
                        padding: EdgeInsets.all(9),
                        decoration: AppDecoration.fillPurple.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder20),
                        child: Stack(alignment: Alignment.topLeft, children: [
                          CustomImageView(
                              imagePath: "assets/img_vector.svg",
                              height: 21,
                              width: 21,
                              alignment: Alignment.center),
                          CustomImageView(
                              imagePath: "assets/img_profile_deep_purple_a200.svg",
                              height: 8,
                              width: 8,
                              alignment: Alignment.topLeft)
                        ]))),
                Padding(
                    padding:
                        EdgeInsets.only(left: 8, top: 11, bottom: 11),
                    child: Text("Side Effects",
                        style: CustomTextStyles.titleSmallGray900))
              ])),
          SizedBox(height: 14),
          Container(
              width: 331,
              margin: EdgeInsets.only(left: 16, right: 18),
              child: Text(
                  "High doses of vitamin B-12, such as those used to treat a deficiency, might cause:\n\nHeadache\nNausea and vomiting\nDiarrhea\nFatigue or weakness\nTingling sensation in hands and feet",
                  maxLines: 8,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyMediumGray900
                      .copyWith(height: 1.14))),
          SizedBox(height: 12),
          Container(
              padding: EdgeInsets.fromLTRB(8, 13, 8, 14),
              decoration: AppDecoration.outlineGray100,
              child: Row(children: [
                CustomImageView(
                    imagePath: "assets/img_image_10_14x20.png",
                    height: 14,
                    width: 20,
                    margin: EdgeInsets.symmetric(vertical: 2)),
                Padding(
                    padding: EdgeInsets.only(left: 4, top: 2),
                    child: Text("Mayo Clinic",
                        style: CustomTextStyles.bodyMediumBluegray80001)),
                CustomImageView(
                    imagePath: "assets/img_external_link.svg",
                    height: 15,
                    width: 16,
                    margin: EdgeInsets.only(left: 4, top: 2, bottom: 2))
              ]))
        ]));
  }

  /// Common widget
  Widget _buildStartDateFrame(
    BuildContext context, {
    required String startDate,
    required String month,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(bottom: 1),
          child: Text(startDate,
              style: theme.textTheme.bodyMedium!
                  .copyWith(color: appTheme.blueGray500))),
      Text(month,
          style: CustomTextStyles.titleSmallBlack900Medium
              .copyWith(color: appTheme.black900))
    ]);
  }

  /// Common widget
  Widget _buildAboutFrame(
    BuildContext context, {
    required String aboutText,
  }) {
    return Container(
        padding: EdgeInsets.fromLTRB(8, 8, 8, 7),
        decoration: AppDecoration.outlineGray100011,
        child: Row(children: [
          CustomIconButton(
              height: 40,
              width: 40,
              padding: EdgeInsets.all(9),
              decoration: IconButtonStyleHelper.fillCyan,
              child: CustomImageView(imagePath: "assets/img_inbox.svg")),
          Padding(
              padding: EdgeInsets.only(left: 8, top: 11, bottom: 11),
              child: Text(aboutText,
                  style: CustomTextStyles.titleSmallGray900
                      .copyWith(color: appTheme.gray900)))
        ]));
  }

  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}

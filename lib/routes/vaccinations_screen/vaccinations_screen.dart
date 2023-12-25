import 'package:mediboard/theme/app_decoration.dart';
import 'package:mediboard/widgets/appBar/appbar_leading_image.dart';
import 'package:mediboard/widgets/appBar/appbar_title.dart';
import 'package:mediboard/widgets/appBar/custom_app_bar.dart';
import 'package:mediboard/widgets/custom_drop_down.dart';
import 'package:mediboard/widgets/custom_image_view.dart';

import '../vaccinations_screen/widgets/vaccinationcard_item_widget.dart';
import 'package:flutter/material.dart';

class VaccinationsScreen extends StatelessWidget {
  VaccinationsScreen({Key? key}) : super(key: key);

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList1 = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList2 = ["Item One", "Item Two", "Item Three"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildFrame(context),
                  SizedBox(height: 16),
                  Expanded(
                      child: SingleChildScrollView(
                          child: _buildVaccinations(context)))
                ]))));
  }

  Widget _buildFrame(BuildContext context) {
    return Container(
        decoration: AppDecoration.fillOnPrimary,
        child: Container(
            padding: EdgeInsets.symmetric(vertical: 16),
            decoration: AppDecoration.shadow,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomAppBar(
                      height: 24,
                      leadingWidth: 40,
                      leading: AppbarLeadingImage(
                          imagePath: "assets/chevron-left.png",
                          margin: EdgeInsets.only(left: 16),
                          onTap: () {
                            onTapArrowLeft(context);
                          }),
                      title: AppbarTitle(
                          text: "Vaccinations",
                          margin: EdgeInsets.only(left: 24))),
                  SizedBox(height: 26),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: CustomDropDown(
                          icon: Container(
                              margin:
                                  EdgeInsets.fromLTRB(30, 12, 16, 12),
                              child: CustomImageView(
                                  imagePath:
                                  "assets/img_arrow_down_gray_600_01.svg",
                                  height: 16,
                                  width: 16)),
                          hintText: "Last 7 days",
                          items: dropdownItemList,
                          contentPadding: EdgeInsets.only(
                              left: 16, top: 11, bottom: 11),
                          borderDecoration:
                              DropDownStyleHelper.outlineBlueGrayTL4,
                          onChanged: (value) {}))
                ])));
  }

  Widget _buildVaccinations(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 12, right: 12, bottom: 5),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(children: [
            CustomDropDown(
                width: 105,
                icon: Container(
                    margin: EdgeInsets.fromLTRB(4, 6, 8, 6),
                    child: CustomImageView(
                        imagePath: "assets/img_arrow_down_gray_600_01.svg",
                        height: 16,
                        width: 16)),
                hintText: "Vaccine",
                items: dropdownItemList1,
                onChanged: (value) {}),
            Padding(
                padding: EdgeInsets.only(left: 4),
                child: CustomDropDown(
                    width: 105,
                    icon: Container(
                        margin: EdgeInsets.fromLTRB(4, 6, 8, 6),
                        child: CustomImageView(
                            imagePath: "assets/img_arrow_down_gray_600_01.svg",
                            height: 16,
                            width: 16)),
                    hintText: "Sort by",
                    items: dropdownItemList2,
                    onChanged: (value) {}))
          ]),
          SizedBox(height: 16),
          ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: 8);
              },
              itemCount: 5,
              itemBuilder: (context, index) {
                return const VaccinationcardItemWidget();
              })
        ]));
  }

  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}

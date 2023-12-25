import 'package:flutter/material.dart';
import 'package:mediboard/routes/medications/time_in_day_dropdown_modal_screen.dart';
import 'package:mediboard/routes/medications/widgets/medicationcomponent_item_widget.dart';
import 'package:mediboard/routes/medications/widgets/userprofile10_item_widget.dart';
import 'package:mediboard/theme/app_decoration.dart';
import 'package:mediboard/theme/custom_text_style.dart';
import 'package:mediboard/widgets/appBar/appbar_leading_image.dart';
import 'package:mediboard/widgets/appBar/appbar_title.dart';
import 'package:mediboard/widgets/appBar/custom_app_bar.dart';
import 'package:mediboard/widgets/custom_drop_down.dart';
import 'package:mediboard/widgets/custom_image_view.dart';

class MedicationsPage extends StatefulWidget {
  const MedicationsPage({Key? key}) : super(key: key);

  @override
  MedicationsPageState createState() => MedicationsPageState();
}

class MedicationsPageState extends State<MedicationsPage> with TickerProviderStateMixin {
  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList0 = ["All", "Last 7 days", "Last 30 days", "Last 90 days", "Custom"];

  List<String> dropdownItemList1 = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList2 = ["Item One", "Item Two", "Item Three"];

  late TabController tabviewController;

  @override
  bool get wantKeepAlive => true;

  void initState() {
    super.initState();
    tabviewController = TabController(length: 6, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                    child: Column(children: [
                      _buildFrameAppBar(context),
                  SizedBox(height: 15),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(left: 4),
                                child: CustomDropDown(
                                    width: 350,
                                    icon: Container(
                                        margin:
                                        const EdgeInsets.fromLTRB(4, 6, 8, 6),
                                        child: CustomImageView(
                                            imagePath:
                                            "assets/img_arrow_down_gray_600_01.svg",
                                            height: 16,
                                            width: 16)),
                                    hintText: "Last 7 days",
                                    items: dropdownItemList0,
                                    onChanged: (value) {})),
                            TabBar(
                                controller: tabviewController,
                                isScrollable: true,
                                tabs: const [
                                  Tab(child: Text("All")),
                                  Tab(child: Text("Medications")),
                                  Tab(child: Text("Supplements")),
                                ]),
                            const SizedBox(height: 19),
                            GestureDetector(
                                onTap: () {
                                  showModalBottomSheet(
                                      useSafeArea: true,
                                      isScrollControlled: false,
                                      context: context,
                                      builder: (BuildContext context) {
                                        return TimeInDayDropdownModalScreen();
                                      }
                                  );
                                },
                                child: Row(children: [
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment
                                              .spaceBetween,
                                      children: [
                                    CustomDropDown(
                                        width: 85,
                                        icon: Container(
                                            // margin: EdgeInsets.fromLTRB(
                                            //     0, 6, 8, 6),
                                            child: CustomImageView(
                                                imagePath: "assets/img_arrow_down_gray_600_01.svg",
                                                height: 16,
                                                width: 12)),
                                        hintText: "Family",
                                        items: dropdownItemList,
                                        onChanged: (value) {}),
                                    CustomDropDown(
                                        width: 98,
                                        icon: Container(
                                            margin: EdgeInsets.fromLTRB(
                                                0, 6, 8, 6),
                                            child: CustomImageView(
                                                imagePath: "assets/img_arrow_down_gray_600_01.svg",
                                                height: 16,
                                                width: 12)),
                                        hintText: "Name",
                                        items: dropdownItemList1,
                                        onChanged: (value) {}),
                                    CustomDropDown(
                                        width: 90,
                                        icon: Container(

                                            child: CustomImageView(
                                                imagePath: "assets/img_arrow_down_gray_600_01.svg",
                                                height: 16,
                                                width: 14)),
                                        hintText: "Sort by",
                                        items: dropdownItemList2,
                                        onChanged: (value) {})
                                  ]),

                                  Container(
                                      width: 52,
                                      margin: EdgeInsets.only(left: 4),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 7, vertical: 5),
                                      decoration: AppDecoration
                                          .outlineBluegray300
                                          .copyWith(
                                              borderRadius:
                                                  BorderRadiusStyle
                                                      .circleBorder12),
                                      child: Row(children: [
                                        CustomImageView(
                                            imagePath: "assets/img_settings_gray_600_01.svg",
                                            height: 16,
                                            width: 16),
                                        CustomImageView(
                                            imagePath: "assets/img_arrow_down_gray_600_01.svg",
                                            height: 16,
                                            width: 16,
                                            margin:
                                                EdgeInsets.only(left: 4))
                                      ]))
                                ])),
                            SizedBox(height: 17),
                            Text("Medications",
                                style: CustomTextStyles.titleMediumBold),
                            SizedBox(height: 10),
                            _buildMedicationComponent(context),
                            SizedBox(height: 35),
                            _buildFrame(context)
                          ]))
                ])))));
  }

  Widget _buildMedicationComponent(BuildContext context) {
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 8);
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return MedicationcomponentItemWidget();
        });
  }

  Widget _buildFrame(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Supplements", style: CustomTextStyles.titleMediumBold),
      SizedBox(height: 8),
      ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(height: 8);
          },
          itemCount: 2,
          itemBuilder: (context, index) {
            return Userprofile10ItemWidget();
          })
    ]);
  }

  Widget _buildFrameAppBar(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: const Color(0X7AFFFFFF).withOpacity(1),
        ),
        child: CustomAppBar(
          leadingWidth: 40,
          leading: AppbarLeadingImage(
              imagePath: "assets/chevron-left.png",
              margin: const EdgeInsets.only(left: 16, top: 18, bottom: 18),
              onTap: () {
                onTapArrowLeft(context);
              }),
          title: AppbarTitle(
              text: "Medications ", margin: const EdgeInsets.only(left: 24)),
        ));
  }

  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapFrame(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const TimeInDayDropdownModalScreen()),
    );
  }
}

import 'package:mediboard/routes/visits_page/past_visit_screen.dart';
import 'package:mediboard/routes/visits_page/widgets/userprofile22_item_widget.dart';
import 'package:mediboard/routes/visits_page/widgets/userprofile23_item_widget.dart';
import 'package:mediboard/routes/visits_page/widgets/userprofile24_item_widget.dart';
import 'package:mediboard/widgets/appBar/appbar_leading_image.dart';
import 'package:mediboard/widgets/appBar/appbar_title.dart';
import 'package:mediboard/widgets/appBar/custom_app_bar.dart';
import 'package:mediboard/widgets/custom_drop_down.dart';
import 'package:mediboard/widgets/custom_image_view.dart';
import 'package:flutter/material.dart';

class VisitsPage extends StatefulWidget {
  const VisitsPage({Key? key}) : super(key: key);

  @override
  VisitsPageState createState() => VisitsPageState();
}

class VisitsPageState extends State<VisitsPage> with TickerProviderStateMixin {
  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList0 = ["All", "Last 7 days", "Last 30 days", "Last 90 days", "Custom"];

  List<String> dropdownItemList1 = ["Doctor one", "Doctor Two", "Doctor Three"];

  List<String> dropdownItemList2 = ["Item One", "Item Two", "Item Three"];

  late TabController tabviewController;

  bool get wantKeepAlive => true;

  @override
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
                  const SizedBox(height: 15),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Column(children: [
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
                              Tab(child: Text("Follow Up")),
                              Tab(child: Text("Routine Check-up")),
                              Tab(child: Text("Second opinion")),
                              Tab(child: Text("Complaint")),
                              Tab(child: Text("Administrative")),
                            ]),
                        const SizedBox(height: 19),
                        _buildFrameRow(context),
                        const SizedBox(height: 19),
                        _buildFrameColumn(context),
                        const SizedBox(height: 35),
                        _buildRoutineCheckUpColumn(context),
                        const SizedBox(height: 19),
                        const Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Complaint",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ))),
                        const SizedBox(height: 8),
                        _buildComplaintRow(context),
                        const SizedBox(height: 8),
                        _buildComplaintRow1(context)
                      ]))
                ])))));
  }

  Widget _buildFrameAppBar(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: const Color(0X7AFFFFFF).withOpacity(1),
        ),
        child: CustomAppBar(
          leadingWidth: 40,
          leading: AppbarLeadingImage(
              imagePath: "assets/img_arrow_down_gray_600_01.svg",
              margin: const EdgeInsets.only(left: 16, top: 18, bottom: 18),
              onTap: () {
                onTapArrowLeft(context);
              }),
          title: AppbarTitle(
              text: "Visits", margin: const EdgeInsets.only(left: 24)),
        ));
  }

  Widget _buildFrameRow(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: const EdgeInsets.only(right: 8),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                CustomDropDown(
                    width: 98,
                    icon: Container(
                        margin: const EdgeInsets.fromLTRB(4, 6, 8, 6),
                        child: CustomImageView(
                            imagePath: "assets/img_arrow_down_gray_600_01.svg",
                            height: 16,
                            width: 12)),
                    hintText: "Specialty",
                    items: dropdownItemList,
                    onChanged: (value) {}),
                Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: CustomDropDown(
                        width: 123,
                        icon: Container(
                            margin: const EdgeInsets.fromLTRB(4, 6, 8, 6),
                            child: CustomImageView(
                                imagePath:
                                    "assets/img_arrow_down_gray_600_01.svg",
                                height: 16,
                                width: 16)),
                        hintText: "Doctor name",
                        items: dropdownItemList1,
                        onChanged: (value) {})),
                Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: CustomDropDown(
                        width: 123,
                        icon: Container(
                            margin: const EdgeInsets.fromLTRB(4, 6, 8, 6),
                            child: CustomImageView(
                                imagePath:
                                    "assets/img_arrow_down_gray_600_01.svg",
                                height: 16,
                                width: 16)),
                        hintText: "Sort by",
                        items: dropdownItemList2,
                        onChanged: (value) {}))
              ]),
            )));
  }

  Widget _buildFrameColumn(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Text("Follow-up",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
          )),
      const SizedBox(height: 8),
      ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return const SizedBox(height: 8);
          },
          itemCount: 2,
          itemBuilder: (context, index) {
            return Userprofile22ItemWidget(onTapUserProfile: () {
              onTapUserProfile(context);
            });
          })
    ]);
  }

  Widget _buildRoutineCheckUpColumn(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Text("Routine check-up",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
          )),
      const SizedBox(height: 8),
      ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return const SizedBox(height: 8);
          },
          itemCount: 2,
          itemBuilder: (context, index) {
            return const Userprofile23ItemWidget();
          }),
      const SizedBox(height: 35),
      const Text("Second Opinion",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
          )),
      const SizedBox(height: 8),
      ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return const SizedBox(height: 8);
          },
          itemCount: 2,
          itemBuilder: (context, index) {
            return const Userprofile24ItemWidget();
          })
    ]);
  }

  Widget _buildComplaintRow(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: const Color(0X7AFFFFFF).withOpacity(1),
          boxShadow: [
            BoxShadow(
              color: const Color(0XFF000000).withOpacity(0.06),
              spreadRadius: 2,
              blurRadius: 2,
              offset: const Offset(
                0,
                1,
              ),
            ),
          ],
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          CustomImageView(
              imagePath: "assets/img_user_cyan_400.svg",
              height: 32,
              width: 32,
              margin: const EdgeInsets.symmetric(vertical: 3)),
          Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Dr.\tName ",
                        style: TextStyle(
                          color: Color(0XFF111826),
                          fontSize: 15,
                        )),
                    const SizedBox(height: 2),
                    Row(children: [
                      const Text(
                        "Specialty",
                        style: TextStyle(
                          color: Color(0XFF64748A),
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Container(
                          height: 3,
                          width: 3,
                          margin:
                              const EdgeInsets.only(left: 4, top: 6, bottom: 6),
                          decoration: BoxDecoration(
                              color: const Color(0XFF9CA3AF),
                              borderRadius: BorderRadius.circular(1))),
                      const Padding(
                          padding: EdgeInsets.only(left: 4),
                          child: Text(
                            "Feb 15, 2023",
                            style: TextStyle(
                              color: Color(0XFF64748A),
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ))
                    ])
                  ])),
          CustomImageView(
              imagePath: "assets/img_external_link.svg",
              height: 16,
              width: 16,
              margin: const EdgeInsets.only(left: 110, top: 11, bottom: 11)),
          CustomImageView(
              imagePath: "assets/img_more_vertical.svg",
              height: 16,
              width: 16,
              margin: const EdgeInsets.only(left: 8, top: 11, bottom: 11))
        ]));
  }

  Widget _buildComplaintRow1(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: const Color(0X7AFFFFFF).withOpacity(1),
          boxShadow: [
            BoxShadow(
              color: const Color(0XFF000000).withOpacity(0.06),
              spreadRadius: 2,
              blurRadius: 2,
              offset: const Offset(
                0,
                1,
              ),
            ),
          ],
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          CustomImageView(
              imagePath: "assets/img_user_cyan_400.svg",
              height: 32,
              width: 32,
              margin: const EdgeInsets.symmetric(vertical: 3)),
          Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Dr.\tName ",
                        style: TextStyle(
                          color: Color(0XFF111826),
                          fontSize: 15,
                        )),
                    const SizedBox(height: 2),
                    Row(children: [
                      const Text(
                        "Specialty",
                        style: TextStyle(
                          color: Color(0XFF64748A),
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Container(
                          height: 3,
                          width: 3,
                          margin:
                              const EdgeInsets.only(left: 4, top: 6, bottom: 6),
                          decoration: BoxDecoration(
                              color: const Color(0XFF9CA3AF),
                              borderRadius: BorderRadius.circular(1))),
                      const Padding(
                          padding: EdgeInsets.only(left: 4),
                          child: Text(
                            "Feb 15, 2023",
                            style: TextStyle(
                              color: Color(0XFF64748A),
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ))
                    ])
                  ])),
          CustomImageView(
              imagePath: "assets/img_external_link.svg",
              height: 16,
              width: 16,
              margin: const EdgeInsets.only(left: 110, top: 11, bottom: 11)),
          CustomImageView(
              imagePath: "assets/img_more_vertical.svg",
              height: 16,
              width: 16,
              margin: const EdgeInsets.only(left: 8, top: 11, bottom: 11))
        ]));
  }

  onTapUserProfile(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const PastVisitScreen()),
    );  }

  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}

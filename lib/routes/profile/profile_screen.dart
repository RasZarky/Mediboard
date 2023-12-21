import 'package:flutter/material.dart';
import 'package:mediboard/widgets/appBar/appbar_leading_image.dart';
import 'package:mediboard/widgets/appBar/appbar_title.dart';
import 'package:mediboard/widgets/appBar/appbar_trailing_image.dart';
import 'package:mediboard/widgets/appBar/custom_app_bar.dart';
import 'package:mediboard/widgets/custom_bottom_app_bar.dart';
import 'package:mediboard/widgets/custom_floating_button.dart';
import 'package:mediboard/widgets/custom_icon_button.dart';
import 'package:mediboard/widgets/custom_image_view.dart';

// ignore_for_file: must_be_immutable
class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildFrame(context),
                  Column(children: [
                    _buildFrame1(context),
                    _buildFrame2(context),
                    const SizedBox(height: 16),
                    _buildFrame3(context),
                    const SizedBox(height: 16),
                    _buildFrame4(context),
                    const SizedBox(height: 16),
                    _buildFrame5(context),
                    const SizedBox(height: 16)
                  ])
                ])),
            bottomNavigationBar: _buildNav(context),
            floatingActionButton: CustomFloatingButton(
                height: 60,
                width: 60,
                backgroundColor: const Color(0XFF7C3AED),
                child: CustomImageView(
                    imagePath: "assets/img_grid.svg",
                    height: 30.0,
                    width: 30.0)),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked));
  }

  Widget _buildFrame(BuildContext context) {
    return Container(
        decoration:  BoxDecoration(
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
                text: "Profile", margin: const EdgeInsets.only(left: 24)),
            actions: [
              AppbarTrailingImage(
                  imagePath: "assets/img_arrow_down.svg",
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 18))
            ],
            styleType: Style.bgShadow));
  }


  Widget _buildFrame1(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        decoration: const BoxDecoration(
          color: Color(0XFFF8FAFC)
        ),
        child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 103, vertical: 16),
            decoration: BoxDecoration(
                color: const Color(0X7AFFFFFF).withOpacity(1),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0XFF000000).withOpacity(0.07),
                    spreadRadius: 2,
                    blurRadius: 2,
                    offset: const Offset(
                      0,
                      1,
                    ),
                  ),
                ],
                borderRadius: BorderRadius.circular(4)),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      height: 80,
                      width: 80,
                      child: Stack(alignment: Alignment.bottomRight, children: [
                        CustomImageView(
                            imagePath: "assets/img_frame_1000001733.png",
                            height: 80,
                            width: 80,
                            radius: BorderRadius.circular(40),
                            alignment: Alignment.center),
                        Padding(
                            padding: const EdgeInsets.only(bottom: 1),
                            child: CustomIconButton(
                                height: 24,
                                width: 24,
                                padding: const EdgeInsets.all(6),
                                decoration:
                                    IconButtonStyleHelper.fillDeepPurpleTL12,
                                alignment: Alignment.bottomRight,
                                child: CustomImageView(
                                    imagePath: "assets/img_edit_2_deep_purple_a200_03.svg")))
                      ])),
                  const SizedBox(height: 9),
                  const Text("Cameron Williamson",
                      style: TextStyle(
                        color: Color(0XFF000000),
                        fontSize: 16,
                      )),
                  const SizedBox(height: 2)
                ])));
  }


  Widget _buildFrame2(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 12),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
        decoration: BoxDecoration(
            color: const Color(0X7AFFFFFF).withOpacity(1),
            boxShadow: [
              BoxShadow(
                color: const Color(0XFF000000).withOpacity(0.07),
                spreadRadius: 2,
                blurRadius: 2,
                offset: const Offset(
                  0,
                  1,
                ),
              ),
            ],
            borderRadius: BorderRadius.circular(4)),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                  height: 32,
                  width: 32,
                  margin: const EdgeInsets.symmetric(vertical: 2),
                  child: Stack(alignment: Alignment.center, children: [
                    CustomImageView(
                        imagePath: "assets/img_lock.svg",
                        height: 24,
                        width: 24,
                        alignment: Alignment.center),
                    Align(
                        alignment: Alignment.center,
                        child: Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: const EdgeInsets.all(0),
                            color: const Color(0XFFA78BFA),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4)),
                            child: Container(
                                height: 32,
                                width: 32,
                                decoration: BoxDecoration(
                                        color: const Color(0XFFEDE9FE),
                                        borderRadius:
                                            BorderRadius.circular(4)),
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomImageView(
                                          imagePath:
                                              "assets/img_user_gray_400.svg",
                                          height: 13,
                                          width: 25,
                                          alignment: Alignment.bottomLeft),
                                      CustomImageView(
                                          imagePath:
                                              "assets/img_component_7.svg",
                                          height: 24,
                                          width: 24,
                                          alignment: Alignment.center)
                                    ]))))
                  ])),
              const Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Account Settings",
                            style: TextStyle(
                              color: Color(0XFF334154),
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                            )),
                        SizedBox(height: 3),
                        Text("Manage your account information",
                            style: TextStyle(
                              color: Color(0XFF64748A),
                              fontSize: 12,
                            ))
                      ])),

              const Spacer(),

              CustomImageView(
                  imagePath: "assets/img_arrow_down_gray_600_01.svg",
                  height: 16,
                  width: 16,
                  margin: const EdgeInsets.only(top: 10, right: 4, bottom: 10))
            ]));
  }


  Widget _buildFrame3(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 12),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
        decoration: BoxDecoration(
            color: const Color(0X7AFFFFFF).withOpacity(1),
            boxShadow: [
              BoxShadow(
                color: const Color(0XFF000000).withOpacity(0.07),
                spreadRadius: 2,
                blurRadius: 2,
                offset: const Offset(
                  0,
                  1,
                ),
              ),
            ],
            borderRadius: BorderRadius.circular(4)),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                  height: 32,
                  width: 32,
                  margin: const EdgeInsets.symmetric(vertical: 2),
                  child: Stack(alignment: Alignment.center, children: [
                    CustomImageView(
                        imagePath: "assets/img_lock.svg",
                        height: 24,
                        width: 24,
                        alignment: Alignment.center),
                    Align(
                        alignment: Alignment.center,
                        child: Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: const EdgeInsets.all(0),
                            color: const Color(0XFFF472B6),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4)),
                            child: Container(
                                height: 32,
                                width: 32,
                                decoration: BoxDecoration(
                                    color: const Color(0XFFF472B6),
                                    borderRadius:
                                        BorderRadius.circular(4)),
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomImageView(
                                          imagePath: "assets/img_television_gray_400.svg",
                                          height: 19,
                                          width: 19,
                                          alignment: Alignment.bottomLeft),
                                      CustomImageView(
                                          imagePath: "assets/img_search.svg",
                                          height: 24,
                                          width: 24,
                                          alignment: Alignment.center)
                                    ]))))
                  ])),
              const Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("General Overview",
                                style:  TextStyle(
                                  color: Color(0XFF334154),
                                  fontSize: 14,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                )),
                            SizedBox(height: 5),
                            Text("Customise your account with these settings",
                                style: TextStyle(
                                  color: Color(0XFF64748A),
                                  fontSize: 12,
                                ))]))),
              Spacer(),
              CustomImageView(
                  imagePath: "assets/img_arrow_down_gray_600_01.svg",
                  height: 16,
                  width: 16,
                  margin: const EdgeInsets.only(top: 10, right: 4, bottom: 10))
            ]));
  }


  Widget _buildFrame4(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 12),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
        decoration: BoxDecoration(
            color: const Color(0X7AFFFFFF).withOpacity(1),
            boxShadow: [
              BoxShadow(
                color: const Color(0XFF000000).withOpacity(0.07),
                spreadRadius: 2,
                blurRadius: 2,
                offset: const Offset(
                  0,
                  1,
                ),
              ),
            ],
            borderRadius: BorderRadius.circular(4)),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                  height: 32,
                  width: 32,
                  margin: EdgeInsets.symmetric(vertical: 2),
                  child: Stack(alignment: Alignment.center, children: [
                    CustomImageView(
                        imagePath: "assets/img_lock.svg",
                        height: 24,
                        width: 24,
                        alignment: Alignment.center),
                    Align(
                        alignment: Alignment.center,
                        child: Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: const EdgeInsets.all(0),
                            color: const Color(0XFF16A34A),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4)),
                            child: Container(
                                height: 32,
                                width: 32,
                                decoration: BoxDecoration(
                                    color: const Color(0XFF16A34A),
                                    borderRadius:
                                        BorderRadius.circular(4)),
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomImageView(
                                          imagePath: "assets/img_television_gray_400.svg",
                                          height: 23,
                                          width: 24,
                                          alignment: Alignment.bottomLeft),
                                      CustomImageView(
                                          imagePath: "assets/img_calendar_onprimarycontainer.svg",
                                          height: 24,
                                          width: 24,
                                          alignment: Alignment.center)
                                    ]))))
                  ])),
              
              const Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Habits", style:  TextStyle(
                              color: Color(0XFF334154),
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                            )),
                            SizedBox(height: 4),
                            Text("Customise the habits that matter most to you",
                                style: TextStyle(
                                  color: Color(0XFF64748A),
                                  fontSize: 12,
                                ))
                          ]))),
              
              const Spacer(),

              CustomImageView(
                  imagePath: "assets/img_arrow_down_gray_600_01.svg",
                  height: 16,
                  width: 16,
                  margin: const EdgeInsets.only(top: 10, right: 4, bottom: 10))
            ]));
  }

  /// Section Widget
  Widget _buildFrame5(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 12),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
        decoration: BoxDecoration(
            color: const Color(0X7AFFFFFF).withOpacity(1),
            boxShadow: [
              BoxShadow(
                color: const Color(0XFF000000).withOpacity(0.07),
                spreadRadius: 2,
                blurRadius: 2,
                offset: const Offset(
                  0,
                  1,
                ),
              ),
            ],
            borderRadius: BorderRadius.circular(4)),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                  height: 32,
                  width: 32,
                  margin: const EdgeInsets.symmetric(vertical: 2),
                  child: Stack(alignment: Alignment.center, children: [
                    CustomImageView(
                        imagePath: "assets/img_lock.svg",
                        height: 24,
                        width: 24,
                        alignment: Alignment.center),
                    Align(
                        alignment: Alignment.center,
                        child: Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: const EdgeInsets.all(0),
                            color: const Color(0XFF94A3B7),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4)),
                            child: Container(
                                height: 32,
                                width: 32,
                                decoration:BoxDecoration(
                                    color: const Color(0XFF16A34A),
                                    borderRadius:
                                    BorderRadius.circular(4)),
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomImageView(
                                          imagePath: "assets/img_television_gray_400.svg",
                                          height: 23,
                                          width: 23,
                                          alignment: Alignment.bottomLeft),
                                      CustomImageView(
                                          imagePath: "assets/img_thumbs_up_onprimarycontainer.svg",
                                          height: 24,
                                          width: 24,
                                          alignment: Alignment.center)
                                    ]))))
                  ])),
              const Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Allergies",
                                style: TextStyle(
                                  color: Color(0XFF334154),
                                  fontSize: 14,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                )),
                            SizedBox(height: 3),
                            Text("Tailor your health with allergy management",
                                style: TextStyle(
                                  color: Color(0XFF64748A),
                                  fontSize: 12,
                                ))
                          ]))),
              Spacer(),
              CustomImageView(
                  imagePath: "assets/img_arrow_down_gray_600_01.svg",
                  height: 16,
                  width: 16,
                  margin: const EdgeInsets.only(top: 10, right: 4, bottom: 10))
            ]));
  }

  
  Widget _buildNav(BuildContext context) {
    return CustomBottomAppBar(onChanged: (BottomBarEnum type) {}, context: context,);
  }

 
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}

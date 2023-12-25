import 'package:flutter/material.dart';
import 'package:mediboard/routes/share_screen/share_screen.dart';
import 'package:mediboard/widgets/appBar/appbar_leading_image.dart';
import 'package:mediboard/widgets/appBar/appbar_title.dart';
import 'package:mediboard/widgets/appBar/custom_app_bar.dart';
import 'package:mediboard/widgets/custom_elevated_button.dart';
import 'package:mediboard/widgets/custom_image_view.dart';
import 'package:mediboard/widgets/custom_outlined_button.dart';

class PastVisitScreen extends StatelessWidget {
  const PastVisitScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                margin: const EdgeInsets.only(bottom: 5),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                decoration: const BoxDecoration(
                  color: Color(0XFFF8FAFC),
                ),
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                  const SizedBox(height: 8),
                  _buildDoctor(context),
                  const SizedBox(height: 16),
                  _buildFrame1(context),
                  const SizedBox(height: 12),
                  _buildComponentFive(context)
                ]))));
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 60,
        leadingWidth: 40,
        leading: AppbarLeadingImage(
            imagePath: "assets/chevron-left.png",
            margin: const EdgeInsets.only(left: 16, top: 18, bottom: 18),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarTitle(
            text: "Visit Summary", margin: const EdgeInsets.only(left: 24)),
       );
  }

  Widget _buildDoctor(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
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
        ),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const SizedBox(height: 8),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Row(children: [
                    CustomImageView(
                        imagePath: "assets/img_thumbs_up_purple_a100.svg",
                        height: 40,
                        width: 40,
                        radius: BorderRadius.circular(20)),
                    const Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Dr.\tDavid\tQ.\tCochran",
                                  style: TextStyle(
                                    color: Color(0XFF111826),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                  )),
                              SizedBox(height: 2),
                              Text("Assuta Medical Center",
                                  style: TextStyle(
                                    color: Color(0XFF111826),
                                    fontSize: 15,
                                  ))
                            ]))
                  ])),
              const SizedBox(height: 36),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                const Padding(
                    padding: EdgeInsets.only(top: 1),
                    child: Text("Visit Type",
                        style: TextStyle(
                          color: Color(0XFF64748A),
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ))),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  CustomImageView(
                      imagePath: "assets/img_repeat.svg",
                      height: 16,
                      width: 16),
                  const Padding(
                      padding: EdgeInsets.only(left: 4),
                      child: Text("Periodic",
                          style: TextStyle(
                            color: Color(0XFF334154),
                            fontWeight: FontWeight.w500,
                          )))
                ])
              ]),
              const SizedBox(height: 23),
              _buildDoctorFrame(context,
                  purposeText: "Specialty ", monthText: "Cardiology "),
              const SizedBox(height: 21),
              _buildDoctorFrame(context,
                  purposeText: "Visited", monthText: "March 15, 2023"),
              const SizedBox(height: 26),
              CustomElevatedButton(
                  onPressed: (){
                    showModalBottomSheet(
                        useSafeArea: true,
                        isScrollControlled: false,
                        context: context,
                        builder: (BuildContext context) {
                          return ShareScreen(label: 'Visit Summery',);
                        }
                    );
                  },
                  height: 36,
                  text: "Share",
                  buttonStyle: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.purple,
                    ),
                  ),
                  rightIcon: Container(
                      margin: const EdgeInsets.only(left: 4),
                      child: CustomImageView(
                          imagePath: "assets/img_share.svg",
                          height: 16,
                          width: 16)))
            ]));
  }


  Widget _buildFrame1(BuildContext context) {
    return Container(
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
        child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color(0X7AFFFFFF).withOpacity(1),
              boxShadow: [
                BoxShadow(
                  color: const Color(0XFF000000).withOpacity(0.1),
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: const Offset(
                    0,
                    4,
                  ),
                ),
              ],
            ),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomImageView(
                  imagePath: "assets/img_large_icons.svg",
                  height: 32,
                  width: 32),
              const Padding(
                  padding: EdgeInsets.only(left: 8, top: 8, bottom: 6),
                  child: Text(
                    "Visit summary",
                    style: TextStyle(
                      color: Color(0XFF334154),
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                    ),
                  )),
              const Spacer(),
              CustomOutlinedButton(
                  height: 24,
                  width: 41,
                  text: "EN",
                  margin: const EdgeInsets.symmetric(vertical: 4),
                  buttonStyle: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.white,
                    ),
                    side: MaterialStateProperty.all<BorderSide>(
                      const BorderSide(
                        color: Color(0XFF6366F1),
                        width: 1,
                      ),
                    ),
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  buttonTextStyle: const TextStyle(
                    color: Colors.purple,
                    fontSize: 12,
                  )),
              CustomImageView(
                  imagePath: "assets/img_external_link.svg",
                  height: 16,
                  width: 16,
                  margin: const EdgeInsets.fromLTRB(8, 8, 4, 8))
            ])));
  }

  Widget _buildComponentFive(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 14),
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
        child: Row(children: [
          Container(
              height: 32,
              width: 32,
              margin: const EdgeInsets.symmetric(vertical: 2),
              child: Stack(alignment: Alignment.center, children: [
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
                        margin: const EdgeInsets.all(0),
                        color: const Color(0XFFFBBF24),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)),
                        child: Container(
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                                color: const Color(0XFFFBBF24),
                                borderRadius: BorderRadius.circular(4)),
                            child: Stack(
                                alignment: Alignment.bottomLeft,
                                children: [
                                  CustomImageView(
                                      imagePath:
                                          "assets/img_profile_onprimary.svg",
                                      height: 20,
                                      width: 20,
                                      alignment: Alignment.center),
                                  CustomImageView(
                                      imagePath: "assets/img_user_gray_400.svg",
                                      height: 24,
                                      width: 24,
                                      alignment: Alignment.bottomLeft)
                                ]))))
              ])),
          const Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Visit reason",
                          style: TextStyle(color: Color(0XFF111826)),
                        ),
                        SizedBox(height: 2),
                        Text("Persistent chest pain and shortness of breath",
                            style: TextStyle(color: Color(0XFF94A3B7)))
                      ])))
        ]));
  }

  Widget _buildDoctorFrame(
    BuildContext context, {
    required String purposeText,
    required String monthText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: const EdgeInsets.only(bottom: 1),
          child: Text(purposeText,
              style: const TextStyle(
                color: Color(0XFF64748A),
                fontSize: 14,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
              ))),
      Text(monthText,
          style: const TextStyle(
            color: Color(0XFF000000),
            fontWeight: FontWeight.w500,
          ))
    ]);
  }

  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}

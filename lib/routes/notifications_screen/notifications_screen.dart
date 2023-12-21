import 'package:mediboard/widgets/appBar/appbar_leading_image.dart';
import 'package:mediboard/widgets/appBar/appbar_title.dart';
import 'package:mediboard/widgets/appBar/custom_app_bar.dart';
import '../notifications_screen/widgets/notificationcard_item_widget.dart';
import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildFrame(context),
                  _buildNotificationCard(context)
                ])
            )
        )
    );
  }

  Widget _buildFrame(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
         color: const Color(0X7AFFFFFF).withOpacity(1),
        ),
        child: Column(children: [
          CustomAppBar(
              height: 60,
              leadingWidth: 40,
              leading: AppbarLeadingImage(
                  imagePath: "assets/img_arrow_down_gray_600_01.svg",
                  margin: const EdgeInsets.only(left: 16, top: 18, bottom: 18),
                  onTap: () {
                    onTapArrowLeft(context);
                  }),
              title: AppbarTitle(
                  text: "Notifications", margin: const EdgeInsets.only(left: 24)),
              styleType: Style.bgShadow_1),
          Container(
              decoration: BoxDecoration(
               color: const Color(0X7AFFFFFF).withOpacity(1),
              ),
              child: Container(
                  width: double.maxFinite,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                   color: const Color(0X7AFFFFFF).withOpacity(1),
                   boxShadow: const [
                    BoxShadow(
                     color: Color(0X4C7F7F7F),
                     spreadRadius: 2,
                     blurRadius: 2,
                     offset: Offset(
                      0,
                      2,
                     ),
                    ),
                   ],
                  ),
                  child: Row(children: [
                    Container(
                        width: 18,
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                         color: const Color(0X7AFFFFFF).withOpacity(1),
                         boxShadow: const [
                          BoxShadow(
                           color: Color(0XFF7C3BE7),
                           spreadRadius: 2,
                           blurRadius: 2,
                           offset: Offset(
                            0,
                            2,
                           ),
                          ),
                         ],
                        ),
                        child: Text("All",
                            style: TextStyle(
                                color: const Color(0X7AFFFFFF).withOpacity(1),
                                fontSize: 15,
                                fontWeight: FontWeight.w500
                            ))),
                    const Padding(
                        padding: EdgeInsets.only(
                            left: 40, top: 10, bottom: 10),
                        child: Text("Unread",
                            style: TextStyle(
                             color: Color(0XFF6B7280),
                             fontSize: 15,
                            )))
                  ])))
        ]));
  }

  Widget _buildNotificationCard(BuildContext context) {
    return Expanded(
        child: Container(
            decoration: BoxDecoration(
             color: const Color(0X7AFFFFFF).withOpacity(1),
            ),
            child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 1);
                },
                itemCount: 3,
                itemBuilder: (context, index) {
                  return const NotificationcardItemWidget();
                })));
  }

  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}

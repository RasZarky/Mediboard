import 'package:mediboard/widgets/appBar/appbar_leading_image.dart';
import 'package:mediboard/widgets/appBar/appbar_title.dart';
import 'package:mediboard/widgets/appBar/custom_app_bar.dart';
import 'package:mediboard/widgets/custom_image_view.dart';
import '../notifications_screen/widgets/notificationcard_item_widget.dart';
import 'package:flutter/material.dart';

class NotificationsScreen extends StatefulWidget {
   NotificationsScreen({Key? key}) : super(key: key);

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> with TickerProviderStateMixin {
  late TabController tabviewController;

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
              child: TabBar(
                  controller: tabviewController,
                  isScrollable: true,
                  tabs: const [

                    Tab(child: Text("All")),
                    Tab(child: Text("Unread")),

                  ])),
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

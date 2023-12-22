import 'package:mediboard/routes/notifications/widgets/notificationcard_item_widget.dart';
import 'package:mediboard/widgets/appBar/appbar_leading_image.dart';
import 'package:mediboard/widgets/appBar/appbar_title.dart';
import 'package:mediboard/widgets/appBar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class NotificationsScreen extends StatefulWidget {
   const NotificationsScreen({Key? key}) : super(key: key);

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
                /// Todo: Implement well
                if (index == 0) {
                  return const NotificationcardItemWidget(
                    iconImagePath: "assets/img_warning_red_300.svg",
                    title: "Test results are uploaded",
                    description: "View your Blood Test results taken at Salus on Jul 27, 2023",
                    timestamp: "20 minutes ago",
                  );
                } else if (index == 1) {
                  return const NotificationcardItemWidget(
                    iconImagePath: "assets/scan.png",
                    title: "New Imaging Findings",
                    description: "Your Bone Density Scan (DEXA) bone from Aug 1, 2023 is updated",
                    timestamp: "7 hours ago",
                  );
                } else {
                  return const NotificationcardItemWidget(
                    iconImagePath: "assets/visit_summery.png",
                    title: "Your visit summery is here!",
                    description: "View the summary details from your visit at Dr. Blake at Jul 25, 2023",
                    timestamp: "Feb 15 2023",
                  );
                }
              },
            )
        ));
  }

  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}

import 'package:flutter/material.dart';
import 'package:mediboard/routes/forYou/for_you_page.dart';
import 'package:mediboard/routes/home/home.dart';
import 'package:mediboard/routes/profile/profile_screen.dart';

import 'custom_image_view.dart';

class CustomBottomAppBar extends StatefulWidget {
  CustomBottomAppBar({super.key, this.onChanged, required this.context});

  Function(BottomBarEnum)? onChanged;
  final BuildContext context;

  @override
  CustomBottomAppBarState createState() => CustomBottomAppBarState();
}

class CustomBottomAppBarState extends State<CustomBottomAppBar> {
  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
        icon: "assets/img_nav_home.svg",
        activeIcon: "assets/img_nav_home.svg",
        title: "Home",
        type: BottomBarEnum.Home,),
    BottomMenuModel(
      icon: "assets/star.png",
      activeIcon: "assets/star.png",
      title: "For you",
      type: BottomBarEnum.foryou,
    ),
    BottomMenuModel(
      icon: "assets/trending-up.png",
      activeIcon: "assets/trending-up.png",
      title: "Reports",
      type: BottomBarEnum.reports,
    ),
    BottomMenuModel(
      icon: "assets/img_nav_profile.svg",
      activeIcon: "assets/img_nav_profile.svg",
      title: "Profile",
      type: BottomBarEnum.Profile,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      child: SizedBox(
        height: 20,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            bottomMenuList.length,
            (index) {
              return InkWell(
                onTap: () {
                  for (var element in bottomMenuList) {
                    element.isSelected = false;
                  }
                  bottomMenuList[index].isSelected = true;
                  widget.onChanged?.call(bottomMenuList[index].type);
                  navigateToPage(widget.context, bottomMenuList[index].type);
                },
                child: bottomMenuList[index].isSelected
                    ? Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomImageView(
                            imagePath: bottomMenuList[index].activeIcon,
                            height: 20,
                            width: 20,
                            color: const Color(0XFF6B7280),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 3),
                            child: Text(
                              bottomMenuList[index].title ?? "",
                              style:const TextStyle(
                                color: Color(0XFF475568),
                                fontWeight: FontWeight.w500,
                              )
                            ),
                          ),
                        ],
                      )
                    : Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomImageView(
                            imagePath: bottomMenuList[index].icon,
                            height: 20,
                            width: 20,
                            color: const Color(0XFF8B5CF6),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 3),
                            child: Text(
                              bottomMenuList[index].title ?? "",
                              style: const TextStyle(
                                  color: Color(0XFF8B5CF6)
                              ),
                            ),
                          ),
                        ],
                      ),
              );
            },
          ),
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  foryou,
  reports,
  Profile,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
    this.isSelected = false,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;

  bool isSelected;
}

class DefaultWidget extends StatelessWidget {
  const DefaultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(10),
      child: const Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void navigateToPage(BuildContext context, BottomBarEnum type) {
  switch (type) {
    case BottomBarEnum.Home:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Home()),
      );
      break;
    case BottomBarEnum.foryou:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ForYouPage()),
      );
      break;
    case BottomBarEnum.reports:
    // Navigate to Reports page
    //   Navigator.push(
    //     context,
    //     MaterialPageRoute(builder: (context) => ReportsPage()),
    //   );
      break;
    case BottomBarEnum.Profile:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ProfileScreen()),
      );
      break;
  }
}

import 'package:flutter/material.dart';
import 'package:mediboard/routes/forYou/article_page.dart';
import 'package:mediboard/widgets/appBar/appbar_leading_iconbutton_one.dart';
import 'package:mediboard/widgets/appBar/appbar_trailing_iconbutton_three.dart';
import 'package:mediboard/widgets/appBar/custom_app_bar.dart';

class ArticleTabContainerScreen extends StatefulWidget {
  const ArticleTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ArticleTabContainerScreenState createState() =>
      ArticleTabContainerScreenState();
}

class ArticleTabContainerScreenState extends State<ArticleTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(top: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 28,
                  width: 311,
                  margin: const EdgeInsets.only(left: 12),
                  child: TabBar(
                    controller: tabviewController,
                    labelPadding: EdgeInsets.zero,
                    tabs: const [
                      Tab(
                        child: Text(
                          "Nutrition",
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Cardiology",
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Mental Health",
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 638,
                  child: TabBarView(
                    controller: tabviewController,
                    children: const [
                      ArticlePage(),
                      ArticlePage(),
                      ArticlePage(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 243,
      leadingWidth: 44,
      leading: AppbarLeadingIconbuttonOne(
        imagePath: "assets/img_chevron_left.svg",
        margin: const EdgeInsets.only(
          left: 12,
          top: 8,
          bottom: 203,
        ),
      ),
      actions: [
        AppbarTrailingIconbuttonThree(
          imagePath: "assets/img_bookmark_blue_gray_700_01.svg",
          margin: const EdgeInsets.only(
            left: 12,
            top: 8,
            right: 203,
          ),
        ),
        AppbarTrailingIconbuttonThree(
          imagePath: "assets/img_more_vertical_gray_600_32x32.svg",
          margin: const EdgeInsets.only(
            left: 4,
            top: 8,
            right: 215,
          ),
        ),
      ],
      styleType: Style.bgGradientblack,
    );
  }
}

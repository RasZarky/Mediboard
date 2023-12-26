import 'package:flutter/material.dart';
import 'package:mediboard/routes/forYou/article_page.dart';
import 'package:mediboard/widgets/appBar/appbar_leading_iconbutton_one.dart';
import 'package:mediboard/widgets/appBar/appbar_trailing_iconbutton_three.dart';
import 'package:mediboard/widgets/appBar/custom_app_bar.dart';
import 'package:mediboard/widgets/custom_image_view.dart';

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
        onTap: (){
          Navigator.pop(context);
        },
        imagePath: "assets/chevron-left.png",
        margin: const EdgeInsets.only(
          left: 12,
          top: 8,
          bottom: 203,
        ),
      ),
      actions: [
        Align(
          alignment: Alignment.topLeft,
          child: Row(
            children: [
              AppbarTrailingIconbuttonThree(
                imagePath: "assets/img_bookmark_blue_gray_700_01.svg",
                margin: const EdgeInsets.only(
                  left: 12,
                  top: 8,
                ),
              ),

              Container(
                  height: 30.309998,
                  width: 27,
                  margin: const EdgeInsets.only(left: 24, top: 11, right: 24),
                  child: Stack(alignment: Alignment.topRight, children: [
                    CustomImageView(
                        imagePath: "assets/img_more_vertical_gray_600_32x32.svg",
                        height: 24,
                        width: 24,
                        alignment: Alignment.bottomLeft,
                        margin: const EdgeInsets.only(top: 6, right: 3),
                        onTap: () {

                        }),
                    Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          height: 8,
                          width: 8,
                          margin:
                          const EdgeInsets.only(left: 19, bottom: 22),
                          // decoration: BoxDecoration(
                          //     color: const Color(0XFF22C55E),
                          //     borderRadius: BorderRadius.circular(4),
                          //     border: Border.all(
                          //         color: const Color(0XFF4C1D95)
                          //             .withOpacity(1),
                          //         width: 2,
                          //         strokeAlign:
                          //             BorderSide.strokeAlignOutside)
                          // )
                        ))
                  ])),
            ],
          ),
        ),

      ],
      styleType: Style.bgGradientblack,
    );
  }
}

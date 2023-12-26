import 'package:mediboard/routes/forYou/article_tab_container_screen.dart';
import 'package:mediboard/routes/forYou/my_bookmarks_screen.dart';
import 'package:mediboard/routes/forYou/subscription/subscription_page.dart';
import 'package:mediboard/routes/forYou/widgets/article3_item_widget.dart';
import 'package:mediboard/routes/forYou/widgets/article4_item_widget.dart';
import 'package:mediboard/routes/forYou/widgets/chips6_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:mediboard/routes/modal_actions_screen/modal_actions_screen.dart';
import 'package:mediboard/widgets/appBar/appbar_title.dart';
import 'package:mediboard/widgets/appBar/appbar_trailing_image.dart';
import 'package:mediboard/widgets/appBar/custom_app_bar.dart';
import 'package:mediboard/widgets/custom_bottom_app_bar.dart';
import 'package:mediboard/widgets/custom_floating_button.dart';
import 'package:mediboard/widgets/custom_image_view.dart';
import 'package:mediboard/widgets/custom_search_view.dart';

class ForYouPage extends StatefulWidget {
  const ForYouPage({Key? key}) : super(key: key);

  @override
  ForYouPageState createState() => ForYouPageState();
}

class ForYouPageState extends State<ForYouPage> with TickerProviderStateMixin {
  late TabController tabviewController;
  TextEditingController searchController = TextEditingController();

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
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: 53,
                title: AppbarTitle(
                    text: "For You", margin: const EdgeInsets.only(left: 16)),
                actions: [
                  AppbarTrailingImage(
                      imagePath: "assets/img_layers_gray_600.svg",
                      margin:
                          const EdgeInsets.only(left: 13, top: 17, right: 11),
                      onTap: () {
                        onTapLayers(context);
                      }),
                  Container(
                      height: 30.309998,
                      width: 27,
                      margin: const EdgeInsets.only(left: 24, top: 11, right: 24),
                      child: Stack(alignment: Alignment.topRight, children: [
                        CustomImageView(
                            imagePath: "assets/img_bookmark_gray_600.svg",
                            height: 24,
                            width: 24,
                            alignment: Alignment.bottomLeft,
                            margin: const EdgeInsets.only(top: 6, right: 3),
                            onTap: () {
                              onTapImgBookmark(context);
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
                      ]))
                ]),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 18),
                  SizedBox(
                      height: 32,
                      width: 378,
                      child: TabBar(
                          controller: tabviewController,
                          isScrollable: true,
                          tabs: [
                            Tab(
                                child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 6),
                                    decoration: BoxDecoration(
                                        color: const Color(0XB2FFFFFF)
                                            .withOpacity(1),
                                        border: Border.all(
                                          color: const Color(0XFFE5E7EB),
                                          width: 1,
                                          strokeAlign:
                                              BorderSide.strokeAlignOutside,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CustomImageView(
                                              imagePath: "img/coffee.svg",
                                              height: 16,
                                              width: 16,
                                              margin:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 1)),
                                          const Padding(
                                              padding: EdgeInsets.only(left: 8),
                                              child: Text("New In"))
                                        ]))),
                            Tab(
                                child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 6),
                                    decoration: BoxDecoration(
                                        color: const Color(0XB2FFFFFF)
                                            .withOpacity(1),
                                        border: Border.all(
                                          color: const Color(0XFFE5E7EB),
                                          width: 1,
                                          strokeAlign:
                                              BorderSide.strokeAlignOutside,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  "assets/img_bookmark.svg",
                                              height: 16,
                                              width: 16,
                                              margin:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 1)),
                                          const Padding(
                                              padding: EdgeInsets.only(left: 8),
                                              child: Text("Saved"))
                                        ]))),
                            const Tab(child: Text("Clinical Trials")),
                            const Tab(child: Text("Scientific articles")),
                            const Tab(child: Text("New treatments ")),
                            const Tab(child: Text("New tech"))
                          ])),
                  _buildScrollView(context),
                ],
              ),
            ),
            bottomNavigationBar: CustomBottomAppBar(
              onChanged: (BottomBarEnum type) {},
              context: context,
            ),
            floatingActionButton: CustomFloatingButton(
                onTap: (){
                  showModalBottomSheet(
                      useSafeArea: true,
                      isScrollControlled: true,
                      context: context,
                      builder: (BuildContext context) {
                        // You can replace this with your own widget for the bottom sheet content
                        return const ModalActionsScreen();
                      }
                  );
                },
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

  Widget _buildMedicalFields(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Text("Medical fields", style: TextStyle(fontSize: 14)),
      const SizedBox(height: 11),
      Wrap(
          runSpacing: 10,
          spacing: 10,
          children:
              List<Widget>.generate(6, (index) => const Chips6ItemWidget()))
    ]);
  }

  Widget _buildScrollView(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: [
      const SizedBox(height: 24),
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(children: [
            CustomSearchView(
                controller: searchController,
                hintText: "Ask a question...",
                contentPadding:
                    const EdgeInsets.only(left: 16, top: 11, bottom: 11)),
            const SizedBox(height: 37),
            const Align(
                alignment: Alignment.centerLeft,
                child: Text("Recently added", style: TextStyle(fontSize: 14))),
            const SizedBox(height: 11),
            GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 285,
                    crossAxisCount: 2,
                    mainAxisSpacing: 24,
                    crossAxisSpacing: 24),
                physics: const BouncingScrollPhysics(),
                itemCount: gridItems.length,
                itemBuilder: (context, index) {
                  final itemData = gridItems[index];
                  return Article3ItemWidget(onTapArticle: () {
                    onTapArticle(context);
                  },
                    imagePath: itemData.imagePath,
                    headline: itemData.headline,
                    duration: itemData.duration,);
                }),
            const SizedBox(height: 35),
            _buildMedicalFields(context),
            const SizedBox(height: 36),
            GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 285,
                    crossAxisCount: 2,
                    mainAxisSpacing: 24,
                    crossAxisSpacing: 24),
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return const Article4ItemWidget();
                })
          ]))
    ]));
  }

  onTapArticle(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const ArticleTabContainerScreen()));
  }

  onTapLayers(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const SubscribtionScreen()));
  }

  onTapImgBookmark(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const MyBookmarksScreen()));
  }
}

class GridItemData {
  final String imagePath;
  final String headline;
  final String duration;

  GridItemData( {
    required this.imagePath,
    required this.headline,
    required this.duration,
  });
}

final List<GridItemData> gridItems = [
  GridItemData(imagePath: "assets/img_rectangle_175.png", headline: "Advancements in Gene Therapy for Inherited Diseases", duration: "1 min read" ),
  GridItemData(imagePath: "assets/Rectangle 175.png", headline: "The Surprising Link Between Gut Health and Mental Health", duration: "3 min read" ),
  GridItemData(imagePath: "assets/excersice.png", headline: "The Benefits of Regular Exercise for Heart Health", duration: "1 min read" ),
  GridItemData(imagePath: "assets/doc.png", headline: "Understanding the Latest Research on Alzheimer's Disease", duration: "12 min read" ),
  GridItemData(imagePath: "assets/img_rectangle_175_3.png", headline: "How Artificial Intelligence is Revolutionizing Healthcare", duration: "1 min read" ),
  GridItemData(imagePath: "assets/meditate.png", headline: "The Power of Meditation for Managing Chronic Pain", duration: "1 min read" ),
];

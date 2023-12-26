import 'package:mediboard/routes/forYou/article_tab_container_screen.dart';
import 'package:mediboard/routes/forYou/widgets/article3_item_widget.dart';
import 'package:mediboard/theme/theme_helper.dart';
import 'package:mediboard/widgets/appBar/appbar_leading_image.dart';
import 'package:mediboard/widgets/appBar/appbar_title.dart';
import 'package:mediboard/widgets/appBar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class MyBookmarksScreen extends StatelessWidget {
  const MyBookmarksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 25),
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 12, right: 12, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Recent saved",
                                  style: theme.textTheme.titleSmall),
                              SizedBox(height: 12),
                              _buildMyBookmarks(context)
                            ]))))));
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 40,
        leading: AppbarLeadingImage(
            imagePath: "assets/chevron-left.png",
            margin: EdgeInsets.only(left: 16, top: 18, bottom: 18),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarTitle(
            text: "My Bookmarks", margin: EdgeInsets.only(left: 24)),
        styleType: Style.bgShadow_1);
  }

  Widget _buildMyBookmarks(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 285,
            crossAxisCount: 2,
            mainAxisSpacing: 0,
            crossAxisSpacing: 0),
        physics: NeverScrollableScrollPhysics(),
        itemCount: gridItems.length,
        itemBuilder: (context, index) {
         final itemData = gridItems[index];
         return Article3ItemWidget(onTapArticle: () {
          onTapArticle(context);
         },
          imagePath: itemData.imagePath,
          duration: itemData.duration,
          headline: itemData.headline,);
        });
  }

  onTapArticle(BuildContext context) {
   Navigator.of(context).push(MaterialPageRoute(
       builder: (context) => const ArticleTabContainerScreen()));
  }


  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
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

];
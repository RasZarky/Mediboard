import 'package:flutter/material.dart';
import 'package:mediboard/routes/forYou/article_tab_container_screen.dart';
import 'package:mediboard/routes/forYou/subscription/widgets/grid_item_widget.dart';
import 'package:mediboard/routes/forYou/widgets/article3_item_widget.dart';
import 'package:mediboard/theme/custom_button_style.dart';
import 'package:mediboard/theme/custom_text_style.dart';
import 'package:mediboard/widgets/appBar/appbar_leading_image.dart';
import 'package:mediboard/widgets/appBar/appbar_title.dart';
import 'package:mediboard/widgets/appBar/custom_app_bar.dart';
import 'package:mediboard/widgets/custom_elevated_button.dart';
import 'package:mediboard/widgets/custom_image_view.dart';
import 'package:mediboard/widgets/custom_outlined_button.dart';

class SubscribtionScreen extends StatelessWidget {
  const SubscribtionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 12),
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 12, right: 12, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(children: [
                                _buildScreenRow(context),
                                _buildScreenRow1(context)
                              ]),
                              SizedBox(height: 24),
                              _buildGrid(context)
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
            text: "Medical fields", margin: EdgeInsets.only(left: 8)),
        styleType: Style.bgShadow_1);
  }

  Widget _buildScreenRow(BuildContext context) {
    return CustomElevatedButton(
        height: 32,
        width: 92,
        text: "All",
        leftIcon: Container(
            margin: EdgeInsets.only(right: 8),
            child: CustomImageView(
                imagePath: "assets/img_layers.svg",
                height: 16,
                width: 16)),
        buttonStyle: CustomButtonStyles.fillPrimaryTL16,
        buttonTextStyle: CustomTextStyles.bodyMediumOnPrimary15);
  }

  Widget _buildScreenRow1(BuildContext context) {
    return CustomOutlinedButton(
        height: 32,
        width: 150,
        text: "Subscribed",
        margin: EdgeInsets.only(left: 8),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 8),
            child: CustomImageView(
                imagePath: "assets/img_bell_blue_gray_300.svg",
                height: 16,
                width: 16)),
        buttonStyle: CustomButtonStyles.outlineGrayTL16,
        buttonTextStyle: CustomTextStyles.bodyMediumBluegray800);
  }

  Widget _buildGrid(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 200,
            crossAxisCount: 2,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12),
        physics: NeverScrollableScrollPhysics(),
        itemCount: gridItems.length,
        itemBuilder: (context, index) {
          final itemData = gridItems[index];
          return GridItemWidget(onTapArticle: () {
            onTapArticle(context);
          },
            imagePath: itemData.imagePath,
            label: itemData.label,
            status: itemData.status,);
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
  final String label;
  final String status;

  GridItemData( {
    required this.imagePath,
    required this.label,
    required this.status,
  });
}

final List<GridItemData> gridItems = [
  GridItemData(imagePath: "assets/img_rectangle_175_100x177.png", label: "Gastroenterology", status: "unsub" ),
  GridItemData(imagePath: "assets/pancrease.png", label: "Endocrinology", status: "sub" ),
  GridItemData(imagePath: "assets/cardio.png", label: "Cardiology", status: "unsub" ),
  GridItemData(imagePath: "assets/nutrition.png", label: "Nutrition", status: "unsub" ),
  GridItemData(imagePath: "assets/neuro.png", label: "Neurology", status: "unsub" ),
  GridItemData(imagePath: "assets/dentist.png", label: "Dentistry", status: "unsub" ),



];
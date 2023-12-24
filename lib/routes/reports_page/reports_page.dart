import 'package:mediboard/routes/modal_actions_screen/modal_actions_screen.dart';
import 'package:mediboard/theme/app_decoration.dart';
import 'package:mediboard/theme/custom_text_style.dart';
import 'package:mediboard/widgets/appBar/appbar_title.dart';
import 'package:mediboard/widgets/appBar/custom_app_bar.dart';
import 'package:mediboard/widgets/custom_bottom_app_bar.dart';
import 'package:mediboard/widgets/custom_floating_button.dart';
import 'package:mediboard/widgets/custom_image_view.dart';
import 'package:mediboard/widgets/custom_search_view.dart';

import '../reports_page/widgets/article_item_widget.dart';
import 'package:flutter/material.dart';

class ReportsPage extends StatelessWidget {
  ReportsPage({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: _buildAppBar(context),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 9),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
              bottom: 93,
            ),
            child: Column(
              children: [
                CustomSearchView(
                  controller: searchController,
                  hintText: "Search",
                ),
                const SizedBox(height: 47),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 2),
                    child: Text(
                      "Recently viewed",
                      style: CustomTextStyles.titleSmallGray900Bold,
                    ),
                  ),
                ),
                const SizedBox(height: 11),
                _buildArticle(context),
                const SizedBox(height: 37),
                _buildAllReports(context),

              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: _buildBottomAppBar(context),
      floatingActionButton: CustomFloatingButton(
        onTap: (){
          showModalBottomSheet(
              useSafeArea: true,
              isScrollControlled: true,
              context: context,
              builder: (BuildContext context) {
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
          width: 30.0,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 56,
      title: AppbarTitle(
        text: "Reports",
        margin: const EdgeInsets.only(left: 16),
      ),
    );
  }

  Widget _buildArticle(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 2),
      decoration: AppDecoration.shadow.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: "assets/img_rectangle_175.png",
            height: 100,
            width: 366,
          ),
          const SizedBox(height: 11),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text(
              "General",
              style: CustomTextStyles.titleSmallGray900,
            ),
          ),
          const SizedBox(height: 17),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text(
              "Last Update Feb 28, 2023",
              style: CustomTextStyles.bodyMediumBluegray700,
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget _buildAllReports(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "All Reports",
            style: CustomTextStyles.titleSmallGray900Bold,
          ),
          const SizedBox(height: 11),
          SizedBox(
            height: 189,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (
                context,
                index,
              ) {
                return const SizedBox(
                  width: 12,
                );
              },
              itemCount: 2,
              itemBuilder: (context, index) {
                return const ArticleItemWidget();
              },
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildBottomAppBar(BuildContext context) {
  return CustomBottomAppBar(
    onChanged: (BottomBarEnum type) {},
    context: context,
  );
}

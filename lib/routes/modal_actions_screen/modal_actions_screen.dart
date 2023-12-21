import 'package:mediboard/widgets/appBar/appbar_title.dart';
import 'package:mediboard/widgets/appBar/appbar_trailing_image.dart';
import 'package:mediboard/widgets/appBar/custom_app_bar.dart';
import 'package:mediboard/widgets/custom_image_view.dart';

import '../modal_actions_screen/widgets/userprofile2_item_widget.dart';
import 'package:flutter/material.dart';

class ModalActionsScreen extends StatelessWidget {
  const ModalActionsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 10,
          ),
          child: Column(
            children: [
              _buildFrameRow(context),
              const SizedBox(height: 26),
              _buildFrameColumn(context),
              const SizedBox(height: 5),
            ],
          ),
        ),
      ),
    );
  }
  
  
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarTitle(
        text: "Actions",
        margin: const EdgeInsets.only(left: 16),
      ),
      actions: [
        AppbarTrailingImage(
          onTap: (){
            Navigator.pop(context);
          },
          imagePath: "assets/img_x.svg",
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 18,
          ),
        ),
      ],
      // styleType: Style.bgOutline,
    );
  }
  
  
  Widget _buildFrameRow(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 14,
      ),
      decoration: BoxDecoration(
        color: const Color(0X7AFFFFFF).withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: const Color(0XFF000000).withOpacity(0.06),
            spreadRadius: 2,
            blurRadius: 2,
            offset: const Offset(
              0,
              1,
            ),
          ),
        ],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: "assets/img_user_teal_a400.svg",
            height: 40,
            width: 40,
            radius: BorderRadius.circular(
              14,
            ),
            margin: const EdgeInsets.symmetric(vertical: 1),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 8,
              top: 1,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Create a query",
                  style: TextStyle(
                    color: Color(0XFF111826),
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  "Cross-reference your medical data",
                  style: TextStyle(
                    color: Color(0XFF111826),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  
  Widget _buildFrameColumn(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "All data",
            style: TextStyle(
              color: Color(0XFF111826),
              fontSize: 15,
            ),
          ),
          const SizedBox(height: 21),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 12,
                right: 7,

              ),
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 228,
                  crossAxisCount: 1,
                  mainAxisSpacing: 1,
                  crossAxisSpacing: 1,
                ),
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 1,
                itemBuilder: (context, index) {
                  return const Userprofile2ItemWidget();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

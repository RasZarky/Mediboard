import '../widgets/medicationlist_item_widget.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ActivemedicationsItemWidget extends StatelessWidget {
  const ActivemedicationsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 152,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return const SizedBox(
            width: 8,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return const MedicationlistItemWidget();
        },
      ),
    );
  }
}

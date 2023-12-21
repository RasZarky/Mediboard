import 'package:flutter/material.dart';

class Chips6ItemWidget extends StatelessWidget {
  const Chips6ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 6,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: const Text(
        "Gastroenterology",
        style: TextStyle(
          color: Color(0XFF374151),
          fontSize: 15,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: false,
      backgroundColor: const Color(0XB2FFFFFF).withOpacity(1),
      selectedColor: const Color(0XB2FFFFFF).withOpacity(1),
      shape: RoundedRectangleBorder(
        side: const BorderSide(
          color: Color(0XFFB8BFC8),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(
          16,
        ),
      ),
      onSelected: (value) {},
    );
  }
}

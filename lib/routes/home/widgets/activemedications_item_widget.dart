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

    List<medicationList> medications = getMedicationList();
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
        itemCount: medications.length,
        itemBuilder: (context, index) {
          medicationList medication = medications[index];
          return MedicationlistItemWidget(
            name: medication.name,
            time: medication.time,
            imagePath1: medication.imagePath1,
            imagePath2: medication.imagePath2,
            imagePath3: medication.imagePath3 ,

          );
        },
      ),
    );
  }
}

 class medicationList {
   final String name;
   final String time;
   final String imagePath1;
   final String imagePath2;
   final String imagePath3;

   medicationList({
     required this.name,
     required this.time,
     required this.imagePath1,
     required this.imagePath2,
     required this.imagePath3,
   });
 }

 List<medicationList> getMedicationList() {
   return [
     medicationList(
         name: "ENTRESTO, 100 mg",
         time: "2/day",
         imagePath1: "assets/img_settings_deep_purple_a200_03.svg",
         imagePath2: "assets/img_sun.svg",
         imagePath3: "assets/img_moon.svg"
     ),
     medicationList(
         name: "Spironolactone, 25mg",
         time: "1/day",
         imagePath1: "assets/img_settings_deep_purple_a200_03.svg",
         imagePath2: "assets/img_sun.svg",
         imagePath3: "assets/img_moon.svg"
     ),
     medicationList(
         name: "Vitamin D3, 2000IU",
         time: "2/day",
         imagePath1: "assets/img_settings_deep_purple_a200_03.svg",
         imagePath2: "assets/img_sun.svg",
         imagePath3: "assets/img_moon.svg"
     ),
   ];
 }
import 'package:carousel_slider/carousel_slider.dart';
import 'package:circular_chart_flutter/circular_chart_flutter.dart';
import 'package:flutter/material.dart';
import 'package:mediboard/routes/home/widgets/activemedications_item_widget.dart';
import 'package:mediboard/routes/home/widgets/iconitem1_item_widget.dart';
import 'package:mediboard/routes/home/widgets/recentorders_item_widget.dart';
import 'package:mediboard/routes/home/widgets/userprofile3_item_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../widgets/appBar/appbar_title_iconbutton.dart';
import '../../widgets/appBar/custom_app_bar.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_floating_button.dart';
import '../../widgets/custom_image_view.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

int sliderIndex = 1;
final GlobalKey<AnimatedCircularChartState> _chartKey = GlobalKey<AnimatedCircularChartState>();

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              const SizedBox(height: 19),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 16),
                              child: Text(
                                "Hello Shmuel",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),

                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 16),
                              child: CustomImageView(
                                imagePath: "assets/img_bell.svg",
                                height: 24,
                                width: 24,
                                alignment: Alignment.bottomLeft,
                                margin: const EdgeInsets.only(
                                  top: 6,
                                  right: 3,
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                      const SizedBox(height: 23),
                      _buildUserProfile(context),
                      const SizedBox(height: 24),
                      _buildRecentOrders(context),
                      const SizedBox(height: 48),
                      const Text(
                        textAlign: TextAlign.left,
                        "Active medications",
                        style: TextStyle(
                          color: Color(0XFF111826),
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 8),
                      _buildActiveMedications(context),
                      const SizedBox(height: 8),
                      SizedBox(
                        height: 8,
                        child: AnimatedSmoothIndicator(
                          activeIndex: sliderIndex,
                          count: 3,
                          axisDirection: Axis.horizontal,
                          effect: const ScrollingDotsEffect(
                            spacing: 16,
                            activeDotColor: Color(0XFF7C3AED),
                            dotColor: Color(0XFFD9D9D9),
                            dotHeight: 8,
                            dotWidth: 8,
                          ),
                        ),
                      ),
                      const SizedBox(height: 56),
                      _buildTrackingMeasures(context),
                      const SizedBox(height: 12),
                      _buildUserProfileList(context),
                      const SizedBox(height: 10),
                      SizedBox(
                        height: 8,
                        child: AnimatedSmoothIndicator(
                          activeIndex: sliderIndex,
                          count: 1,
                          axisDirection: Axis.horizontal,
                          effect: const ScrollingDotsEffect(
                            spacing: 16,
                            activeDotColor: Color(0XFF7C3AED),
                            dotColor: Color(0XFFD9D9D9),
                            dotHeight: 8,
                            dotWidth: 8,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomAppBar(context),
        floatingActionButton: CustomFloatingButton(
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
      ),
    );
  }
}

Widget _buildUserProfile(BuildContext context) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 42),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 4),
          child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 96,
              crossAxisCount: 3,
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,
            ),
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 6,
            itemBuilder: (context, index) {
              final itemData = gridItems[index];

              return Iconitem1ItemWidget(
                imagePath: itemData.imagePath,
                label: itemData.label,
                count: itemData.count,
              );
            },
          ),
        ),

        const SizedBox(height: 38),

        AnimatedCircularChart(
          key: _chartKey,
          size: const Size(300.0, 300.0),
          initialChartData: const <CircularStackEntry>[
            CircularStackEntry(
              <CircularSegmentEntry>[
                CircularSegmentEntry(
                  33.33,
                  Color(0XFF22D3EE),
                  rankKey: 'completed',
                ),
                CircularSegmentEntry(
                  33.33,
                  Color(0XFFEAB308),
                  rankKey: 'remaining',
                ),
                CircularSegmentEntry(
                  33.33,
                  Color(0XFFFB7185),
                  rankKey: 'remaining',
                ),
              ],
              rankKey: 'progress',
            ),
          ],
          // holeRadius: 60.0,
          edgeStyle: SegmentEdgeStyle.round,
          chartType: CircularChartType.Radial,
          percentageValues: true,
          holeLabel: 'Upcoming \n 3 activities',
          labelStyle: TextStyle(
            color: Colors.blueGrey[600],
            fontWeight: FontWeight.bold,
            fontSize: 24.0,
          ),
        )
      ],
    ),
  );
}

class GridItemData {
  final String imagePath;
  final String label;
  final int? count;

  GridItemData({
    required this.imagePath,
    required this.label,
    this.count,
  });
}

final List<GridItemData> gridItems = [
  GridItemData(imagePath: "assets/visits.png", label: "Visits", count: 2),
  GridItemData(imagePath: "assets/reports.png", label: "Reports", ),
  GridItemData(imagePath: "assets/medical_profile.png", label: "Medical Profile",),
  GridItemData(imagePath: "assets/medication.png", label: "Medication",),
  GridItemData(imagePath: "assets/tests.png", label: "Tests", count: 1),
  GridItemData(imagePath: "assets/wearables.png", label: "Wearables",),
];

Widget _buildRecentOrders(BuildContext context) {

  List<OrderData> orders = getOrders();

  return ListView.separated(

    physics: const NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    itemCount: orders.length,
    itemBuilder: (context, index) {
      OrderData order = orders[index];

      return RecentordersItemWidget(
        imagePath: order.imagePath,
        title: order.title,
        quantity: order.quantity,
        colour: order.colour,
      );
    },
    separatorBuilder: (context, index) {
      return const SizedBox(
        height: 1,
      );
    },
  );
}

class OrderData {
  final String imagePath;
  final String title;
  final String quantity;
  final Color colour;

  OrderData({
    required this.imagePath,
    required this.title,
    required this.quantity,
    required this.colour,
  });
}

List<OrderData> getOrders() {
  return [
    OrderData(
      imagePath: "assets/visits.png",
      title: "Future Visits 1",
      quantity: "1",
      colour: const Color(0XFF22D3EE).withOpacity(1)
    ),
    OrderData(
      imagePath: "assets/medication.png",
      title: "Future medication",
      quantity: "2",
      colour: const Color(0XFFEAB308).withOpacity(1)
    ),
    OrderData(
      imagePath: "assets/tests.png",
      title: "Future Lab tests",
      quantity: "2",
      colour: const Color(0XFFFB7185).withOpacity(1)
    ),
    OrderData(
      imagePath: "assets/reports.png",
      title: "Reports",
      quantity: "2",
      colour: Colors.purpleAccent.withOpacity(1)
    ),
  ];
}

Widget _buildActiveMedications(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 12),
    child: CarouselSlider.builder(
      options: CarouselOptions(
        height: 152,
        initialPage: 0,
        autoPlay: true,
        viewportFraction: 1.0,
        enableInfiniteScroll: false,
        scrollDirection: Axis.horizontal,
        onPageChanged: (
            index,
            reason,
            ) {
          sliderIndex = index;
        },
      ),
      itemCount: 1,
      itemBuilder: (context, index, realIndex) {
        return ActivemedicationsItemWidget();
      },
    ),
  );
}

Widget _buildTrackingMeasures(BuildContext context) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 12),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Tracking Measures ",
          style: TextStyle(
            color: Color(0XFF111826),
            fontSize: 15,
            fontWeight: FontWeight.w700,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            left: 4,
            top: 2,
            bottom: 2,
          ),
          child: Text(
            "See All 15",
            textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: 15
            ),
          ),
        ),
        CustomImageView(
          imagePath: "assets/img_arrow_down_gray_600_01.svg",
          height: 16,
          width: 16,
          margin: const EdgeInsets.only(
            left: 4,
            top: 2,
            bottom: 2,
          ),
        ),
      ],
    ),
  );
}

Widget _buildUserProfileList(BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(left: 12),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 336,
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 9),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Color(0XFFE2E8F0),
                        width: 1,
                      ),
                    ),
                  ),
                  child: const Text(
                    "Feb 15, 2023",
                    style: TextStyle(
                      color: Color(0XFF111826),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: IntrinsicWidth(
                    child: SizedBox(
                      height: 156,
                      width: 336,
                      child: Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              padding:
                              const EdgeInsets.fromLTRB(12, 12, 12, 11),
                              decoration:  const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Color(0XFFF1F5F9),
                                    width: 1,
                                  ),
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "B12",
                                        style: TextStyle(
                                          color: Color(0XFF111826),
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      const Text(
                                        "173 pg/ml",
                                        style:TextStyle(
                                          color: Color(0XFFDC2626),
                                          fontSize: 15,
                                        ),
                                      ),
                                      Container(
                                        width: 79,
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 8,
                                          vertical: 4,
                                        ),
                                        decoration:
                                        BoxDecoration(
                                          color: Color(0XFFFEF2F2),
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                        child: const Text(
                                          "Off Track",
                                          style: TextStyle(
                                            color: Color(0XFFDC2626)
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 92),
                                  const Text(
                                    "Last test result: 154 pg/ml (90 days ago)",
                                    style: TextStyle(
                                      fontSize: 15
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    margin: const EdgeInsets.only(
                                      left: 12,
                                      right: 260,
                                    ),
                                    padding:
                                    const EdgeInsets.symmetric(horizontal: 7),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: const Color(0X7AFFFFFF).withOpacity(1),
                                      border: Border.all(
                                        color: const Color(0XFFD1D5DB),
                                        width: 1,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                      MainAxisAlignment.end,
                                      children: [
                                        const SizedBox(height: 8),
                                        const Text(
                                          "173 pg/ml",
                                          style: TextStyle(
                                              color: Color(0XFF374151)
                                          ),
                                        ),
                                        const SizedBox(height: 8),
                                        CustomImageView(
                                          imagePath: "assets/img_bottom_break.svg",
                                          height: 1,
                                          width: 40,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Container(
                                  decoration: const BoxDecoration(
                                    color: Color(0XFFE5E7EB)
                                  ),
                                  child: Container(
                                    width: 124,
                                    margin: const EdgeInsets.only(right: 230),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 43),
                                    decoration: BoxDecoration(
                                      color: const Color(0XFFEF4444),
                                      borderRadius: BorderRadius.circular(1)
                                    ),
                                    child: Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                        color: const Color(0X7AFFFFFF).withOpacity(1),
                                        borderRadius: BorderRadius.circular(
                                          10,
                                        ),
                                        border: Border.all(
                                          color: const Color(0XFFD1D5DB),
                                          width: 1,
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: const Color(0XFF000000).withOpacity(0.07),
                                            spreadRadius: 2,
                                            blurRadius: 2,
                                            offset: const Offset(
                                              0,
                                              1,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Container(
                                  width: 182,
                                  margin:
                                  const EdgeInsets.symmetric(horizontal: 86),
                                  child: const Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "200 ",
                                        style:TextStyle(
                                          color: Color(0XFF111826),
                                          fontSize: 15,
                                        ),
                                      ),
                                      Text(
                                        "1100",
                                        style:TextStyle(
                                          color: Color(0XFF111826),
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 192,
            child: ListView.separated(
              padding: EdgeInsets.only(left: 8),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (
                  context,
                  index,
                  ) {
                return SizedBox(
                  width: 8,
                );
              },
              itemCount: 3,
              itemBuilder: (context, index) {
                return Userprofile3ItemWidget();
              },
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _buildBottomAppBar(BuildContext context) {
  return CustomBottomAppBar(
    onChanged: (BottomBarEnum type) {},
  );
}
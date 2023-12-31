import 'package:carousel_slider/carousel_slider.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
import 'package:mediboard/routes/home/widgets/activemedications_item_widget.dart';
import 'package:mediboard/routes/home/widgets/iconitem1_item_widget.dart';
import 'package:mediboard/routes/home/widgets/recentorders_item_widget.dart';
import 'package:mediboard/routes/home/widgets/userprofile3_item_widget.dart';
import 'package:mediboard/routes/modal_actions_screen/modal_actions_screen.dart';
import 'package:mediboard/routes/notifications/notifications_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_floating_button.dart';
import '../../widgets/custom_image_view.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

int sliderIndex = 1;
int touchedIndex = -1;

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const NotificationsScreen()),
                                  );
                                },
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
                          ),

                        ],
                      ),
                      const SizedBox(height: 23),
                      _buildUserProfile(context),
                      const SizedBox(height: 24),
                      _buildRecentOrders(context),
                      const SizedBox(height: 48),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: Text(
                            textAlign: TextAlign.left,
                            "Active medications",
                            style: TextStyle(
                              color: Color(0XFF111826),
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
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
                          count: 4,
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
                      const SizedBox(height: 40),
                    ],
                  ),
                ),
              ),
            ],
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

      ),
    );
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
              itemCount: gridItems.length,
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

          Stack(
            alignment: Alignment.center,
            children: [
              Row(
                children: <Widget>[
                  Expanded(
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: PieChart(
                        PieChartData(
                          pieTouchData: PieTouchData(
                            touchCallback: (FlTouchEvent event, pieTouchResponse) {
                              setState(() {
                                if (!event.isInterestedForInteractions ||
                                    pieTouchResponse == null ||
                                    pieTouchResponse.touchedSection == null) {
                                  touchedIndex = -1;
                                  return;
                                }
                                touchedIndex = pieTouchResponse
                                    .touchedSection!.touchedSectionIndex;
                              });
                            },
                          ),
                          borderData: FlBorderData(
                            show: false,
                          ),
                          sectionsSpace: 5,
                          centerSpaceRadius: 130,
                          sections: showingSections(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text("Upcoming",
                    style: TextStyle(
                      fontSize: 20
                    ),),
                    Text("5 Activities",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),)
                  ],
                ),
              )
            ],
          )
          

        ],
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(5, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 25.0 : 16.0;
      final radius = isTouched ? 60.0 : 30.0;
      const shadows = [Shadow(color: Colors.black, blurRadius: 2)];
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: Color(0xFF2196F3),
            value: 20,
            title: '',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: shadows,
            ),
          );
        case 1:
          return PieChartSectionData(
            color: Color(0xFFFFC300),
            value: 30,
            title: '',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: shadows,
            ),
          );
        case 2:
          return PieChartSectionData(
            color: Color(0xFF6E1BFF),
            value: 15,
            title: '',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: shadows,
            ),
          );
        case 3:
          return PieChartSectionData(
            color: Colors.purple,
            value: 15,
            title: '',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: shadows,
            ),
          );
        case 4:
          return PieChartSectionData(
            color: Color(0xFFFF3AF2),
            value: 20,
            title: '',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: shadows,
            ),
          );
        default:
          throw Error();
      }
    });
  }
}


class GridItemData {
  final String imagePath;
  final String label;
  final int? count;
  final VoidCallback? onTap;

  GridItemData( {
    required this.imagePath,
    required this.label,
    this.count,
    this.onTap,
  });
}

final List<GridItemData> gridItems = [
  GridItemData(imagePath: "assets/visits.png", label: "Visits", count: 2,),
  GridItemData(imagePath: "assets/medication.png", label: "Medications", ),
  GridItemData(imagePath: "assets/vaccinations.png", label: "Vaccinations", ),
  // GridItemData(imagePath: "assets/reports.png", label: "Reports", ),
  // GridItemData(imagePath: "assets/tests.png", label: "Tests", count: 1),
  // GridItemData(imagePath: "assets/wearables.png", label: "Wearables",),
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
      title: "Future Visits",
      quantity: "1",
      colour: const Color(0XFF22D3EE).withOpacity(1)
    ),
    OrderData(
      imagePath: "assets/medication.png",
      title: "Future Vaccinations",
      quantity: "1",
      colour: const Color(0XFFEAB308).withOpacity(1)
    ),
    OrderData(
      imagePath: "assets/tests.png",
      title: "Future Lab tests",
      quantity: "2",
      colour: const Color(0XFFFB7185).withOpacity(1)
    ),
    OrderData(
      imagePath: "assets/surgeries.png",
      title: "Surgeries",
      quantity: "1",
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
        return const ActivemedicationsItemWidget();
      },
    ),
  );
}

Widget _buildTrackingMeasures(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 12),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
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
    padding: const EdgeInsets.only(left: 12),
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Container(
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
                IntrinsicWidth(
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
                                        color: const Color(0XFFFEF2F2),
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
                                const SizedBox(height: 72),
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
                            child: FlutterSlider(
                              hatchMark: FlutterSliderHatchMark(
                                density: 0.5, // means 50 lines, from 0 to 100 percent
                                labels: [
                                  FlutterSliderHatchMarkLabel(percent: 30, label: Text('2000')),
                                  FlutterSliderHatchMarkLabel(percent: 80, label: Text('1100')),
                                ],
                              ),
                              values: [300],
                              max: 1500,
                              min: 0,
                              onDragging: (handlerIndex, lowerValue, upperValue) {
                                lowerValue = lowerValue;
                                upperValue = upperValue;
                                // setState(() {});
                              },
                            )
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 192,
            width: 335,
            child: ListView.separated(
              padding: const EdgeInsets.only(left: 8),
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
                return const Userprofile3ItemWidget();},
            ),
          ),
        ],
      ),
    ),
  );
}

Widget _buildBottomAppBar(BuildContext context) {
  return CustomBottomAppBar(
    onChanged: (BottomBarEnum type) {},
    context: context,
  );
}
import 'package:ecommerce_design/constant/constant.dart';
import 'package:ecommerce_design/home_screen/home_screen_sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isTap = false;

  List<String> categoriesName = ["Women", "Men", "Accessories", "Beauty"];
  List<String> categoriesImage = [
    "assets/images/women.png",
    "assets/images/men.png",
    "assets/images/accessories.png",
    "assets/images/beauty.png"
  ];
  String initial = "assets/images/women.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.07,
                  horizontal: MediaQuery.of(context).size.width * 0.06),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: HomeScreenSizes.titleContainerHeight(context),
                    width: HomeScreenSizes.titleContainerWidth(context),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: HomeScreenSizes.menuIconSize(context),
                          width: HomeScreenSizes.menuIconSize(context),
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: Image.asset("assets/images/menu.png"),
                          ),
                        ),
                        Container(
                          height: HomeScreenSizes.textContinerHeight(context),
                          width: HomeScreenSizes.textContainerWidth(context),
                          child: const FittedBox(
                            fit: BoxFit.cover,
                            child: Text(
                              "FluxStore",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff000000)),
                            ),
                          ),
                        ),
                        Container(
                          height: HomeScreenSizes.notificationIconSize(context),
                          width: HomeScreenSizes.notificationIconSize(context),
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: Image.asset("assets/images/Bell_pin.png"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.09,
                  vertical: MediaQuery.of(context).size.height * 0.02),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: HomeScreenSizes.listViewBuildericonContainerHeight(
                        context),
                    width: double.infinity,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: categoriesImage.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(
                                right: Responsive.isDesktop(context)
                                    ? MediaQuery.of(context).size.width * 0.3
                                    : Responsive.isTablet(context)
                                        ? MediaQuery.of(context).size.width *
                                            0.2
                                        : Responsive.isMobile(context)
                                            ? MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.12
                                            : Responsive.smallMobile(context)
                                                ? MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.09
                                                : MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.06),
                            child: ClipRRect(
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    initial = categoriesImage[index];
                                  });
                                },
                                child: Container(
                                  height: HomeScreenSizes
                                      .listViewBuildericonContainerHeight(
                                          context),
                                  width: HomeScreenSizes
                                      .listViewBuildericonContainerWidth(
                                          context),
                                  decoration: BoxDecoration(
                                      color: initial == categoriesImage[index]
                                          ? const Color(0xff3A2C27)
                                          : const Color(0xffF3F3F3),
                                      shape: BoxShape.circle),
                                  child: Center(
                                    child: Image.asset(
                                      categoriesImage[index],
                                      color: Color(0xff9D9D9D),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ReusableComponent(height: 15, width: 45, text: "Women"),
                      ReusableComponent(height: 15, width: 25, text: "Men"),
                      ReusableComponent(
                          height: 15, width: 70, text: "Accessories"),
                      ReusableComponent(height: 15, width: 39, text: "Beauty"),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.height * 0.05),
                    child: Container(
                      height: HomeScreenSizes.stackContaierHeight(context),
                      width: HomeScreenSizes.stackContaierWidth(context),
                      child: Stack(
                        children: [
                          Opacity(
                            opacity: 0.9,
                            child: Container(
                              height: double.infinity,
                              width: double.infinity,
                              child: Image.asset(
                                  "assets/images/mask_group.png"), // Use Image.asset to load the image
                            ),
                          ),
                          Positioned(
                              top: MediaQuery.of(context).size.height * 0.03,
                              left: MediaQuery.of(context).size.width * 0.52,
                              bottom: MediaQuery.of(context).size.height * 0.03,
                              child: Container(
                                height: 110,
                                width: 120,
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Autumn",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xffffffff),
                                          fontSize: 22),
                                    ),
                                    Text(
                                      "Collection",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xffffffff),
                                          fontSize: 22),
                                    ),
                                    Text(
                                      "2023",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xffffffff),
                                          fontSize: 22),
                                    )
                                  ],
                                ),
                              ))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.height * 0.01),
                    child: Container(
                      height: HomeScreenSizes.rowHeight(context),
                      width: HomeScreenSizes.rowidth(context),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Feature Products",
                            style: TextStyle(
                                fontSize: Responsive.isDesktop(context)
                                    ? 32
                                    : Responsive.isTablet(context)
                                        ? 26
                                        : Responsive.isMobile(context)
                                            ? 20
                                            : Responsive.smallMobile(context)
                                                ? 12
                                                : 9,
                                color: Color(0xff000000),
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Show All",
                            style: TextStyle(
                                fontSize: Responsive.isDesktop(context)
                                    ? 26
                                    : Responsive.isTablet(context)
                                        ? 20
                                        : Responsive.isMobile(context)
                                            ? 13
                                            : Responsive.smallMobile(context)
                                                ? 8
                                                : 6,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff9B9B9B)),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.height * 0.01),
                    child: Container(
                      height: HomeScreenSizes.gridViewHeight(context),
                      width: double.infinity,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: AppConstants.images.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(
                                  right: Responsive.isDesktop(context)
                                      ? MediaQuery.of(context).size.width * 0.1
                                      : Responsive.isTablet(context)
                                          ? MediaQuery.of(context).size.width *
                                              0.08
                                          : Responsive.isMobile(context)
                                              ? MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.04
                                              : Responsive.smallMobile(context)
                                                  ? MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.03
                                                  : MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.02),
                              child: ClipRRect(
                                  child: Container(
                                height: HomeScreenSizes.gridViewHeight(context),
                                width: HomeScreenSizes.gridViewWidtht(context),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      height: HomeScreenSizes
                                          .gridViewImageContainerHeight(
                                              context),
                                      child: FittedBox(
                                        fit: BoxFit.cover,
                                        child: Image.asset(
                                            AppConstants.images[index]),
                                      ),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.01,
                                    ),
                                    Text(
                                      AppConstants.name[index],
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff1D1F22),
                                          fontSize: HomeScreenSizes
                                              .gridViewTextFontSize(context)),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.01,
                                    ),
                                    Text(
                                      AppConstants.price[index],
                                      style: TextStyle(
                                          fontSize: HomeScreenSizes
                                              .gridViewPriceFontSize(context),
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff1D1F22)),
                                    )
                                  ],
                                ),
                              )),
                            );
                          }),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Container(
              width: double.infinity,
              height: Responsive.isDesktop(context)
                  ? 200
                  : Responsive.isTablet(context)
                      ? 190
                      : Responsive.isMobile(context)
                          ? 158
                          : Responsive.smallMobile(context)
                              ? 158
                              : 130,
              decoration: BoxDecoration(
                color: Color(0xffF8F8FA),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: Responsive.isDesktop(context)
                            ? MediaQuery.of(context).size.height * 0.09
                            : Responsive.isTablet(context)
                                ? MediaQuery.of(context).size.height * 0.07
                                : Responsive.isMobile(context)
                                    ? MediaQuery.of(context).size.height * 0.06
                                    : Responsive.smallMobile(context)
                                        ? MediaQuery.of(context).size.height *
                                            0.06
                                        : MediaQuery.of(context).size.height *
                                            0.04,
                        left: Responsive.isDesktop(context)
                            ? MediaQuery.of(context).size.height * 0.15
                            : Responsive.isTablet(context)
                                ? MediaQuery.of(context).size.height * 0.12
                                : Responsive.isMobile(context)
                                    ? MediaQuery.of(context).size.height * 0.1
                                    : Responsive.smallMobile(context)
                                        ? MediaQuery.of(context).size.height *
                                            0.07
                                        : MediaQuery.of(context).size.height *
                                            0.04),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/new_collection.png"),
                        Padding(
                          padding: EdgeInsets.only(
                            top: Responsive.isDesktop(context)
                                ? MediaQuery.of(context).size.height * 0.09
                                : Responsive.isTablet(context)
                                    ? MediaQuery.of(context).size.height * 0.07
                                    : Responsive.isMobile(context)
                                        ? MediaQuery.of(context).size.height *
                                            0.03
                                        : Responsive.smallMobile(context)
                                            ? MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.03
                                            : MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.02,
                          ),
                          child: Image.asset(
                              "assets/images/hang_out_and_party.png"),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: Responsive.isDesktop(context)
                            ? MediaQuery.of(context).size.width * 0.3
                            : Responsive.isTablet(context)
                                ? MediaQuery.of(context).size.width * 0.28
                                : Responsive.isMobile(context)
                                    ? MediaQuery.of(context).size.width * 0.1
                                    : MediaQuery.of(context).size.width * 0.01),
                    child: Container(
                      height: double.infinity,
                      width: 114,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset("assets/images/rounded_icon.png"),
                          Image.asset("assets/images/collection_image.png")
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.height * 0.04,
                  vertical: MediaQuery.of(context).size.height * 0.05),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: HomeScreenSizes.rowHeight(context),
                    width: HomeScreenSizes.rowidth(context),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Recommended",
                          style: TextStyle(
                              fontSize: Responsive.isDesktop(context)
                                  ? 32
                                  : Responsive.isTablet(context)
                                      ? 26
                                      : Responsive.isMobile(context)
                                          ? 20
                                          : Responsive.smallMobile(context)
                                              ? 12
                                              : 9,
                              color: Color(0xff000000),
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Show All",
                          style: TextStyle(
                              fontSize: Responsive.isDesktop(context)
                                  ? 26
                                  : Responsive.isTablet(context)
                                      ? 20
                                      : Responsive.isMobile(context)
                                          ? 13
                                          : Responsive.smallMobile(context)
                                              ? 8
                                              : 6,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff9B9B9B)),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Container(
                    height:
                        HomeScreenSizes.recommendedGridContainerHeight(context),
                    width: double.infinity,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: AppConstants.images1.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(
                            right: Responsive.isDesktop(context) ? 16.0 : 8.0,
                          ),
                          child: SizedBox(
                            width:
                                HomeScreenSizes.recommendedGridContainerWidth(
                                    context),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: HomeScreenSizes
                                      .recommendedGridContainerHeight(context),
                                  width: double
                                      .infinity, // Take the full available width
                                  decoration: BoxDecoration(
                                    color: Color(0xffFFFFFF),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Row(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(12),
                                        child: Image.asset(
                                            AppConstants.images1[index]),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        height: Responsive.isDesktop(context)
                                            ? 45
                                            : 41,
                                        width: Responsive.isDesktop(context)
                                            ? 200
                                            : 134,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              AppConstants.name1[index],
                                              style: TextStyle(
                                                fontSize: HomeScreenSizes
                                                    .listViewBuilderTextFontSize(
                                                        context),
                                                color: Color(0xff1D1F22),
                                              ),
                                            ),
                                            Text(
                                              AppConstants.price1[index],
                                              style: TextStyle(
                                                  fontSize: HomeScreenSizes
                                                      .gridViewPriceFontSize(
                                                          context),
                                                  color: Color(0xff1D1F22),
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                  Container(
                    height: HomeScreenSizes.rowHeight(context),
                    width: HomeScreenSizes.rowidth(context),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Top Collection",
                          style: TextStyle(
                              fontSize: Responsive.isDesktop(context)
                                  ? 32
                                  : Responsive.isTablet(context)
                                  ? 26
                                  : Responsive.isMobile(context)
                                  ? 20
                                  : Responsive.smallMobile(context)
                                  ? 12
                                  : 9,
                              color: Color(0xff000000),
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Show All",
                          style: TextStyle(
                              fontSize: Responsive.isDesktop(context)
                                  ? 26
                                  : Responsive.isTablet(context)
                                  ? 20
                                  : Responsive.isMobile(context)
                                  ? 13
                                  : Responsive.smallMobile(context)
                                  ? 8
                                  : 6,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff9B9B9B)),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                  Container(
                    width: double.infinity,
                    height: 141,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xffF8F8FA),

                    ),
                    child: Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.03,
                    left: Responsive.isDesktop(context)?MediaQuery.of(context).size.width*0.1:Responsive.isTablet(context)?MediaQuery.of(context).size.width*0.08:Responsive.isMobile(context)?MediaQuery.of(context).size.width*0.04:Responsive.smallMobile(context)?MediaQuery.of(context).size.width*0.02:MediaQuery.of(context).size.width*0.01),),
                  )

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class ReusableComponent extends StatefulWidget {
  String text;
  double height;
  double width;
  ReusableComponent(
      {super.key,
      required this.height,
      required this.width,
      required this.text});

  @override
  State<ReusableComponent> createState() => _ReusableComponentState();
}

class _ReusableComponentState extends State<ReusableComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      child: Text(
        widget.text,
        style: TextStyle(
            fontSize: HomeScreenSizes.listViewBuilderTextFontSize(context),
            color: const Color(0xff9D9D9D)),
      ),
    );
  }
}

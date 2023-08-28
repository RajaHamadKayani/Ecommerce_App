import 'dart:async';

import 'package:ecommerce_design/utils/routes/route_name.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  navToHomeScreen(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamed(context, RouteName.homeScreen);
    });
  }

  @override
  void initState() {
    super.initState();
    navToHomeScreen(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Opacity(
              opacity: 0.8,
              child: Container(
                height: double.infinity,
                width: double.infinity,
                child: Image.asset(
                  "assets/images/splash_1.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 450,
              right: 30,
              left: 30,
              child: Column(
                children: [
                  Container(
                    height: 35,
                    width: 278,
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: Text(
                        "Welcome To Fluxstore!",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Container(
                    height: 23,
                    width: 220,
                    child: Text(
                      "The Home Of a Fashioinista",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.08,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, RouteName.homeScreen);
                    },
                    child: Container(
                      height: 56,
                      width: 201,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          border:
                              Border.all(color: Color(0xffFFFFFF), width: 1),
                          borderRadius: BorderRadius.circular(25)),
                      child: Center(
                        child: Text(
                          "Get Started",
                          style: TextStyle(color: Color(0xffffffff)),
                        ),
                      ),
                    ),
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

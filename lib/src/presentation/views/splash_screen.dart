import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spark_taxi/src/config/router/app_routes.dart';
import 'package:spark_taxi/src/utils/resources/app_icons.dart';
import '../../utils/resources/app_colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    _checkLoginStatus(context);

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(AppIcons.logo),
          Text(
            "spark",
            style: TextStyle(
              fontSize: 24.sp,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w700,
              color: AppColors.c1AD15C,
            ),
          )
        ],
      )),
    );
  }

  void _checkLoginStatus(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 2));

    if (context.mounted) {
      Navigator.pushReplacementNamed(context, RouteNames.loginPage);
    }
  }
}

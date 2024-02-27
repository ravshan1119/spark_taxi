import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:spark_taxi/src/presentation/widgets/global_button.dart';
import 'package:spark_taxi/src/presentation/widgets/global_input.dart';
import 'package:spark_taxi/src/utils/extensions/size_extension.dart';

import '../../../../config/router/app_routes.dart';
import '../../../../utils/resources/app_colors.dart';
import '../../../../utils/resources/app_icons.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 2 - 150.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(AppIcons.logo),
                const Text(
                  "spark",
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w700,
                    color: AppColors.c1AD15C,
                  ),
                )
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 2 + 80.h,
            decoration: const BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Ro’yhatdan o’tish",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w600,
                      color: AppColors.c4B5563,
                    ),
                  ),
                  50.size_h,
                  GlobalTextField(
                    hintText: "Telefon raqami",
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(14.0.h),
                      child: SvgPicture.asset(AppIcons.phone),
                    ),
                    controller: phoneController,
                    keyboardType: TextInputType.phone,
                    maskFormatter: MaskTextInputFormatter(
                        mask: '+998 ## ### ## ##',
                        filter: {"#": RegExp(r'[0-9]')},
                        type: MaskAutoCompletionType.lazy),
                  ),
                  24.size_h,
                  GlobalTextField(
                    hintText: "Parol",
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(14.0.h),
                      child: SvgPicture.asset(AppIcons.lock),
                    ),
                    suffixIcon: Padding(
                      padding: EdgeInsets.all(14.0.h),
                      child: SvgPicture.asset(AppIcons.eye),
                    ),
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                  ),
                  24.size_h,
                  GlobalTextField(
                    hintText: "Parol tasdiqlash",
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(14.0.h),
                      child: SvgPicture.asset(AppIcons.lock),
                    ),
                    suffixIcon: Padding(
                      padding: EdgeInsets.all(14.0.h),
                      child: SvgPicture.asset(AppIcons.eye),
                    ),
                    controller: confirmPasswordController,
                    keyboardType: TextInputType.visiblePassword,
                  ),
                  50.size_h,
                  GlobalButton(
                    title: "Ro’yhatdan o’tish",
                    onTap: () {
                      Navigator.pushNamed(context, RouteNames.routesPage);
                    },
                    radius: 12,
                    color: AppColors.c111827,
                    textColor: AppColors.white,
                  ),
                  GlobalButton(
                    title: "Tizimga kirish",
                    onTap: () {
                      Navigator.pushReplacementNamed(
                          context, RouteNames.loginPage);
                    },
                    radius: 12,
                    color: AppColors.white,
                    textColor: AppColors.c111827,
                  ),
                  24.size_h,
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spark_taxi/src/presentation/views/home/widgets/get_data.dart';
import 'package:spark_taxi/src/utils/extensions/size_extension.dart';
import 'package:spark_taxi/src/utils/resources/app_images.dart';

import '../../../utils/resources/app_colors.dart';
import '../../../utils/resources/app_icons.dart';
import '../../widgets/global_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
      body: Stack(
        children: [
          Positioned(
              top: 0,
              right: 0,
              left: 0,
              bottom: 0,
              child: Image.asset(
                AppImages.map,
                fit: BoxFit.cover,
              )),
          Positioned(
            top: 10.h,
            right: 0,
            left: 0,
            child: Padding(
              padding: EdgeInsets.all(24.h),
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    color: Colors.white),
                child: Padding(
                  padding: EdgeInsets.all(24.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(AppIcons.a),
                          4.size_h,
                          SvgPicture.asset(AppIcons.dot),
                          4.size_h,
                          SvgPicture.asset(AppIcons.dot),
                          4.size_h,
                          SvgPicture.asset(AppIcons.b),
                        ],
                      ),
                      24.size_w,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Text(
                                "Parkent bozori",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.c1F2937,
                                ),
                              ),
                              Container(
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4)),
                                  color: AppColors.cEEFFF4,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(AppIcons.car),
                                      4.size_w,
                                      const Text(
                                        "6 ta",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: "Montserrat",
                                          fontWeight: FontWeight.w600,
                                          color: AppColors.c1EB254,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          7.size_h,
                          SizedBox(
                            width: 250.w,
                            child: Divider(
                              height: 1.h,
                              color: AppColors.cF3F4F6,
                            ),
                          ),
                          7.size_h,
                          Row(
                            children: [
                              const Text(
                                "30-maktab",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.c1F2937,
                                ),
                              ),
                              Container(
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4)),
                                  color: AppColors.cEEFFF4,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(AppIcons.car),
                                      4.size_w,
                                      const Text(
                                        "10 ta",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: "Montserrat",
                                          fontWeight: FontWeight.w600,
                                          color: AppColors.c1EB254,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Colors.white,
              ),
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                children: [
                  24.size_h,
                  Container(
                    height: 4.h,
                    width: 56.w,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                      color: AppColors.cE5E7EB,
                    ),
                  ),
                  16.size_h,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                          color: AppColors.cE5E7EB,
                        ),
                        padding: EdgeInsets.all(16.h),
                        child: Row(
                          children: [
                            SvgPicture.asset(AppIcons.aBlack),
                            16.size_w,
                            const Text(
                              "Nuqtaga \nboraman",
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w500,
                                color: AppColors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                          color: AppColors.cE5E7EB,
                        ),
                        padding: EdgeInsets.all(16.h),
                        child: Row(
                          children: [
                            SvgPicture.asset(AppIcons.bBlack),
                            16.size_w,
                            const Text(
                              "Nuqtaga \nboraman",
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w500,
                                color: AppColors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  24.size_h,
                  GlobalButton(
                    title: "Kutyabman",
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const GetDataPage()));
                    },
                    radius: 12,
                    color: AppColors.c1AD15C,
                    textColor: AppColors.white,
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

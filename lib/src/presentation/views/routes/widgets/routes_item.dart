import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spark_taxi/src/config/router/app_routes.dart';
import 'package:spark_taxi/src/utils/extensions/size_extension.dart';
import 'package:spark_taxi/src/utils/resources/app_colors.dart';
import 'package:spark_taxi/src/utils/resources/app_icons.dart';

import '../../../../utils/constants/app_constants.dart';
import '../../../widgets/global_button.dart';
import '../../../widgets/global_input.dart';

class RoutesItem extends StatefulWidget {
  const RoutesItem({super.key});

  @override
  State<RoutesItem> createState() => _RoutesItemState();
}

class _RoutesItemState extends State<RoutesItem> {
  int selectedIndex = -1;
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(24.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GlobalTextField(
            hintText: "Yo’nalishni qidirish",
            prefixIcon: Padding(
              padding: EdgeInsets.all(14.0.h),
              child: SvgPicture.asset(AppIcons.search),
            ),
            controller: searchController,
            keyboardType: TextInputType.text,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 2 + 50.h,
            child: ListView(
              children: [
                ...List.generate(
                    dataList.length,
                    (index) => Column(
                          children: [
                            GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedIndex = index;
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: selectedIndex == index
                                            ? AppColors.c1AD15C
                                            : AppColors.cF3F4F6),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(12)),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(24.h),
                                    child: Row(
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SvgPicture.asset(AppIcons.fromPin),
                                            4.size_h,
                                            SvgPicture.asset(AppIcons.dot),
                                            4.size_h,
                                            SvgPicture.asset(AppIcons.dot),
                                            4.size_h,
                                            SvgPicture.asset(AppIcons.toPin),
                                          ],
                                        ),
                                        24.size_w,
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              dataList[index].from,
                                              style: const TextStyle(
                                                fontSize: 14,
                                                fontFamily: "Montserrat",
                                                fontWeight: FontWeight.w600,
                                                color: AppColors.c1F2937,
                                              ),
                                            ),
                                            7.size_h,
                                            SizedBox(
                                              width: 250.w,
                                              child: Divider(
                                                height: 1.h,
                                                color: AppColors.cF9FAFB,
                                              ),
                                            ),
                                            7.size_h,
                                            Text(
                                              dataList[index].to,
                                              style: const TextStyle(
                                                fontSize: 14,
                                                fontFamily: "Montserrat",
                                                fontWeight: FontWeight.w600,
                                                color: AppColors.c1F2937,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                )),
                            12.size_h,
                          ],
                        ))
              ],
            ),
          ),
          GlobalButton(
            title: "Harakatlanish",
            onTap: () {
              if (selectedIndex != -1) {
                Navigator.pushNamed(context, RouteNames.homePage);
              }
            },
            radius: 12,
            color: selectedIndex != -1 ? AppColors.c1AD15C : AppColors.cF3F4F6,
            textColor:
                selectedIndex != -1 ? AppColors.white : AppColors.cD1D5DB,
          ),
        ],
      ),
    );
  }
}

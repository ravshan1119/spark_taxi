import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spark_taxi/src/presentation/views/routes/widgets/routes_item.dart';

import 'package:spark_taxi/src/utils/resources/app_images.dart';

import '../../../utils/resources/app_colors.dart';

class RoutesPage extends StatefulWidget {
  const RoutesPage({super.key});

  @override
  State<RoutesPage> createState() => _RoutesPageState();
}

class _RoutesPageState extends State<RoutesPage> {
  TextEditingController searchController = TextEditingController();

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
              child: Image.asset(
                AppImages.mapMini,
                fit: BoxFit.cover,
              )),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Column(
              children: [
                SizedBox(
                  height: 150.h,
                ),
                Container(
                  height: MediaQuery.of(context).size.height - 150.h,
                  decoration: const BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: const RoutesItem(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension Space on num {
  SizedBox get size_h => SizedBox(height: toDouble().h);

  SizedBox get size_w => SizedBox(width: toDouble().w);
}

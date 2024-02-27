import 'package:flutter/cupertino.dart';

class AppColors {
  //-----------------MAIN-------------------------

  // static const Color primary = Color(0xFFFEBB1B);
  static const Color primary400 = Color(0xFFFEC949);
  static const Color secondary = Color(0xFFFFD300);

  //-----------------ALERT  STATUS-------------------------

  static const Color success = Color(0xFF4AED80);
  static const Color info = Color(0xFF246BFD);
  static const Color warning = Color(0xFFFACC15);
  static const Color error = Color(0xFFF75555);
  static const Color disabled = Color(0xFFD8D8D8);
  static const Color disabledButton = Color(0xFFEBAD18);

  //----------------- GREYSCALE -------------------------

  static const Color c_900 = Color(0xFF212121);
  static const Color c_800 = Color(0xFF424242);
  static const Color c_700 = Color(0xFF616161);
  static const Color c_600 = Color(0xFF757575);
  static const Color c_500 = Color(0xFF9E9E9E);
  static const Color c_400 = Color(0xFFBDBDBD);
  static const Color c_300 = Color(0xFFE0E0E0);
  static const Color c_200 = Color(0xFFEEEEEE);
  static const Color c_100 = Color(0xFFF5F5F5);
  static const Color c_50 = Color(0xFFFAFAFA);

  //----------------- GRADIENTS -------------------------

  static const Gradient gradientOrangeYellow = LinearGradient(
      begin: Alignment.centerRight,
      end: Alignment.centerLeft,
      colors: [
        Color(0xFFFEBB1B),
        Color(0xFFFFC740),
      ]);

  static const Gradient gradientBlue = LinearGradient(
      begin: Alignment.centerRight,
      end: Alignment.centerLeft,
      colors: [
        Color(0xFF335EF7),
        Color(0xFF5F82FF),
      ]);

  static const Gradient gradientPurple = LinearGradient(
      begin: Alignment.centerRight,
      end: Alignment.centerLeft,
      colors: [
        Color(0xFF7210FF),
        Color(0xFF9D59FF),
      ]);

  static const Gradient gradientYellow = LinearGradient(
      begin: Alignment.centerRight,
      end: Alignment.centerLeft,
      colors: [
        Color(0xFFFACC15),
        Color(0xFFFFE580),
      ]);

  static const Gradient gradientGreen = LinearGradient(
      begin: Alignment.centerRight,
      end: Alignment.centerLeft,
      colors: [
        Color(0xFF22BB9C),
        Color(0xFF35DEBC),
      ]);

  static const Gradient gradientRed = LinearGradient(
      begin: Alignment.centerRight,
      end: Alignment.centerLeft,
      colors: [
        Color(0xFFFF4D67),
        Color(0xFFFF8A9B),
      ]);

  //----------------- DARK COLORS -------------------------

  static const Color dark1 = Color(0xFF181A20); //04060F FAFAFA
  static const Color dark2 = Color(0xFF1F222A);
  static const Color dark3 = Color(0xFF35383F);

  //----------------- OTHERS COLORS ------------------------

  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color red = Color(0xFFF44336);
  static const Color pink = Color(0xFFE91E63);
  static const Color purple = Color(0xFF9C27B0);
  static const Color deepPurple = Color(0xFF673AB7);
  static const Color indigo = Color(0xFF3F51B5);
  static const Color blue = Color(0xFF2196F3);
  static const Color lightBlue = Color(0xFF03A9F4);
  static const Color cyan = Color(0xFF00BCD4);
  static const Color teal = Color(0xFF009688);
  static const Color green = Color(0xFF4CAF50);
  static const Color lightGreen = Color(0xFF8BC34A);
  static const Color lime = Color(0xFFCDDC39);
  static const Color yellow = Color(0xFFFFEB3B);
  static const Color amber = Color(0xFFFFC107);
  static const Color orange = Color(0xFFFF9800);
  static const Color deepOrange = Color(0xFFFF5722);
  static const Color brown = Color(0xFF795548);
  static const Color blueGrey = Color(0xFF607D8B);
  static const Color dimYellow = Color(0xFFFFE4A4);
  static const Color cardShadowTwo = Color(0xFF04060F);
  static const Color greysCale = Color(0xFFFAFAFA);

  //----------------- BACKGROUND COLORS ------------------------

  static const Color primaryBackground = Color(0xFFFEBB1B);
  static const Color purpleBackground = Color(0xFFF4ECFF);
  static const Color blueBackground = Color(0xFFF6FAFD);
  static const Color greenBackground = Color(0xFFF2FFFC);
  static const Color orangeBackground = Color(0xFFFFF8ED);
  static const Color pinkBackground = Color(0xFFFFF5F5);
  static const Color yellowBackground = Color(0xFFFFFEE0);

  //----------------- TRANSPARENT COLORS ------------------------

  static const Color primaryTransparent = Color(0x14febb1b);
  static const Color purpleTransparent = Color(0x147210ff);
  static const Color blueTransparent = Color(0x14335ef7);
  static const Color orangeTransparent = Color(0x14ff9800);
  static const Color yellowTransparent = Color(0x14facc15);
  static const Color redTransparent = Color(0x14f75555);
  static const Color greenTransparent = Color(0x144caf50);
  static const Color cyanTransparent = Color(0x1400bcd4);

  //----------------- OTHERS COLORS ------------------------
  static const Color primary = Color(0xff2c3033);
  static const Color c_f7f7 = Color(0xfff7f7f7);
  static const Color c_D9D9D9 = Color(0xffD9D9D9);
  static const Color c2c3033 = Color(0xff2c3033);
  static const Color c_c0c1 = Color(0xffc0c1c2);
  static const Color c_ffed = Color(0xffededed);
  static const Color c_0066 = Color(0xff0066FF);
  static const Color c_F8F8F8 = Color(0xffF8F8F8);
  static const Color c_E9E9E9 = Color(0xffE9E9E9);
  static const Color c_ffc = Color(0xffce3738);
  static const Color c_eeeeee = Color(0xffEEEEEE);
  static const Color c_2c3033 = Color(0xff2c3033);
  static const Color c_EAEAEB = Color(0xffEAEAEB);
  static const Color c_c1c1c1 = Color(0xffc1c1c1);
  static const Color c_ECE8DD = Color(0xffECE8DD);
  static const Color c_2c3 = Color(0xffECE8DD);
  static const Color c_B4B5B6 = Color(0xffB4B5B6);
  static const Color c_272A2B = Color(0xff272A2B);
  static Color c_ABBCC8 = const Color(0xffABBCC8).withOpacity(0.1);

  //___________________________Other colors_________________
  static const Color c1AD15C = Color(0xff1AD15C);
  static const Color c4B5563 = Color(0xff4B5563);
  static const Color c9CA3AF = Color(0xff9CA3AF);
  static const Color c111827 = Color(0xff111827);
  static const Color c6B7280 = Color(0xff6B7280);
  static const Color c1F2937 = Color(0xff1F2937);
  static const Color cE5E7EB = Color(0xffE5E7EB);
  static const Color cF3F4F6 = Color(0xffF3F4F6);
  static const Color cF9FAFB = Color(0xffF9FAFB);
  static const Color cD1D5DB = Color(0xffD1D5DB);
  static const Color cEEFFF4 = Color(0xffEEFFF4);
  static const Color c1EB254 = Color(0xff1EB254);
}

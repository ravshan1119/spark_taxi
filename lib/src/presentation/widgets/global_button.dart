import 'package:flutter/material.dart';
import '../../utils/resources/app_colors.dart';

class GlobalButton extends StatelessWidget {
  const GlobalButton({
    super.key,
    this.color = AppColors.primary,
    required this.title,
    this.radius = 16,
    this.textColor = AppColors.dark3,
    this.borderColor = Colors.transparent,
    required this.onTap,
    this.padding,
  });

  final Color color;

  final Color textColor;
  final String title;
  final double radius;
  final Color borderColor;
  final VoidCallback onTap;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding == null ? EdgeInsets.zero : padding!,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
            // boxShadow: [
            //   BoxShadow(
            //       color: AppColors.primary.withOpacity(0.3),
            //       blurRadius: 17,
            //       spreadRadius: -7,
            //       offset: const Offset(0, 6))
            // ],
            border: Border.all(color: borderColor)),
        child: Material(
          borderRadius: BorderRadius.circular(radius),
          color: color,
          child: InkWell(
            borderRadius: BorderRadius.circular(radius),
            onTap: onTap,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      overflow: TextOverflow.ellipsis,
                      title,
                      style: TextStyle(
                        fontFamily: "Urbanist",
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: textColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

class CustomCircleCard extends StatelessWidget {
  final String image;
  final Color? colorImage;
  final Color? color;
  final double height;
  final double width;
  final Function()? onPressed;

  const CustomCircleCard(
      {super.key,
      required this.image,
      this.onPressed,
      this.color = Colors.white,
      this.height = 60,
      this.width = 60,
      this.colorImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: color,
        boxShadow: [
          BoxShadow(
            color: AdaptiveTheme.of(context).mode.isLight
                ? Colors.grey.withOpacity(0.1)
                : Colors.transparent, //color of shadow
            spreadRadius: 3,
            blurRadius: 5,
            offset: const Offset(0, 3),
          )
        ],
      ),
      child: IconButton(
        icon: Image.asset(
          image,
          height: 36,
          width: 36,
          color: colorImage,
        ),
        onPressed: onPressed,
      ),
    );
  }
}

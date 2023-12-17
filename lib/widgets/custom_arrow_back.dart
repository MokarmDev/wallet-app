import 'package:flutter/material.dart';

import '../themes/colors.dart';

class CustomArrowBack extends StatelessWidget {
  const CustomArrowBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 37,
            height: 37,
            padding: const EdgeInsets.only(
              left: 2,
            ),
            decoration: BoxDecoration(
                border: Border.all(color: MyColor.arrowBackColor, width: 2),
                borderRadius: BorderRadius.circular(50)),
            child: Center(
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                  color: MyColor.arrowBackColor,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}

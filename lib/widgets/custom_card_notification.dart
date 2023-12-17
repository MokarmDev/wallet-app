import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../themes/colors.dart';
import '../themes/text_styles.dart';

class CustomCardNotification extends StatelessWidget {
  final String date;
  final String title;
  final String subTitle;
  final String image;
  final bool isNew;

  const CustomCardNotification(
      {super.key,
      required this.date,
      required this.title,
      required this.subTitle,
      required this.image,
      required this.isNew});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 310,
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1), //color of shadow
            spreadRadius: 1,
            blurRadius: 7,
            offset: const Offset(0, 2),
          )
        ],
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  date,
                  style: TextStyles.textTexStyle(color: MyColor.smallTextColor),
                ),
                const Gap(7),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        style: TextStyles.textTexStyle(color: Colors.black),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Image.asset(
                      image,
                      width: 28,
                      height: 28,
                    ),
                  ],
                ),
                const Gap(5),
                Text(
                  subTitle,
                  style: TextStyles.textTexStyle(color: MyColor.smallTextColor),
                ),
              ],
            ),
          ),
          isNew
              ? Positioned(
                  child: Align(
                    alignment: Alignment.topRight,
                    child: CircleAvatar(
                      radius: 5,
                      backgroundColor: MyColor.isNewColor,
                    ),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}

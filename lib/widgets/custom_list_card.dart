import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:wallet_app/themes/colors.dart';
import 'package:wallet_app/widgets/custom_circle_card.dart';

import '../themes/text_styles.dart';

class CustomListCard extends StatelessWidget {
  final Color? colorCard;
  final String? image;
  final Color? colorImage;
  final String title;
  final String? subTitle;
  final double? price;
  final double? height;
  final double? width;
  final Icon? iconButton;

  const CustomListCard({
    super.key,
    this.colorCard,
    required this.title,
    this.subTitle,
    this.price,
    this.image,
    this.height,
    this.width,
    this.iconButton,
    this.colorImage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CustomCircleCard(
                image: image ?? '',
                color: colorCard,
                colorImage: colorImage,
                height: height ?? 0,
                width: width ?? 0,
              ),
              const Gap(20),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyles.textTexStyle(
                      color: MyColor.secondaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  subTitle != null
                      ? Text(
                          subTitle ?? '',
                          style: TextStyles.textTexStyle(
                            color: MyColor.smallTextColor,
                            fontSize: 13,
                          ),
                        )
                      : const SizedBox(),
                ],
              ),
            ],
          ),
          price != null
              ? Text(
                  '\$$price',
                  style: TextStyles.textTexStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                )
              : iconButton ??
                  Icon(
                    Icons.arrow_forward_ios,
                    color: MyColor.arrowForwardColor,
                    size: 14,
                  ),
        ],
      ),
    );
  }
}

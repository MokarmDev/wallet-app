import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:wallet_app/screens/detail_card_screen.dart';
import 'package:wallet_app/screens/notification_screen.dart';
import 'package:wallet_app/screens/profile_screen.dart';
import 'package:wallet_app/themes/colors.dart';
import 'package:wallet_app/widgets/custom_circle_card.dart';
import 'package:wallet_app/widgets/custom_list_card.dart';

import '../themes/text_styles.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Gap(40),
              Center(
                child: Text(
                  'Settings',
                  style: TextStyles.titleTexStyle(
                    fontSize: 24,
                  ),
                ),
              ),
              const Gap(40),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const ProfileView()));
                },
                child: CustomListCard(
                  colorCard: Colors.white,
                  title: 'Profile',
                  image: 'assets/icons/user.png',
                  colorImage: MyColor.secondaryColor,
                  height: 44,
                  width: 44,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const NotificationView(
                                isSetting: true,
                              )));
                },
                child: CustomListCard(
                  colorCard: Colors.white,
                  title: 'Notifications',
                  image: 'assets/icons/notification_setting.png',
                  colorImage: MyColor.secondaryColor,
                  height: 44,
                  width: 44,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const DetailCardView()));
                },
                child: CustomListCard(
                  colorCard: Colors.white,
                  title: 'Your Wallet',
                  image: 'assets/icons/wallet.png',
                  colorImage: MyColor.secondaryColor,
                  height: 44,
                  width: 44,
                ),
              ),
              CustomListCard(
                colorCard: Colors.white,
                title: 'Login Settings',
                image: 'assets/icons/password.png',
                colorImage: MyColor.secondaryColor,
                height: 44,
                width: 44,
              ),
              CustomListCard(
                colorCard: Colors.white,
                title: 'Service Center',
                image: 'assets/icons/call.png',
                colorImage: MyColor.secondaryColor,
                height: 44,
                width: 44,
              ),
              const Gap(90),
              InkWell(
                onTap: () {
                  exit(0);
                },
                child: const CustomCircleCard(
                  image: 'assets/icons/logout.png',
                  height: 65,
                  width: 65,
                ),
              ),
              const Gap(15),
              Text(
                'Log Out',
                style: TextStyles.textTexStyle(
                  color: MyColor.primaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

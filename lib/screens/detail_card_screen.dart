import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../themes/colors.dart';
import '../themes/text_styles.dart';
import '../widgets/custom_appBar.dart';

class DetailCardView extends StatelessWidget {
  const DetailCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: CustomAppBar(),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Gap(30),
              Center(
                child: Text(
                  'Detail Card',
                  style: TextStyles.titleTexStyle(
                    fontSize: 24,
                  ),
                ),
              ),
              const Gap(30),
              const CardSquare(),
              const Gap(70),
              const Column(
                children: [
                  ListInfo(title: 'Name', subTitle: 'Mokarm Mohammed'),
                  Gap(12),
                  ListInfo(title: 'Bank', subTitle: 'Mabank'),
                  Gap(12),
                  ListInfo(title: 'Account', subTitle: '.... .... .... 2138'),
                  Gap(12),
                  ListInfo(title: 'Status', subTitle: 'Active'),
                  Gap(12),
                  ListInfo(title: 'Valid', subTitle: '2020 - 2025')
                ],
              ),
              const Gap(80),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Delete Card',
                    style: TextStyles.textTexStyle(
                      color: Colors.redAccent,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

class CardSquare extends StatelessWidget {
  const CardSquare({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 311,
      height: 220,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(45), color: MyColor.primaryColor),
      child: Stack(
        children: [
          Positioned(
            top: 100,
            right: 180,
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                height: 170,
                width: 170,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffD71CDB), width: 3),
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 123,
            left: 212,
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                  color: Color(0xff6E34B8),
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 250,
            left: 180,
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color(0xff9038FF), width: 2),
                    shape: BoxShape.circle),
              ),
            ),
          ),
          Positioned(
            top: 40,
            left: 230,
            child: Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                'assets/icons/sim.png',
                width: 40,
                height: 40,
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            left: 20,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Image.asset(
                'assets/icons/visa.png',
                height: 20,
                width: 80,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ListInfo extends StatelessWidget {
  final String title;
  final String subTitle;

  const ListInfo({super.key, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyles.textTexStyle(
              color: MyColor.smallTextColor,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            subTitle,
            style: TextStyles.textTexStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:wallet_app/themes/colors.dart';
import 'package:wallet_app/themes/text_styles.dart';

import '../widgets/custom_appBar.dart';

class AddCardPaymentView extends StatelessWidget {
  const AddCardPaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: [
            const Gap(30),
            Center(
              child: Text(
                'Add Card',
                style: TextStyles.titleTexStyle(
                  fontSize: 24,
                ),
              ),
            ),
            const Gap(30),
            const CardPayment(),
            const Gap(70),
            Text(
              'Add a new card \n on your wallet for easy life',
              style: TextStyles.textTexStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class CardPayment extends StatelessWidget {
  const CardPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      height: 340,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(45), color: MyColor.primaryColor),
      child: Stack(
        children: [
          Positioned(
            top: 200,
            left: 120,
            child: Align(
              alignment: Alignment.bottomRight,
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
            bottom: 225,
            right: 120,
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: 120,
                height: 120,
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
            top: 80,
            left: 50,
            child: Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                'assets/icons/sim.png',
                width: 40,
                height: 40,
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            left: 150,
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

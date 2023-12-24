import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:wallet_app/screens/add_card_payment_screen.dart';
import 'package:wallet_app/screens/detail_card_screen.dart';
import 'package:wallet_app/themes/colors.dart';
import 'package:wallet_app/themes/text_styles.dart';
import 'package:wallet_app/widgets/custom_circle_card.dart';

import '../widgets/custom_builder_list_payment.dart';
import '../widgets/custom_section_title.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(150),
        child: BuildAppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: TopCard(),
            ),
            const SliverToBoxAdapter(
              child: Gap(25),
            ),
            SliverToBoxAdapter(
              child: Row(
                children: [
                  Column(
                    children: [
                      CustomCircleCard(
                        image: 'assets/icons/add_circle.png',
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const AddCardPaymentView()));
                        },
                      ),
                      const Gap(15),
                      Text(
                        'Top up',
                        style: TextStyles.textTexStyle(
                          color: MyColor.purpleColor,
                          fontSize: 13,
                        ),
                      )
                    ],
                  ),
                  const Gap(40),
                  Column(
                    children: [
                      CustomCircleCard(
                        image: 'assets/icons/transfer.png',
                        onPressed: () {},
                      ),
                      const Gap(15),
                      Text(
                        'Transfer',
                        style: TextStyles.textTexStyle(
                          color: MyColor.purpleColor,
                          fontSize: 13,
                        ),
                      )
                    ],
                  ),
                  const Gap(40),
                  Column(
                    children: [
                      CustomCircleCard(
                        image: 'assets/icons/export.png',
                        onPressed: () {},
                      ),
                      const Gap(15),
                      Text(
                        'Payment',
                        style: TextStyles.textTexStyle(
                          color: MyColor.purpleColor,
                          fontSize: 13,
                        ),
                      )
                    ],
                  ),
                  const Gap(40),
                  Expanded(
                    child: Column(
                      children: [
                        CustomCircleCard(
                          image: 'assets/icons/money.png',
                          onPressed: () {},
                        ),
                        const Gap(15),
                        Text(
                          'Payout',
                          style: TextStyles.textTexStyle(
                            color: MyColor.purpleColor,
                            fontSize: 13,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SliverToBoxAdapter(
              child: Gap(25),
            ),
            SliverToBoxAdapter(
              child: CustomSectionTitle(
                title: 'Last Transaction',
                subTitle: 'View All',
                onTap: () {},
              ),
            ),
            const SliverToBoxAdapter(
              child: Gap(25),
            ),
            const CustomBuilderCardPayment(),
          ],
        ),
      ),
    );
  }
}

class BuildAppBar extends StatelessWidget {
  const BuildAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(70),
              Text(
                'Wallet',
                style: TextStyles.titleTexStyle(
                  fontSize: 24,
                ),
              ),
              Text(
                'Active',
                style: TextStyles.textTexStyle(
                  color: MyColor.activeColor,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          const CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/images/profile.png'),
          )
        ],
      ),
    );
  }
}

class TopCard extends StatelessWidget {
  const TopCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => const DetailCardView()));
      },
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        height: 160,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: MyColor.primaryColor),
        child: Stack(
          children: [
            Positioned(
              top: 50,
              left: 235,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    border: Border.all(color: MyColor.purpleColor, width: 3),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 33,
              bottom: 113,
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Color(0xff6E34B8),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
            Positioned(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Balance',
                        style: TextStyles.textTexStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        '\$ 1.234',
                        style: TextStyles.textTexStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Card',
                        style: TextStyles.textTexStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        'Mabank',
                        style: TextStyles.textTexStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

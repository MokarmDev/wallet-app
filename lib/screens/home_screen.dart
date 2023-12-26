import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:wallet_app/screens/add_card_payment_screen.dart';
import 'package:wallet_app/screens/detail_card_screen.dart';
import 'package:wallet_app/themes/colors.dart';
import 'package:wallet_app/themes/text_styles.dart';

import '../widgets/custom_builder_list_payment.dart';
import '../widgets/custom_button_toggle.dart';
import '../widgets/custom_process_card.dart';
import '../widgets/custom_section_title.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CustomButtonToggle(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: BuildTopAppBar(),
            ),
            const SliverToBoxAdapter(
              child: TopCard(),
            ),
            const SliverToBoxAdapter(
              child: Gap(25),
            ),
            SliverList.list(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: CustomProcessCard(
                        imagePath: 'assets/icons/add_circle.png',
                        title: 'Top up',
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const AddCardPaymentView()));
                        },
                      ),
                    ),
                    const Gap(40),
                    const Expanded(
                      child: CustomProcessCard(
                          imagePath: 'assets/icons/transfer.png',
                          title: 'Transfer'),
                    ),
                    const Gap(40),
                    const Expanded(
                      child: CustomProcessCard(
                          imagePath: 'assets/icons/export.png',
                          title: 'Payment'),
                    ),
                    const Gap(40),
                    const Expanded(
                      child: CustomProcessCard(
                          imagePath: 'assets/icons/money.png', title: 'Payout'),
                    ),
                  ],
                ),
              ],
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

class BuildTopAppBar extends StatelessWidget {
  const BuildTopAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Wallet',
                style: TextStyles.titleTexStyle(
                  color: AdaptiveTheme.of(context).mode.isLight
                      ? MyColor.primaryColor
                      : Colors.white,
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
          ),
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
            color: AdaptiveTheme.of(context).mode.isLight
                ? MyColor.primaryColor
                : Colors.white12),
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
                    border: Border.all(
                        color: AdaptiveTheme.of(context).mode.isLight
                            ? MyColor.purpleColor
                            : Colors.white12,
                        width: 3),
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
                  decoration: BoxDecoration(
                    color: AdaptiveTheme.of(context).mode.isLight
                        ? const Color(0xff6E34B8)
                        : Colors.white12,
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

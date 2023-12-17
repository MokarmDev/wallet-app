import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:wallet_app/themes/colors.dart';
import 'package:wallet_app/widgets/custom_section_title.dart';

import '../themes/text_styles.dart';
import '../widgets/custom_builder_list_payment.dart';

class IncomeStatsView extends StatefulWidget {
  const IncomeStatsView({super.key});

  @override
  State<IncomeStatsView> createState() => _IncomeStatsViewState();
}

class _IncomeStatsViewState extends State<IncomeStatsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Income Stats',
          style: TextStyles.titleTexStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: Gap(30),
            ),
            SliverToBoxAdapter(child: Image.asset('assets/images/chart.png')),
            const SliverToBoxAdapter(
              child: Gap(15),
            ),
            SliverToBoxAdapter(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Oct',
                  style: TextStyles.textTexStyle(color: MyColor.smallTextColor),
                ),
                Text(
                  'Oct',
                  style: TextStyles.textTexStyle(color: MyColor.smallTextColor),
                ),
                Text(
                  'Dec',
                  style: TextStyles.textTexStyle(color: MyColor.smallTextColor),
                ),
                Text(
                  'Jan',
                  style: TextStyles.textTexStyle(color: MyColor.smallTextColor),
                ),
                Text(
                  'Feb',
                  style: TextStyles.textTexStyle(color: MyColor.smallTextColor),
                ),
              ],
            )),
            const SliverToBoxAdapter(
              child: Gap(50),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Text(
                    'Total Balance',
                    style: TextStyles.textTexStyle(
                      color: MyColor.smallTextColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    '\$ 13.248',
                    style: TextStyles.textTexStyle(
                      color: MyColor.purpleColor,
                      fontSize: 36,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            const SliverToBoxAdapter(
              child: Gap(50),
            ),
            const SliverToBoxAdapter(
              child:
                  CustomSectionTitle(title: 'Transaction', subTitle: 'Latest'),
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

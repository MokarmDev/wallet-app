import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../themes/colors.dart';
import '../themes/text_styles.dart';
import '../widgets/custom_arrow_back.dart';
import '../widgets/custom_card_notification.dart';

class NotificationView extends StatelessWidget {
  final bool? isSetting;

  const NotificationView({super.key, this.isSetting = false});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        leading: isSetting! ? const CustomArrowBack() : const SizedBox(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Center(
                child: Text(
                  'Notification',
                  style: TextStyles.titleTexStyle(
                    color: AdaptiveTheme.of(context).mode.isLight
                        ? MyColor.primaryColor
                        : Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: Gap(30),
            ),
            SliverToBoxAdapter(
              child: Center(
                child: Text(
                  'New',
                  style: TextStyles.titleTexStyle(
                    color: AdaptiveTheme.of(context).mode.isLight
                        ? MyColor.secondaryColor
                        : Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: Gap(10),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  const CustomCardNotification(
                    date: '29 June 2021, 7.14 PM',
                    title: 'You received Rp 100.000 from Alexandr Gibson Jogja',
                    subTitle: '‘Pay debt’',
                    image: 'assets/icons/arrow_green.png',
                    isNew: true,
                  ),
                  const CustomCardNotification(
                    date: '29 June 2021, 9.02 AM',
                    title:
                        'You spent Rp 32.000 for Coffe Cetar back Tugu Sentral',
                    subTitle: '‘Buy drink’',
                    image: 'assets/icons/arrow_red.png',
                    isNew: true,
                  ),
                  Center(
                    child: Text(
                      'Recent',
                      style: TextStyles.titleTexStyle(
                        color: AdaptiveTheme.of(context).mode.isLight
                            ? MyColor.secondaryColor
                            : Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const Gap(10),
                  const CustomCardNotification(
                    date: '28 June 2021, 8.32 PM',
                    title: 'You spent Rp 210.000 for pay Tokosbla ijo mera',
                    subTitle: '‘Buy items’',
                    image: 'assets/icons/arrow_red.png',
                    isNew: false,
                  ),
                  const CustomCardNotification(
                    date: '28 June 2021, 8.32 PM',
                    title: 'You spent Rp 210.000 for pay Tokosbla ijo mera',
                    subTitle: '‘Buy items’',
                    image: 'assets/icons/arrow_red.png',
                    isNew: false,
                  ),
                  const CustomCardNotification(
                    date: '28 June 2021, 8.32 PM',
                    title: 'You spent Rp 210.000 for pay Tokosbla ijo mera',
                    subTitle: '‘Buy items’',
                    image: 'assets/icons/arrow_red.png',
                    isNew: false,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:wallet_app/widgets/custom_list_card.dart';

import '../model/card_model.dart';

class CustomBuilderCardPayment extends StatelessWidget {
  const CustomBuilderCardPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: cardList.length,
      itemBuilder: (context, index) {
        return CustomListCard(
          colorCard: cardList[index].colorCard,
          title: cardList[index].title,
          subTitle: cardList[index].subTitle,
          price: cardList[index].price,
          image: cardList[index].image,
          width: 39,
          height: 39,
        );
      },
    );
  }
}

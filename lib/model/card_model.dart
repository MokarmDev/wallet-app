import 'package:flutter/material.dart';

class CardModel {
  final Color colorCard;
  final String image;
  final String title;
  final String subTitle;
  final double price;

  CardModel(this.colorCard, this.image, this.title, this.subTitle, this.price);
}

List<CardModel> cardList = [
  CardModel(Colors.black, 'assets/icons/netflix.png', 'Netflix',
      'Month subscription', 12),
  CardModel(Colors.white, 'assets/icons/paypal.png', 'Paypal', 'Tax', 10),
  CardModel(const Color(0xff24beef), 'assets/icons/paylater.png', 'Paylater',
      'Buy item', 2),
];

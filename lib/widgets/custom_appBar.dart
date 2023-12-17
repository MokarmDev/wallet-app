import 'package:flutter/material.dart';

import 'custom_arrow_back.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const CustomArrowBack(),
      backgroundColor: Colors.white,
      scrolledUnderElevation: 0,
    );
  }
}

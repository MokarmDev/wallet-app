import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

class CustomButtonToggle extends StatefulWidget {
  const CustomButtonToggle({super.key});

  @override
  State<CustomButtonToggle> createState() => _CustomButtonToggleState();
}

class _CustomButtonToggleState extends State<CustomButtonToggle> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          setState(() {
            value = !value;
          });
          value
              ? AdaptiveTheme.of(context).setLight()
              : AdaptiveTheme.of(context).setDark();
        },
        icon: Icon(value ? Icons.dark_mode : Icons.sunny));
  }
}

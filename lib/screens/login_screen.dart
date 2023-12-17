import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:wallet_app/screens/main_view.dart';
import 'package:wallet_app/screens/sign_up%20_screen.dart';
import 'package:wallet_app/themes/colors.dart';
import 'package:wallet_app/themes/text_styles.dart';
import 'package:wallet_app/widgets/custom_container.dart';
import 'package:wallet_app/widgets/input_decorations.dart';

import '../widgets/custom_button.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool obscureText = true;
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Gap(90),
                SizedBox(
                  width: 250,
                  height: 100,
                  child: Text(
                    'Welcome back  \n to Mabank Wallet',
                    style: TextStyles.titleTexStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const Gap(30),
                Text(
                  'Sign up with',
                  style: TextStyles.textTexStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                    color: MyColor.smallTextColor,
                  ),
                ),
                const Gap(22),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomContainer(
                      color: Colors.white,
                      imagePath: 'assets/images/google.png',
                      text: 'Google',
                      textColor: MyColor.smallTextColor,
                    ),
                    const Gap(20),
                    const CustomContainer(
                      color: Color(0xff4368C7),
                      imagePath: 'assets/images/facebook.png',
                      text: 'Facebook',
                      textColor: Colors.white,
                    ),
                  ],
                ),
                const Gap(30),
                TextFormField(
                  controller: userNameController,
                  style: TextStyle(color: MyColor.styleTextFieldColor),
                  decoration: InputDecorations.buildInputDecoration(
                      hintText: 'Username',
                      prefixIconPath: 'assets/icons/user.png'),
                  keyboardType: TextInputType.name,
                ),
                const Gap(20),
                TextFormField(
                  controller: passwordController,
                  style: TextStyle(color: MyColor.styleTextFieldColor),
                  decoration: InputDecorations.buildInputDecoration(
                          hintText: 'Password',
                          prefixIconPath: 'assets/icons/password.png')
                      .copyWith(
                    suffixIcon: IconButton(
                      icon: Icon(
                        obscureText ? Icons.visibility_off : Icons.visibility,
                        color: MyColor.styleTextFieldColor,
                      ),
                      onPressed: () {
                        setState(() {
                          obscureText = !obscureText;
                        });
                      },
                    ),
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: obscureText,
                ),
                const Gap(60),
                CustomButton(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (_) => const MainView()),
                        (route) => false);
                  },
                  text: 'Login',
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account yet ?',
                      style: TextStyles.textTexStyle(
                          color: MyColor.smallTextColor),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const SignUpView()));
                      },
                      child: Text('Register',
                          style: TextStyles.textTexStyle(
                              color: MyColor.primaryColor)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

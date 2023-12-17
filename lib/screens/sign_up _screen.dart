import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:wallet_app/themes/colors.dart';
import 'package:wallet_app/themes/text_styles.dart';
import 'package:wallet_app/widgets/custom_container.dart';
import 'package:wallet_app/widgets/input_decorations.dart';

import '../widgets/custom_button.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  bool obscureText = true;
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
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
                  width: 300,
                  height: 130,
                  child: Text(
                    'Immediately feel the \n ease of transacting just \n by registering',
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
                  controller: emailController,
                  style: TextStyle(color: MyColor.styleTextFieldColor),
                  decoration: InputDecorations.buildInputDecoration(
                      hintText: 'Email',
                      prefixIconPath: 'assets/icons/email.png'),
                  keyboardType: TextInputType.emailAddress,
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
                    userNameController.text = '';
                    passwordController.text = '';
                    emailController.text = '';
                  },
                  text: 'Register',
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'You have account ?',
                      style: TextStyles.textTexStyle(
                          color: MyColor.smallTextColor),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Login',
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

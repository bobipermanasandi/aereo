import 'package:aereo/ui/pages/bonus_page.dart';
import 'package:flutter/material.dart';

import '../../shared/themes.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_textformfield.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _hobbyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          children: [
            Container(
              margin: const EdgeInsets.only(top: 30),
              child: Text(
                'Join us and get\nyour next journey',
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: semiBold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30),
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 30,
              ),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  CustomTextFormField(
                    controller: _nameController,
                    labelText: 'FullName',
                    hintText: 'Your full name',
                  ),
                  CustomTextFormField(
                    controller: _emailController,
                    labelText: 'Email Adderss',
                    hintText: 'Your email address',
                    isEmail: true,
                  ),
                  CustomTextFormField(
                    controller: _passwordController,
                    labelText: 'Password',
                    hintText: 'Your password',
                    obscureText: true,
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: CustomTextFormField(
                      controller: _hobbyController,
                      labelText: 'Hobby',
                      hintText: 'Your hobby',
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: CustomButtonWidget(
                      text: 'Get Started',
                      onPressed: () {
                        if (_nameController.text.isNotEmpty) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BonusPage(
                                fullname: _nameController.text,
                              ),
                            ),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Fill in your full name first'),
                            ),
                          );
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(top: 50, bottom: 80),
              child: Text(
                'Terms and Conditions',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: light,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

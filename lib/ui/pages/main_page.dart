import 'package:flutter/material.dart';

import '../../shared/themes.dart';
import '../widgets/custom_nav_item.dart';
import 'home_page.dart';

class MainPage extends StatelessWidget {
  final String fullname;
  const MainPage({
    super.key,
    required this.fullname,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          HomePage(
            fullname: fullname,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: 60,
              margin: EdgeInsets.only(
                bottom: 30,
                left: defaultMargin,
                right: defaultMargin,
              ),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(18),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomNavItem(
                    imgIcon: 'assets/icons/ic_home.png',
                    isSelected: true,
                  ),
                  CustomNavItem(
                    imgIcon: 'assets/icons/ic_book.png',
                  ),
                  CustomNavItem(
                    imgIcon: 'assets/icons/ic_payment.png',
                  ),
                  CustomNavItem(
                    imgIcon: 'assets/icons/ic_settings.png',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

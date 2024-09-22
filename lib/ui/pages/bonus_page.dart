import 'package:aereo/ui/pages/main_page.dart';
import 'package:flutter/material.dart';

import '../../shared/themes.dart';
import '../widgets/custom_button.dart';

class BonusPage extends StatelessWidget {
  final String fullname;
  const BonusPage({
    super.key,
    required this.fullname,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _CardWidget(
                cardName: fullname,
                nominal: 'IDR 280.000.000',
              ),
              Container(
                margin: const EdgeInsets.only(top: 80),
                child: Text(
                  'Big Bonus 🎉',
                  style: blackTextStyle.copyWith(
                    fontSize: 32,
                    fontWeight: semiBold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: Text(
                  'We give you early credit so that\nyou can buy a flight ticket',
                  style: greyTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: light,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 50),
                child: CustomButtonWidget(
                  width: 220,
                  text: 'Start Fly Now',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MainPage(
                          fullname: fullname,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CardWidget extends StatelessWidget {
  final String cardName;
  final String nominal;
  const _CardWidget({
    required this.cardName,
    required this.nominal,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 211,
      padding: EdgeInsets.all(defaultMargin),
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage('assets/card.png'),
        ),
        boxShadow: [
          BoxShadow(
            color: kPrimaryColor.withOpacity(0.5),
            blurRadius: 50,
            offset: const Offset(0, 10),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name',
                      style: whiteTextStyle.copyWith(fontWeight: light),
                    ),
                    Text(
                      cardName,
                      style: whiteTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: medium,
                      ),
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
              ),
              Container(
                width: 24,
                height: 24,
                margin: const EdgeInsets.only(right: 8),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/logo.png',
                    ),
                  ),
                ),
              ),
              Text(
                'Pay',
                style: whiteTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Balance',
                style: whiteTextStyle.copyWith(fontWeight: light),
              ),
              Text(
                nominal,
                style: whiteTextStyle.copyWith(
                  fontSize: 26,
                  fontWeight: medium,
                ),
                overflow: TextOverflow.ellipsis,
              )
            ],
          ),
        ],
      ),
    );
  }
}

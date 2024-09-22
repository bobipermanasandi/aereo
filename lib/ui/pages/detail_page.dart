import 'package:aereo/shared/routes.dart';
import 'package:flutter/material.dart';

import '../../shared/themes.dart';
import '../widgets/custom_button.dart';
import '../widgets/interest_item.dart';
import '../widgets/photo_item.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: const SingleChildScrollView(
        child: Stack(
          children: [
            _BackgroundImage(),
            _CustomShadow(),
            _ContentDetail(),
          ],
        ),
      ),
    );
  }
}

class _BackgroundImage extends StatelessWidget {
  const _BackgroundImage();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 450,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/img_destination1.png',
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class _CustomShadow extends StatelessWidget {
  const _CustomShadow();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 214,
      margin: const EdgeInsets.only(top: 236),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            kWhiteColor.withOpacity(0),
            Colors.black.withOpacity(0.95),
          ],
        ),
      ),
    );
  }
}

class _ContentDetail extends StatelessWidget {
  const _ContentDetail();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: defaultMargin),
      child: Column(
        children: [
          // NOTE : EMBLEM
          Container(
            width: 108,
            height: 24,
            margin: const EdgeInsets.only(top: 30),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icons/ic_emblem.png'),
              ),
            ),
          ),

          // NOTE : TITILE
          Container(
            margin: const EdgeInsets.only(top: 256),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lake Ciliwung',
                        style: whiteTextStyle.copyWith(
                          fontSize: 24,
                          fontWeight: semiBold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        'Tangerang',
                        style: whiteTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: light,
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      margin: const EdgeInsets.only(right: 2),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/icons/ic_star.png',
                          ),
                        ),
                      ),
                    ),
                    Text(
                      '4.8',
                      style: whiteTextStyle.copyWith(fontWeight: medium),
                    )
                  ],
                )
              ],
            ),
          ),

          // NOTE : DESCRIPTION
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 30),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // NOTE : ABOUT
                Container(
                  margin: const EdgeInsets.only(bottom: 6),
                  child: Text(
                    'About',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                ),
                Text(
                  'Berada di jalur jalan provinsi yang menghubungkan Denpasar Singaraja serta letaknya yang dekat dengan Kebun Raya Eka Karya menjadikan tempat Bali.',
                  style: blackTextStyle.copyWith(height: 2),
                ),

                // NOTE : ABOUT
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 6),
                  child: Text(
                    'Photos',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                ),
                const Row(
                  children: [
                    PhotoItem(imageUrl: 'assets/images/img_photo1.png'),
                    PhotoItem(imageUrl: 'assets/images/img_photo2.png'),
                    PhotoItem(imageUrl: 'assets/images/img_photo3.png'),
                  ],
                ),

                // NOTE : INTEREST
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 6),
                  child: Text(
                    'Interest',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                ),
                const Row(
                  children: [
                    InterestItem(text: 'Kids Park'),
                    InterestItem(text: 'Honor Bridge'),
                  ],
                ),
                const SizedBox(height: 10),
                const Row(
                  children: [
                    InterestItem(text: 'City Museum'),
                    InterestItem(text: 'Central Mall'),
                  ],
                ),
              ],
            ),
          ),

          // NOTE : PRICE & BOOK NOW
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(vertical: 30),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'IDR 2.500.000',
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: medium,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'per orang',
                        style: greyTextStyle.copyWith(
                          fontWeight: light,
                        ),
                      )
                    ],
                  ),
                ),
                CustomButtonWidget(
                  width: 170,
                  text: 'Book Now',
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      successCheckoutPage,
                      (route) => false,
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

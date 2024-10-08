import 'package:flutter/material.dart';

import '../../shared/themes.dart';

class InterestItem extends StatelessWidget {
  final String text;
  const InterestItem({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            margin: const EdgeInsets.only(right: 8),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/icons/ic_check.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            text,
            style: blackTextStyle,
          )
        ],
      ),
    );
  }
}

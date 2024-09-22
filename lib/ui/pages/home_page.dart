import 'package:flutter/material.dart';

import '../../shared/themes.dart';
import '../widgets/destination_card.dart';
import '../widgets/destination_tile.dart';

class HomePage extends StatelessWidget {
  final String fullname;
  const HomePage({
    super.key,
    required this.fullname,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _HeaderHome(fullname),
        const _PopularDestination(),
        const _NewDestination(),
      ],
    );
  }
}

class _HeaderHome extends StatelessWidget {
  final String fullname;
  const _HeaderHome(this.fullname);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: defaultMargin,
        right: defaultMargin,
        top: 30,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 6),
                  child: Text(
                    'Howdy,\n$fullname',
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  'Where to fly today?',
                  style: greyTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: light,
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/images/img_avatar.png'),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _PopularDestination extends StatelessWidget {
  const _PopularDestination();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: const SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            DestinationCard(
              name: 'Lake Ciliwung',
              city: 'Tangerang',
              imageUrl: 'assets/images/img_destination1.png',
              rating: 4.8,
            ),
            DestinationCard(
              name: 'White House',
              city: 'Spain',
              imageUrl: 'assets/images/img_destination2.png',
              rating: 4.7,
            ),
            DestinationCard(
              name: 'Hill Heyo',
              city: 'Monaco',
              imageUrl: 'assets/images/img_destination3.png',
              rating: 4.9,
            ),
            DestinationCard(
              name: 'Menarra',
              city: 'Japan',
              imageUrl: 'assets/images/img_destination4.png',
              rating: 4.5,
            ),
            DestinationCard(
              name: 'Payung Teduh',
              city: 'Singapore',
              imageUrl: 'assets/images/img_destination5.png',
              rating: 5.0,
            ),
          ],
        ),
      ),
    );
  }
}

class _NewDestination extends StatelessWidget {
  const _NewDestination();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 30,
        left: defaultMargin,
        right: defaultMargin,
        bottom: 100,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'New This Year',
            style: blackTextStyle.copyWith(
              fontSize: 18,
              fontWeight: semiBold,
            ),
          ),
          const DestinationTile(
            name: 'Danau Beratan',
            city: 'Singajara',
            imageUrl: 'assets/images/img_destination6.png',
            rating: 4.5,
          ),
          const DestinationTile(
            name: 'Sydney Opera',
            city: 'Australia',
            imageUrl: 'assets/images/img_destination7.png',
            rating: 4.7,
          ),
          const DestinationTile(
            name: 'Roma',
            city: 'Italy',
            imageUrl: 'assets/images/img_destination8.png',
            rating: 4.8,
          ),
          const DestinationTile(
            name: 'Payung Teduh',
            city: 'Singapore',
            imageUrl: 'assets/images/img_destination9.png',
            rating: 4.8,
          ),
          const DestinationTile(
            name: 'Hill Hey',
            city: 'Monaco',
            imageUrl: 'assets/images/img_destination10.png',
            rating: 5.0,
          ),
        ],
      ),
    );
  }
}

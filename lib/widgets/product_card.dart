import 'package:flutter/material.dart';
import 'package:uitocode/themes/chatty_themes.dart';
import 'package:uitocode/themes/shoes_themes.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 215,
      height: 278,
      margin: EdgeInsets.only(
        right: 30,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: primaryTextColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/shoes.png',
            width: 215,
            height: 120,
            fit: BoxFit.cover,
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: defaultMargin),
                Text(
                  'Hiking',
                  style: secondaryTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: light,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  'TERREX URBAN LOW',
                  style: primaryTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semibold,
                    color: blackColor,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  '\$58,98',
                  style: priceTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

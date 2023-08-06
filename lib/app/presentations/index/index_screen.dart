import 'package:buddyjet/app/components/shimmers/shimmer_square.dart';
import 'package:buddyjet/app/config/constants/constant_lib.dart';
import 'package:buddyjet/app/config/design_system/ui_spacing.dart';
import 'package:buddyjet/app/presentations/dashboard/components/wallet.dart';
import 'package:buddyjet/gen/colors.gen.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class IndexScreen extends StatelessWidget {
  const IndexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final wallets = [
      'Rp. 233.864.539',
      'Rp. 912.111',
      'Rp. 431.864.539',
    ];
    return Scaffold(
      backgroundColor: ColorName.emerald.shade50,
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UISpacing.height20,
            Container(
              margin: UISpacing.paddingHorizontal20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hello, Agil',
                    style: TextStyle(
                      color: Colors.grey.shade800,
                      fontWeight: FontWeight.w800,
                      fontSize: 30,
                    ),
                  ),
                  CachedNetworkImage(
                    imageUrl: Constants.defaultAvatar,
                    imageBuilder: (context, imageProvider) => CircleAvatar(
                      backgroundImage: imageProvider,
                      radius: 20,
                    ),
                    placeholder: (context, url) =>
                        const ShimmerCircle(size: 40),
                  ),
                ],
              ),
            ),
            UISpacing.height10,
            SizedBox(
              height: 250,
              child: Swiper(
                itemCount: wallets.length,
                pagination: SwiperPagination(
                  builder: DotSwiperPaginationBuilder(
                    size: 6,
                    activeSize: 6,
                    activeColor: ColorName.jet,
                    color: ColorName.emerald.shade200,
                  ),
                ),
                layout: SwiperLayout.TINDER,
                itemWidth: double.infinity,
                itemHeight: double.infinity,
                itemBuilder: (context, index) => Wallet(value: wallets[index]),
              ),
            ),
            UISpacing.height20,
          ],
        ),
      ),
    );
  }
}

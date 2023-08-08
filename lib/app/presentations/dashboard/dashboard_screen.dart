import 'package:buddyjet/app/components/scaffolds/default_scaffold.dart';
import 'package:buddyjet/app/components/shimmers/shimmer_square.dart';
import 'package:buddyjet/app/config/constants/constant_lib.dart';
import 'package:buddyjet/app/config/design_system/ui_radius.dart';
import 'package:buddyjet/app/config/design_system/ui_spacing.dart';
import 'package:buddyjet/app/presentations/dashboard/components/wallet.dart';
import 'package:buddyjet/gen/colors.gen.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final wallets = [
      'Rp. 233.864.539',
      'Rp. 912.111',
      'Rp. 431.864.539',
    ];
    return DefaultScaffold(
      useHiddenBackNavigation: false,
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
                allowImplicitScrolling: true,
                itemCount: wallets.length,
                axisDirection: AxisDirection.left,
                scrollDirection: Axis.horizontal,
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
            UISpacing.height16,
            Container(
              padding: UISpacing.paddingAll20,
              margin: UISpacing.paddingAll20,
              decoration: BoxDecoration(
                color: ColorName.emerald.shade50,
                borderRadius: UIRadius.circular10,
              ),
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 8,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: 1 / 1,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: ColorName.emerald.shade200,
                      borderRadius: UIRadius.circular8,
                    ),
                    padding: UISpacing.paddingAll16,
                    child: const Icon(TablerIcons.address_book),
                  );
                },
              ),
            ),
            UISpacing.height16,
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: UISpacing.paddingHorizontal24,
                    child: const Text(
                      'Latest Transaction',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                    ),
                  ),
                  UISpacing.height14,
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: UISpacing.paddingHorizontal22.copyWith(bottom: 60),
                    itemCount: 8,
                    itemBuilder: (context, index) => SizedBox(
                      height: 60,
                      child: Row(
                        children: [
                          AspectRatio(
                            aspectRatio: 1 / 1,
                            child: Container(
                              decoration: BoxDecoration(
                                color: ColorName.pumpkin.withOpacity(.3),
                                borderRadius: UIRadius.circular8,
                              ),
                              padding: UISpacing.paddingAll16,
                              child: const Icon(TablerIcons.album_off),
                            ),
                          ),
                          UISpacing.width12,
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Transaction Title',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                UISpacing.height4,
                                const Text(
                                  'Rp. 323.511',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          UISpacing.width12,
                          Container(
                            padding: UISpacing.paddingAll6,
                            decoration: const BoxDecoration(
                              color: ColorName.emerald,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              TablerIcons.plus,
                              size: 14,
                              color: ColorName.emerald.shade50,
                            ),
                          )
                        ],
                      ),
                    ),
                    separatorBuilder: (context, index) => Divider(
                      indent: 2,
                      endIndent: 2,
                      thickness: 0.35,
                      color: Colors.grey.shade200,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

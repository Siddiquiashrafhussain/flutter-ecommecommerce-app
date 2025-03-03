import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skyphaa/features/shop/screens/store/widgets/category_tab.dart';
import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/appbar/tabbar.dart';
import '../../../../common/widgets/brands/brand_card.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/products/cart/cart_menu_icon.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../util/constants/colors.dart';
import '../../../../util/constants/sizes.dart';
import '../../../../util/helpers/helper_functions.dart';
import '../brand/all_brands.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 18,
      child: Scaffold(
        /// -- Appbar -- Tutorial [Section # 3, Video # 7]
        appBar: TAppBar(
          title:
              Text('Store', style: Theme.of(context).textTheme.headlineMedium),
          actions: [
            TCartCounterIcon(
              onPressed: () {},
              iconColor: null,
            ),
          ],
        ),
        body: NestedScrollView(

            /// -- Header -- Tutorial [Section # 3, video # 7]
            headerSliverBuilder: (_, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  pinned: true,
                  floating: true,
                  expandedHeight: 440,
                  /// Space between Appbar and TabBar
                  automaticallyImplyLeading: false,
                  backgroundColor: THelperFunctions.isDarkMode(context)
                      ? TColors.black
                      : TColors.white,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(TSizes.defaultSpace),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        ///-- Search bar
                        const SizedBox(height: TSizes.spaceBtwItems),
                        const TSearchContainer(
                            text: 'Search in store',
                            showBorder: true,
                            showBackground: false,
                            padding: EdgeInsets.zero),
                        const SizedBox(height: TSizes.spaceBtwSections),

                        /// -- Featured Brands
                        TSectionHeading(title: 'Featured Brands', onPressed: ()=> Get.to(() => const AllBrandsScreen()),),
                        const SizedBox(height: TSizes.spaceBtwItems),

                        /// -- Brands GRID

                        TGridLayout(
                            itemCount: 4,
                            mainAxisExtent: 80,
                            itemBuilder: (_, index) {
                              return const TBrandCard(showBorder: false);
                            }
                            ),
                      ],
                    ),
                  ),



                  /// Tabs -- Tutorial [Section # 3, Video # 8]
                  bottom: const TTabBar(
                    tabs: [
                      Tab(child: Text('Women')),
                      Tab(child: Text('Men')),
                      Tab(child: Text('Kids')),
                      Tab(child: Text('Fashion')),
                      Tab(child: Text('Sports')),
                      Tab(child: Text('Footwear')),
                      Tab(child: Text('Luggage')),
                      Tab(child: Text('Accessories')),
                      Tab(child: Text('Cosmetics')),
                      Tab(child: Text('Perfumes')),
                      Tab(child: Text('Jewellery')),
                      Tab(child: Text('Electronics')),
                      Tab(child: Text('Home & Living')),
                      Tab(child: Text('Grocery')),
                      Tab(child: Text('Appliances')),
                      Tab(child: Text('books')),
                      Tab(child: Text('Auto & Accessories')),
                      Tab(child: Text('Travels')),
                    ],
                  ),
                ),
              ];
            },

            /// --Body -- Tutorial [ Section # 3, video # 8]
            body: const TabBarView(
              children: [
                TCategoryTab(),
                TCategoryTab(),
                TCategoryTab(),
                TCategoryTab(),
                TCategoryTab(),
                TCategoryTab(),
                TCategoryTab(),
                TCategoryTab(),
                TCategoryTab(),
                TCategoryTab(),
                TCategoryTab(),
                TCategoryTab(),
                TCategoryTab(),
                TCategoryTab(),
                TCategoryTab(),
                TCategoryTab(),
                TCategoryTab(),
                TCategoryTab(),
              ],
            ),
        ),
      ),
    );
  }
}

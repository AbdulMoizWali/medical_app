import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:medical_app/constants/image_consants.dart';
import 'package:medical_app/helpers/gap.dart';
import 'package:medical_app/models/category_model.dart';
import 'package:medical_app/models/product_model.dart';
import 'package:medical_app/theme/theme_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<ProductModel> products = [
    ProductModel(
      name: 'Product 1',
      details: 'Product 1 details',
      price: 100,
      image: ImageConstants.productImage,
      rating: 4.5,
    ),
    ProductModel(
      name: 'Product 2',
      details: 'Product 2 details',
      price: 200,
      image: ImageConstants.productImage,
      rating: 4.5,
    ),
    ProductModel(
      name: 'Product 3',
      details: 'Product 3 details',
      price: 300,
      image: ImageConstants.productImage,
      rating: 4.5,
    ),
    ProductModel(
      name: 'Product 4',
      details: 'Product 4 details',
      price: 400,
      image: ImageConstants.productImage,
      rating: 4.5,
    ),
    ProductModel(
      name: 'Product 5',
      details: 'Product 5 details',
      price: 500,
      image: ImageConstants.productImage,
      rating: 4.5,
    ),
    ProductModel(
      name: 'Product 6',
      details: 'Product 6 details',
      price: 600,
      image: ImageConstants.productImage,
      rating: 4.5,
    ),
  ];

  List<CategoryModel> categories = [
    CategoryModel(name: 'Dental', color: Colors.pink),
    CategoryModel(name: 'Wellness', color: Colors.green),
    CategoryModel(name: 'Homeo', color: Colors.orange.shade600),
    CategoryModel(name: 'Eye care', color: Colors.blue),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Container(
          width: 50,
          height: 50,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.transparent,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                'https://images.ctfassets.net/lh3zuq09vnm2/yBDals8aU8RWtb0xLnPkI/19b391bda8f43e16e64d40b55561e5cd/How_tracking_user_behavior_on_your_website_can_improve_customer_experience.png',
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Iconsax.notification_outline),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Iconsax.shopping_bag_outline),
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: _topSection(context),
          ),
          Positioned(
            top: 190,
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: _contentBody(context),
            ),
          ),
        ],
      ),
    );
  }

  ListView _contentBody(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        _topCategoriesHeading(context),
        _topCategories(context),
        vGap(10),
        Image.asset(
          ImageConstants.offerImage,
          fit: BoxFit.cover,
        ),
        vGap(10),
        _dealOfTheDayHeading(context),
        SizedBox(
          height: 500,
          child: GridView.builder(
            // physics: NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 0.7,
            ),
            itemCount: products.length,
            itemBuilder: (context, index) {
              return Material(
                elevation: 1,
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  margin: const EdgeInsets.all(5),
                  // padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFFf6f6f8),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Image.asset(ImageConstants.productImage),
                        ),
                      ),
                      vGap(5),
                      Text(
                        products[index].name,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                            ),
                      ),
                      vGap(5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Rs. 100',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300,
                                ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Iconsax.heart_outline),
                          ),
                        ],
                      ),
                      Text(
                        'Rating: ${products[index].rating}',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                            ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Row _dealOfTheDayHeading(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Deals of the Day',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w300,
              ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text('More'),
        ),
      ],
    );
  }

  Row _topCategoriesHeading(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Top Categories',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w300,
              ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text('View All'),
        ),
      ],
    );
  }

  SizedBox _topCategories(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: categories.map((category) {
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Material(
              elevation: 2,
              borderRadius: BorderRadius.circular(55),
              child: Container(
                width: 85,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(55),
                ),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundColor: category.color,
                    ),
                    vGap(5),
                    Text(
                      category.name,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                          ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _searchBar() {
    return Material(
      color: Colors.amber,
      elevation: 2,
      borderRadius: BorderRadius.circular(30),
      child: TextFormField(
        decoration: const InputDecoration(
          hintText: 'Search Medicine & Health Products',
          hintStyle: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w100,
          ),
          prefixIcon: Icon(
            Iconsax.search_normal_1_outline,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }

  Widget _topSection(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 300,
        ),
        Container(
          height: 220,
          alignment: Alignment.topCenter,
          clipBehavior: Clip.none,
          decoration: ShapeDecoration(
            color: ThemeColors.getThemeColors(context).primaryColor,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: -280,
          left: -206,
          child: CircleAvatar(
            radius: 206,
            backgroundColor:
                ThemeColors.getThemeColors(context).white.withOpacity(0.07),
          ),
        ),
        Positioned(
          left: 20,
          top: 120,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi, Shahzeb',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: ThemeColors.getThemeColors(context).white,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Text(
                'Welcome to Quick Medical Store',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: ThemeColors.getThemeColors(context).white,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ],
          ),
        ),
        Positioned(
          left: 20,
          right: 20,
          top: 190,
          child: _searchBar(),
        ),
      ],
    );
  }
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:car_app/core/extensions/int_extensions.dart';
import 'package:car_app/core/extensions/textstyle_extension.dart';
import 'package:car_app/core/resource/app_svg.dart';
import 'package:car_app/core/theme/app_textstyles.dart';
import 'package:car_app/features/auth/home/provider/cars_provider.dart';
import 'package:car_app/features/auth/home/widgets/ad_widget.dart';
import 'package:car_app/features/auth/home/widgets/car_chip_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

const filters = [
  'All cars',
  'Family cars', 
  'Cheap cars', 
  'Luxury cars', 
  'Sport cars', 
  'Popular cars',
  ];

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _activeIndex = ValueNotifier<int>(0);
@override
  void dispose() {
    _activeIndex.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final providerW = context.watch<CarsProvider>();
    return  Scaffold(
      drawer: Container(
        color: Colors.pink,
        child: Column(
          children: [
            Text('Drawer'),
          ],
        ),
      ),
      appBar: AppBar(
        leading: Builder(builder: (context) {
          return IconButton(onPressed: () {
            Scaffold.of(context).openDrawer();
          }, icon: SvgPicture.asset(AppSvg.drawerIcon),);
        }),
        actions: [
          IconButton(onPressed: (){}, 
          icon: const Icon(
            Icons.add_shopping_cart, 
            size: 30,
            ),),
            ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            const AdWidget(),
            30.verticalSpace,
            SizedBox(
              height: 60,
              child: ListView.separated(
                itemCount: filters.length,
                separatorBuilder: (context, index) => 20.horizontalSpace,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return ValueListenableBuilder(
                    valueListenable: _activeIndex,
                    builder: (context, value, child) {
                      return GestureDetector(
                        onTap: () => _onItemTap(index: index),
                        child: CarChipWidget(isActive: 
                        value == index, 
                        label: filters[index]),
                        );
                    }
                  );
                }
              ),
            ),
            20.verticalSpace,
             Row(
              children: [
              Expanded(
               child: Text(
               'Cars Available Near You',
               style: AppTextstyles.regular
               .setSize(20)
               .copyWith(color: Colors.black),
                textAlign: TextAlign.left, 
                ),
               ),
             ],
           ),
           4.verticalSpace,
           Row(
              children: [
              Expanded(
               child: Text(
               'View more',
               style: AppTextstyles.regular
               .setSize(12)
               .copyWith(color: Color(0xffC64949),),
                textAlign: TextAlign.right, 
                ),
               ),
             ],
           ),
           25.verticalSpace,
           Expanded(
            child: CustomScrollView(
             slivers: [ // Добавляем slivers
              SliverGrid(
               gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 40.0,
                crossAxisSpacing: 30.0,
                childAspectRatio: 1, 
                crossAxisCount: 2,
               ),
              delegate: SliverChildBuilderDelegate(
               (BuildContext context, int index) {
               return ClipRRect(
                borderRadius: BorderRadius.circular(10),
                 child: Container(
                  color: Colors.pink.shade100,
                   child: Column(
                     children: [
                       Expanded(
                         child: CachedNetworkImage(
                          placeholder: (context, url) => 
                          const SizedBox.shrink(),
                          errorWidget: (context, url, error) => 
                          const Icon(Icons.error),
                          imageUrl: providerW.currentList[index].image),
                       ),
                        Text('${providerW.currentList[index].brand} ${providerW.currentList[index].model}')
                     ],
                   ),
                 ),
               );
              },
              childCount: providerW.currentList.length,
              ),
            ),
           ],
            ),
           ),
          ]
        ),
      ),
    );
  }

  void _onItemTap ({required int index}){
    final providerR = context.read<CarsProvider>();
    _activeIndex.value = index;
                          switch (index){
                            case 0:
                            providerR.showAllCars();
                            case 1:
                            providerR.showFamilyCars();
                            case 2:
                            providerR.showCheapCars();
                            case 3:
                            providerR.showLuxuryCars();
                            case 4:
                            providerR.showSportCars();
                            case 5:
                            providerR.showPopularCars();
                            default:
                          }
  }
}
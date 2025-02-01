import 'package:car_app/core/extensions/int_extensions.dart';
import 'package:car_app/core/extensions/textstyle_extension.dart';
import 'package:car_app/core/resource/app_svg.dart';
import 'package:car_app/core/theme/app_textstyles.dart';
import 'package:car_app/features/auth/home/widgets/ad_widget.dart';
import 'package:car_app/features/auth/home/widgets/car_chip_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

const filters = ['Family cars', 'Cheap cars', 'Luxury cars', 'Sport cars', 'Popular cars'];

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
                        onTap: (){
                          _activeIndex.value = index;
                        },
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
          ]
        ),
      ),
    );
  }
}
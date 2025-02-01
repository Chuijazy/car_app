import 'package:car_app/core/extensions/context_extension.dart';
import 'package:car_app/core/extensions/int_extensions.dart';
import 'package:car_app/core/extensions/textstyle_extension.dart';
import 'package:car_app/core/theme/app_textstyles.dart';
import 'package:flutter/material.dart';

class AdWidget extends StatelessWidget {
  const AdWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
              children: [
                Container(
                  height: context.mq.height / 5 ,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                ),
                Positioned(
                 left: -10,
                 right: 290,
                 bottom: -5,
                  child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      // ignore: deprecated_member_use
                      color: Colors.white.withOpacity(0.2),
                    ),
                  ),
                ),
                Positioned(
                 left: 150,
                 right: 150,
                 top: 30,
                  child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      // ignore: deprecated_member_use
                      color: Colors.white.withOpacity(0.2),
                    ),
                  ),
                ),
                Positioned(
                 left: 250,
                 right: 5,
                 bottom: 30,
                  child: Container(
                    height: 25,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      // ignore: deprecated_member_use
                      color: Colors.white.withOpacity(0.2),
                    ),
                  ),
                ),
                Positioned(
                  right: 50,
                  bottom: 20,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 34),
                    decoration: BoxDecoration(
                      color: const Color(0xff988080,),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text('Try Now',
                    style: AppTextstyles
                    .semiBold.setSize(11)
                    .copyWith(color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text('30%', 
                          style: AppTextstyles.regular.
                          setSize(48)
                          .copyWith(color: Colors.white),),
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text('Off', 
                            style: AppTextstyles.regular.
                            setSize(55)
                            .copyWith(color: Color(0xffFCC21B),
                            ),),
                          ),
                        ],
                      ),
                      16.horizontalSpace,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('THIS JULY',
                          style: AppTextstyles.regular
                          .setSize(22)
                          .copyWith(color: Colors.white)
                          ),
                          6.verticalSpace,
                          Text('Travel to the end of the world \nthis whole month \ncause we care when you are \nhappy',
                          style: AppTextstyles.regular
                          .setSize(10)
                          .copyWith(color: Colors.white),),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            );
  }
}
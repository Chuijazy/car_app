import 'package:car_app/core/extensions/textstyle_extension.dart';
import 'package:car_app/core/theme/app_textstyles.dart';
import 'package:flutter/material.dart';

class InfoColumn extends StatelessWidget {
  const InfoColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
            height: 120, 
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    height: 89,
                    width: 155,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      // ignore: deprecated_member_use
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          // ignore: deprecated_member_use
                          color: Colors.black.withOpacity(0.5),
                          blurRadius: 1,
                          spreadRadius: 1,
                          offset: Offset(4, 2),
                        )
                      ]
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text('Transition',
                      // ignore: deprecated_member_use
                      style: AppTextstyles.semiBold.
                      setSize(15).
                      copyWith(color: Color(0xff95BCCC)),
                      ),
                      SizedBox(height: 15,),
                      Text('Automatic',
                      style: AppTextstyles.regular.
                      setSize(12).
                      copyWith(color: Colors.black),)
                      ]
                    ),
                  ),
                  SizedBox(width: 15),
                  Container(
                    height: 89,
                    width: 155,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      // ignore: deprecated_member_use
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          // ignore: deprecated_member_use
                          color: Colors.black.withOpacity(0.5),
                          blurRadius: 1,
                          spreadRadius: 1,
                          offset: Offset(4, 2),
                        )
                      ]
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text('Speed',
                      // ignore: deprecated_member_use
                      style: AppTextstyles.semiBold.
                      setSize(15).
                      copyWith(color: Color(0xff95BCCC)),
                      ),
                      SizedBox(height: 15,),
                      Text(' 200kmph',
                      style: AppTextstyles.regular.
                      setSize(12).
                      copyWith(color: Colors.black),)
                      ]
                    ),
                  ),
                  SizedBox(width: 15),
                  Container(
                    height: 89,
                    width: 155,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      // ignore: deprecated_member_use
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          // ignore: deprecated_member_use
                          color: Colors.black.withOpacity(0.5),
                          blurRadius: 1,
                          spreadRadius: 1,
                          offset: Offset(4, 2),
                        )
                      ]
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text('Weight',
                      // ignore: deprecated_member_use
                      style: AppTextstyles.semiBold.
                      setSize(15).
                      copyWith(color: Color(0xff95BCCC)),
                      ),
                      SizedBox(height: 15,),
                      Text('1,500 kg',
                      style: AppTextstyles.regular.
                      setSize(12).
                      copyWith(color: Colors.black),)
                      ]
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}
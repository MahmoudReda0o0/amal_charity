import 'package:amal_charity/constants/my_colors.dart';
import 'package:amal_charity/presentation/my_screens/Widget/CusHomeCard.dart';
import 'package:amal_charity/presentation/my_screens/Widget/CusLaunchUrl.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../constants/constantValues.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double mediaH = MediaQuery.of(context).size.height;
    double mediaW = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: mediaH * 0.3,
              width: mediaW,
              color: Colors.green,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: mediaH * 0.13,
                  width: mediaW,
                  //color: Colors.amber,
                  child: Center(
                    child: Text(
                      'الصفحة الرئيسية ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: mediaW * 0.07,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: mediaH * 0.83,
                  width: mediaW,
                  decoration: BoxDecoration(
                    color: PublicColor().one,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)),
                  ),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: mediaH * 0.02,
                      ),
                      Container(
                        width: mediaW * 0.9,
                        height: mediaH * 0.27,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(40)),
                        child: Center(
                          child: Text(
                              'ما نقصت صدقة من مال، وما زاد الله عبداً بعفو إلا عزًّا، وما تواضع أحد لله إلا رفعه الله',
                              style:
                                  TextStyle(fontSize: 25, color: Colors.green,),
                              textAlign: TextAlign.center,overflow: TextOverflow.clip),
                        ),
                      ),
                      SizedBox(height: mediaH * 0.02),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CusHomeCard(
                              imageurl:
                                  'assets/images/homescreen/familyicon.png',
                              fun: () {
                                GoRouter.of(context).go('/FamilyList');
                              }),
                          SizedBox(width: mediaW * 0.1),
                          CusHomeCard(
                              imageurl: 'assets/images/homescreen/bookicon.png',
                              fun: () {
                                CustomLaunchUrl().Launch();
                              }),
                        ],
                      ),
                      SizedBox(height: mediaH * 0.02),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CusHomeCard(
                              imageurl:
                                  'assets/images/homescreen/familyicon.png',
                              fun: () {
                                print('open family screen');
                              }),
                          SizedBox(width: mediaW * 0.1),
                          CusHomeCard(
                              imageurl:
                                  'assets/images/homescreen/familyicon.png',
                              fun: () {
                                print('open family screen');
                              }),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

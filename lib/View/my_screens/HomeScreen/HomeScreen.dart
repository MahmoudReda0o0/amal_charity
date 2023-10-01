import 'package:amal_charity/State%20Managment/api/get_all_families/families_cubit.dart';
import 'package:amal_charity/View/my_screens/PDF/PDFScreen.dart';
import 'package:amal_charity/constants/my_colors.dart';
import 'package:amal_charity/data/repositories/families_repo.dart';
import 'package:amal_charity/data/web_services/families_web_services.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../constants/constantValues.dart';
import '../Family/FamilyList.dart';
import '../UserProfile/UserProfile.dart';
import '../Widget/CusHomeCard.dart';
import '../Widget/CusLaunchUrl.dart';
import 'ShowAllWords.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CarouselController carouselController = CarouselController();
  var repo = FamiliesRepo(FamiliesWebServices());
  bool popBool = false;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: mediaH * 0.3,
              width: mediaW,
              color: Colors.green,
            ),
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
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
                      color: PublicColor.one,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40)),
                    ),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 16),
                        child: Column(
                          //mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: mediaH * 0.02,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ShowAllWords()));
                              },
                              child: Container(
                                width: mediaW * 0.9,
                                height: mediaH * 0.27,
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(40)),
                                child: CusCarouselSlider(),
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
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => BlocProvider(
                                          create: (context) =>
                                              FamiliesCubit(repo: repo),
                                          child: const FamilyList(),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                                SizedBox(width: mediaW * 0.1),
                                CusHomeCard(
                                    imageurl:
                                        'assets/images/homescreen/bookicon.png',
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
                                    imageurl: 'assets/images/logo.png',
                                    fun: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const PDFScreen()));
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
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget CusCarouselSlider() {
    return CarouselSlider(
      carouselController: carouselController,
      items: List.generate(
        PublicData.wiseWords.length,
        (index) => Center(
          child: Text(
            '{ ${PublicData.wiseWords[index]} }',
            style: const TextStyle(fontSize: 23, color: Colors.green),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      options: CarouselOptions(
        viewportFraction: 1,
        autoPlay: true,
        enlargeCenterPage: true,
        autoPlayInterval: const Duration(seconds: 8),
        //autoPlayAnimationDuration: Duration(seconds: 5),
      ),
    );
  }
}

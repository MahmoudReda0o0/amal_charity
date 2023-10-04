import 'package:amal_charity/constants/constantValues.dart';
import 'package:flutter/material.dart';

class CusHomeCard extends StatelessWidget {
  CusHomeCard({super.key, required this.imageurl, required this.fun});
  String imageurl;
  Function fun;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        fun();
      },
      child: Container(
        height: mediaH*0.17,
        width: mediaW*0.34,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 1,
                offset: Offset(2, 2),
              ),
            ]),
        child: Image(
          image: AssetImage(imageurl),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

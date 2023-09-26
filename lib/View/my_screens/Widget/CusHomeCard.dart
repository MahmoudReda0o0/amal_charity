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
        height: 100,
        width: 100,
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

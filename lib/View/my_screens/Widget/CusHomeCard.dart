import 'package:flutter/material.dart';

class CusHomeCard extends StatelessWidget {
   CusHomeCard({required this.imageurl,required this.fun});
   String imageurl;
   Function fun;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        fun();
      },
      child: Container(
        height: 170,
        width: 140,
        //height: mediaH * 0.23,
        //width: mediaW * 0.35,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 1,
                offset: Offset(2, 2),
              ),
            ]),
        child: Image(
          image: AssetImage('$imageurl'),fit: BoxFit.contain,
        ),
      ),
    );
  }
}

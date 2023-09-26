import 'package:flutter/material.dart';

import '../../../constants/my_colors.dart';

class CustomTextInput {
  Widget customTextField({
    required TextEditingController textController,
    required String errorTitle,
    required String hintTitle,
    TextInputType? keyboardType = TextInputType.text,
    Widget? leftIcon,
    Widget? rightIcon,
    bool? passwordMod = false,
    required double sizeHeight,
    required double sizeWidth,
  }) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: sizeHeight,
      width: sizeWidth,
      child: TextFormField(
        controller: textController,
        textAlign: TextAlign.right,
        obscureText: passwordMod!,
        style: const TextStyle(color: Colors.black),
        keyboardType: keyboardType,
        validator: (value) {
          if (value == null || value.length < 5) {
            return errorTitle;
          } else {
            return null;
          }
        },
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          prefixIcon: leftIcon,
          suffixIcon: rightIcon,
          hintText: hintTitle,
          hintStyle: const TextStyle(color: Colors.black26, fontSize: 15),
          errorStyle: const TextStyle(fontSize: 10),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.red)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: PublicColor.one)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: PublicColor.one,
            ),
          ),
          // focusedBorder: OutlineInputBorder(
          //     borderSide: BorderSide(
          //       color: Color(0xffc2c9d1),
          //     ),
          //     borderRadius: BorderRadius.circular(10)),
          // enabledBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(10),
          //   borderSide: BorderSide(
          //     color: Color(0xffc2c9d1),
          //   ),
          // ),
        ),
      ),
    );
  }

  Widget customForm({
    required TextEditingController conUserName,
    required TextEditingController conPassword,
    bool showPassword = false,
    Widget? perfixicon,
  }) {
    return Form(
      child: Column(
        children: [
          customTextField(
            sizeWidth: 100,
            sizeHeight: 100,
            textController: conUserName,
            errorTitle: 'أعد ادخال اسم المستخدم',
            hintTitle: "اسم المستخدم",
            keyboardType: TextInputType.name,
          ),
          const SizedBox(
            height: 10,
          ),
          customTextField(
              sizeHeight: 100,
              sizeWidth: 100,
              passwordMod: showPassword,
              textController: conPassword,
              errorTitle: 'أعد ادخال كلمه المرور',
              hintTitle: "كلمه المرور",
              keyboardType: TextInputType.name,
              leftIcon: perfixicon),
        ],
      ),
    );
  }
}

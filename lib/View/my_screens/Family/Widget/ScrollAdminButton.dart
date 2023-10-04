import 'package:amal_charity/State%20Managment/Provider/AppProvider/ProviderAppData.dart';
import 'package:amal_charity/constants/constantValues.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ScrollAdminButton extends StatefulWidget {
  const ScrollAdminButton({Key? key}) : super(key: key);

  @override
  State<ScrollAdminButton> createState() => _ScrollAdminButtonState();
}

class _ScrollAdminButtonState extends State<ScrollAdminButton> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ProviderAppData>(
      builder: (context,_,child) {
        return Container(
          color: Colors.green,
          height: mediaH * 0.06,
          width: mediaW,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              _.familyObject.length,
              (index) =>
                  scrollButton(text: _.familyObject[index], index: index),
            ),
          ),
        );
      }
    );
  }

  Widget scrollButton({required String text, required int index}) {
    final appData = Provider.of<ProviderAppData>(context, listen: false);
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5, top: 2, bottom: 2),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor:appData.buttonColor[index],
        ),
        onPressed: () {
          appData.selectScrollButtonIndex(selectedInsex: index);
          print('index : $index');
        },
        child: Text(text,style: TextStyle(color: Colors.black),),
      ),
    );
  }
}

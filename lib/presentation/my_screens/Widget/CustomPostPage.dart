import 'package:amal_charity/business_logic/Provider/ApiProvider/FamilyData.dart';
import 'package:amal_charity/business_logic/Provider/AppProvider/ProviderAppData.dart';
import 'package:amal_charity/main.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomPostPage extends StatefulWidget {
  CustomPostPage({required this.Data});

  String Data;

  @override
  State<CustomPostPage> createState() => _CustomPostPageState();
}

class _CustomPostPageState extends State<CustomPostPage> {
  TextEditingController conData = TextEditingController();
  @override
  Widget build(BuildContext context) {
    conData.text = widget.Data;
    return Consumer<ProviderAppData>(
      builder: (context,_,child) {
        return AlertDialog(
          content: TextField(
            controller: conData,
            onTap: () {
              print('text field on tap');
            },
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Cancel',
                style: TextStyle(color: Colors.pink),
              ),
            ),
            TextButton(
              onPressed: () {
                print('new conData :=> ${conData.text}');
                _.postData(conData.text);
                Navigator.pop(context);
              },
              child: Text(
                'Update',
                style: TextStyle(color: Colors.green),
              ),
            ),
          ],
        );
      }
    );
  }
}

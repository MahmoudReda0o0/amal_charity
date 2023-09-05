import 'package:flutter/material.dart';


class CustomPostPage extends StatefulWidget {
  CustomPostPage({required this.Data});

  String Data;

  @override
  State<CustomPostPage> createState() => _CustomPostPageState();
}

class _CustomPostPageState extends State<CustomPostPage> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('${widget.Data}'),
      actions: [
        TextButton(onPressed: (){} , child: Text('Cancel',style: TextStyle(color: Colors.pink),)),
        TextButton(onPressed: (){} , child: Text('Update',style: TextStyle(color: Colors.green),)),
      ],
    );
  }
}

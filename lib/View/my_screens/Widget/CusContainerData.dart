import 'package:flutter/material.dart';

import 'CustomPostPage.dart';

// ignore: must_be_immutable
class CusContainerData extends StatelessWidget {
  CusContainerData({
    super.key,
    required this.leading,
    required this.title,
    this.conHeight,
    this.conWidth,
    this.fun,
    this.extraBool = false,
    this.extraDetail,
  });
  double? conHeight;
  double? conWidth;
  String title;
  String leading;
  Function? fun;
  bool? extraBool;
  String? extraDetail;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ListTile(
                trailing: IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => CustomPostPage(
                        Data: title,
                      ),
                    );
                  },
                  icon: const Icon(Icons.settings),
                ),
                title: Text(
                  title,
                  style: const TextStyle(fontSize: 18),
                  overflow: TextOverflow.clip,
                ),
                leading: Text(
                  leading,
                  style: const TextStyle(fontSize: 16, color: Colors.black54),
                  overflow: TextOverflow.ellipsis,
                ),
                onTap: () {
                  fun!();
                  print('normal press');
                },
                onLongPress: () {
                  print('long press');
                },
              ),
            ),
            Visibility(
                visible: extraBool!,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                  child: Text(
                    '$extraDetail',
                    style: const TextStyle(fontSize: 15, color: Colors.black54),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

import 'package:amal_charity/State%20Managment/Provider/AppProvider/ProviderAppData.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../State Managment/Provider/AppProvider/TextEditingController.dart';
import 'CusUpdateDataDialog.dart';

// ignore: must_be_immutable
class CusContainerData extends StatelessWidget {
  CusContainerData({
    super.key,
    required this.leading,
    required this.title,
    this.adminTextController,
    this.conHeight,
    this.conWidth,
    this.fun,
    this.extraBool = false,
    this.extraDetail,
  });
  double? conHeight;
  double? conWidth;
  String title;
  TextEditingController? adminTextController;
  String leading;
  Function? fun;
  bool? extraBool;
  String? extraDetail;
  @override
  Widget build(BuildContext context) {
    return Consumer2<ProviderAppData,ProviderTextEditingController>(
      builder: (context,_,__,child) {
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
                    trailing: Visibility(
                      visible: _.editData,
                      child: Icon(Icons.settings),
                    ),
                    title: _.editData?TextField(controller: __.conName):Text(
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
                      fun!()??(){};
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
    );
  }
}

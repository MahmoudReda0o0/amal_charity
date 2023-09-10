import 'package:amal_charity/presentation/my_screens/Widget/CustomPostPage.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CusContainerData extends StatelessWidget {
  CusContainerData({
    super.key,
    required this.leading,
    required this.title,
    this.conHeight,
    this.conWidth,
    this.fun,
    this.extraBool:false,
    this.extraDetail,
  });
  double? conHeight;
  double? conWidth;
  String title;
  String leading;
  Function? fun;
  bool? extraBool ;
  String? extraDetail;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        height: conHeight ?? 75,
        width: conWidth ?? 900,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ListTile(
                // title:FittedBox(
                //     fit: BoxFit.scaleDown,
                //     child: Text(title,style: TextStyle(fontSize: 20),overflow: TextOverflow.ellipsis,),
                // ),
                trailing: IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => CustomPostPage(
                        Data: title,
                      ),
                    );
                  },
                  icon: Icon(Icons.settings),
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
                  padding:  EdgeInsets.fromLTRB(0,0,20,0),
                  child: Text('${'$extraDetail'}',style: TextStyle(fontSize:15,color: Colors.black54 ),),
                )),
          ],
        ),
      ),
    );
  }
}

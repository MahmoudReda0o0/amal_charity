import 'package:amal_charity/business_logic/Provider/AppProvider/ProviderUserProfile.dart';
import 'package:amal_charity/constants/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ProviderUserProfile>(
      builder: (context,_,child) {
        return Scaffold(
          backgroundColor: PublicColor().one,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('${_.name}'),
              Text('${_.password}'),
            ],
          ),
        );
      }
    );
  }
}

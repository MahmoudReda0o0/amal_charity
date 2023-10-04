import 'package:amal_charity/State%20Managment/Provider/AppProvider/ProviderAppData.dart';
import 'package:amal_charity/constants/constantValues.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../State Managment/Provider/AppProvider/ProviderUserProfile.dart';
import '../../../constants/my_colors.dart';
import '../HomeScreen/HomeScreen.dart';
import '../Widget/CusLaunchUrl.dart';
import '../Widget/CustomTextInput.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController conUserName = TextEditingController();
  TextEditingController conPassword = TextEditingController();
  bool showPassword = false;
  bool rememberMe = false;
  CustomLaunchUrl customLaunchUrl =CustomLaunchUrl();
  @override
  Widget build(BuildContext context) {
    double keyboard = MediaQuery.of(context).viewInsets.bottom;
    return Consumer2<ProviderUserProfile, ProviderAppData>(
        builder: (context, _, __, child) {
      return SafeArea(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
            floatingActionButton: FloatingActionButton.extended(
              backgroundColor: Colors.white,
              splashColor: Colors.red,
              onPressed: () async {
                await customLaunchUrl.launch(customLaunchUrl.developerDrive);
                print('Open Developer Drive');
              },
              label: Text(
                '${__.versionCode}',
                style: TextStyle(color: Colors.red, fontSize: mediaW * 0.05),
              ),
              icon: FlutterLogo(),
            ),
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: mediaH * 0.024,
                  ),
                  Text(
                    'تسجيل الدخول ',
                    style: TextStyle(
                        color: PublicColor.green, fontSize: mediaW * 0.05),
                  ),
                  SizedBox(
                    height: mediaH * 0.024,
                  ),
                  keyboard == 0
                      ? SizedBox(
                          height: mediaH * 0.3,
                          width: mediaW * 0.85,
                          // color: Colors.green,
                          child: const Image(
                              image: AssetImage('assets/images/pic1.png'),
                              fit: BoxFit.fill),
                        )
                      : const SizedBox(),
                  SizedBox(
                    height: mediaH * 0.024,
                  ),
                  Padding(
                    padding: EdgeInsets.all(mediaW * 0.025),
                    child: CustomTextInput().customTextField(
                      sizeHeight: mediaH * 0.08,
                      sizeWidth: mediaW,
                      textController: conUserName,
                      errorTitle: 'اعد ادخال اسم المستخدم',
                      hintTitle: 'اسم المستخدم',
                      leftIcon: Icon(
                        Icons.person_outline_sharp,
                        color: PublicColor.green,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(mediaW * 0.025),
                    child: CustomTextInput().customTextField(
                      sizeHeight: mediaH * 0.08,
                      sizeWidth: mediaW,
                      textController: conPassword,
                      errorTitle: 'أعد ادخال كلمه المرور',
                      hintTitle: 'كلمه المرور',
                      passwordMod: !showPassword,
                      leftIcon: Icon(
                        Icons.lock_outline,
                        color: PublicColor.green,
                      ),
                      rightIcon: IconButton(
                        onPressed: () {
                          setState(() => showPassword = !showPassword);
                        },
                        icon: showPassword
                            ? Icon(
                                Icons.remove_red_eye,
                                color: PublicColor.green,
                              )
                            : Icon(
                                Icons.remove_red_eye_outlined,
                                color: PublicColor.green,
                              ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: mediaH * 0.03,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: mediaW * 0.03),
                      child: TextButton.icon(
                        onPressed: () {
                          setState(() => rememberMe = !rememberMe);
                          // if(_emailConntroller.text.length==0||_passwordController.text.length==0){
                          //   print('plz Enter your email and pass noob');
                          //   setState(() {
                          //     checkBox=false;
                          //   });
                          // }else{
                          //   setState(() {
                          //     _rememberIcon = !_rememberIcon;
                          //     checkBox = _rememberIcon;
                          //   });
                          //   Shared_SetData(
                          //     rememberMe: checkBox,
                          //     remEmail: _emailConntroller.text,
                          //     remPass: _passwordController.text,
                          //   );
                          // }
                          print('remember me');
                        },
                        label: Text(
                          'تذكرني',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontSize: mediaW * 0.043, color: Colors.black54),
                        ),
                        icon: rememberMe
                            ? Icon(
                                Icons.check_box,
                                color: PublicColor.green,
                              )
                            : Icon(
                                Icons.check_box_outline_blank,
                                color: PublicColor.green,
                              ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: mediaH * 0.05,
                  ),
                  ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.green),
                    onPressed: () {
                      _.updateProfile(conUserName.text, conPassword.text);
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Open Family Screen'),
                        ),
                      );
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()));
                      // GoRouter.of(context).go('/FamilyList');
                    },
                    child: SizedBox(
                      height: mediaH * 0.07,
                      width: mediaW * 0.85,
                      child: Center(
                        child: Text(
                          'تسجيل دخول',
                          style: TextStyle(fontSize: mediaW * 0.05),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}

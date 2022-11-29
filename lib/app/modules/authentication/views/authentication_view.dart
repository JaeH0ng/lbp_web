import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/i10n.dart';

import 'package:get/get.dart';
import 'package:lbp_web/app/modules/home/views/home_view.dart';

import '../../logo_page/views/labelOverrides.dart';
import '../controllers/authentication_controller.dart';
import 'package:flutterfire_ui/auth.dart';

class AuthenticationView extends GetView<AuthenticationController> {
  const AuthenticationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        )),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
            textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20)),
            padding: MaterialStateProperty.all<EdgeInsets>(
              const EdgeInsets.all(24),
            ),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.lightGreenAccent[700]!),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          ),//버튼색 바꾸는 코드
        ),
      ),
      localizationsDelegates: [
        FlutterFireUILocalizations.withDefaultOverrides(const LabelOverrides()),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        FlutterFireUILocalizations.delegate,
      ],//영어 한글로 바꾸는 코드
      home: SignInView(),
    );
  }
}

class SignInView extends StatelessWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SignInPage(),
      ),
    );
  }
}

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return SignInScreen(
            subtitleBuilder: (context, action) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  action == AuthAction.signIn //버튼 클릭시 ? -> : 정의된 텍스트로 action
                      ? '만나서 반갑습니다 :)'
                      : '비밀번호는 6글자 이상으로 설정해주세요.',
                ),
              );
            },
            providerConfigs: [
              EmailProviderConfiguration(),
            ],
          );
        }
        return HomeView();
          //HomeView();
      },
    );
  }
}

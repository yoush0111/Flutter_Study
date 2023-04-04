import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/intro/intro_page.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // page 슬라이드
      body: PageView(children: [
        // Center(
        //   child: Text("로그인 정보가 없습니다."),
        // ),
        IntroPage(),
        Container(color: Colors.accents[2]),
        Container(color: Colors.accents[5])
      ]),
    );
  }
}

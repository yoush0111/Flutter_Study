import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              '케어포미',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            ExtendedImage.asset('assets/intro/AD1_image.png'),
            Text('당신의 건강관리 \n 케어포미가 함께 하겠습니다',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      '케어포미 시작하기',
                      style: TextStyle(
                          color: Colors.white, backgroundColor: Colors.cyan),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}

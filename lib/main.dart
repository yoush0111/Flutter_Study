import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/router/locations.dart';
import 'package:flutter_application_1/view/auth_screen.dart';
import 'package:flutter_application_1/view/splash_screen.dart';

final _routerDelegate = BeamerDelegate(
    locationBuilder: BeamerLocationBuilder(beamLocations: [HomeLocation()]),
    guards: [
      BeamGuard(
          pathBlueprints: ["/"],
          check: (context, location) {
            return false;
          },
          showPage: BeamPage(child: AuthScreen()))
    ]);
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Object>(
      future: Future.delayed(Duration(seconds: 3), () => 100),
      builder: (context, snapshot) {
        return AnimatedSwitcher(
          duration: Duration(milliseconds: 900),
          child: _splashLodingWidget(snapshot),
        );
      },
    );
  }

  StatelessWidget _splashLodingWidget(AsyncSnapshot<Object> snapshot) {
    if (snapshot.hasError) {
      print("에러가 발생하였습니다.");
      return Text("Error");
    } else if (snapshot.hasData) {
      return CareForMe();
    } else {
      return SplashScreen();
    }
  }
}

class CareForMe extends StatelessWidget {
  const CareForMe({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: BeamerParser(),
      routerDelegate: _routerDelegate,
    );
  }
}

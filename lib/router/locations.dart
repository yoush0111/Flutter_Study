import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

import '../view/main_home.dart';

class HomeLocation extends BeamLocation {
  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    return [BeamPage(child: HomeScreen(), key: ValueKey('home'))];
  }

  @override
  List get pathBlueprints => ['/'];
}

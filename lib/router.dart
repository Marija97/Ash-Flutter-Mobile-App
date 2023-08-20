import 'package:flutter/material.dart' show Widget;

import 'pages/home/home_page.dart';

abstract class AshRouter {
  static Widget get initialPage => HomePage();
}

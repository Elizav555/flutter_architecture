import 'package:flutter/material.dart';
import 'package:flutter_architecture/data/service_locator.dart';

import 'ui/my_app.dart';

void main() {
  ServiceLocator.instance.setUp();
  runApp(const MyApp());
}

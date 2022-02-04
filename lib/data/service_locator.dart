import 'package:flutter_architecture/data/service.dart';
import 'package:get_it/get_it.dart';

class ServiceLocator {
  final _getIt = GetIt.I;

  T get<T extends Object>() => _getIt.get<T>();
  static final instance = ServiceLocator();

  void setUp() {
    _getIt.registerLazySingleton<Service>(() => FakeService());
  }
}

import 'package:flutter_architecture/business/main_bloc.dart';
import 'package:flutter_architecture/data/service.dart';
import 'package:flutter_architecture/data/service_locator.dart';
import 'package:get_it/get_it.dart';

class BlockFactory {
  static final _getIt = GetIt.I;

  T get<T extends Object>() => _getIt.get<T>();
  static final instance = BlockFactory();

  void setUp() {
    ServiceLocator.instance.setUp();
    _getIt.registerFactory<MainBloc>(
      () => MainBloc(service: ServiceLocator.instance.get<Service>()),
    );
  }
}

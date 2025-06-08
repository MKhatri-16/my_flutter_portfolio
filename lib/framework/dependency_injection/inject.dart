import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:my_flutter_portfolio/framework/dependency_injection/inject.config.dart';
import 'package:my_flutter_portfolio/ui/utils/const/app_constants.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureMainDependencies({required String environment}) async =>
    GetItInjectableX(getIt).init(environment: environment);

abstract class Env {
  static const dev = development;
  static const prod = production;
}
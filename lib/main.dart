import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:my_flutter_portfolio/framework/dependency_injection/inject.dart';
import 'package:my_flutter_portfolio/ui/routing/delegate.dart' show MainRouterDelegate;
import 'package:my_flutter_portfolio/ui/routing/parser.dart' show MainRouterInformationParser;
import 'package:my_flutter_portfolio/ui/routing/stack.dart' show navigationStackController;
import 'ui/utils/theme/theme_style.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  
  /// Configuring the main dependencies setting the enviroment 
  await configureMainDependencies(environment: Env.dev);
  
  /// Setup for the localization 
  await EasyLocalization.ensureInitialized();
  
  /// Setup for the hive 
  await Hive.initFlutter();
  await Hive.openBox('userBox');

  runApp( ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        // localizationsDelegates: context.localizationDelegates,
        // locale: EasyLocalization.of(context)?.locale,
        title: 'My Portfolio',
        theme:ThemeStyle.themeData(false, context),
        routerDelegate: getIt<MainRouterDelegate>(param1: ref.read(navigationStackController)),
        routeInformationParser: getIt<MainRouterInformationParser>(param1: ref, param2: context),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_flutter_portfolio/framework/controller/portfolio_controller/portfolio_controller.dart';
import 'package:my_flutter_portfolio/ui/screen/helper/project_list.dart';
import 'package:my_flutter_portfolio/ui/screen/web/portfolio_web.dart';

class Splash extends ConsumerStatefulWidget {
  const Splash({super.key});

  @override
  ConsumerState<Splash> createState() => _SplashState();
}



class _SplashState extends ConsumerState<Splash> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      debugShowCheckedModeBanner: false,

      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF0D1117),
        primaryColor: Colors.tealAccent,
        cardColor: const Color(0xFF161B22),
        textTheme: const TextTheme(
          headlineSmall: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
          bodyMedium: TextStyle(color: Colors.white70, fontSize: 16),
        ),
      ),
      home: PortfolioWeb(),
    );
  }
}
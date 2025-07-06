import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/ui/screen/mobile/portifolio_mobile.dart';
import 'package:my_flutter_portfolio/ui/screen/web/portfolio_web.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (BuildContext context){return const PortfolioWeb();},
      mobile: (BuildContext context){return  const PortfolioMobile();},
      tablet:(BuildContext context){return const PortfolioWeb();} ,
    );
  }
}

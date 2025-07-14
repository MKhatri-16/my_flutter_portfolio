import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';
import 'package:my_flutter_portfolio/ui/routing/navigation_stack_keys.dart';
import 'package:my_flutter_portfolio/ui/routing/stack.dart';
import 'package:my_flutter_portfolio/ui/utils/const/app_constants.dart';

import 'navigation_stack_item.dart';

@injectable
class MainRouterInformationParser extends RouteInformationParser<NavigationStack> {
  WidgetRef ref;
  BuildContext context;

  MainRouterInformationParser(@factoryParam this.ref, @factoryParam this.context);

  @override
  Future<NavigationStack> parseRouteInformation(RouteInformation routeInformation) async {
/*
    if (Session.userAccessToken != '') {
      /// Side bar List Api
      ref.read(drawerMenuController).disposeController();
    }*/

    debugPrint('........URL......${routeInformation.location}');

    final Uri uri = Uri.parse(routeInformation.location);
    // final queryParams = uri.queryParameters;
    final items = <NavigationStackItem>[];
    debugPrint('Stack Item Count - ${items.length}');
    // String? langStr = queryParams['lang'];

    // if (langStr != null) {
    //   await context.setLocale(Locale(langStr == "english" ? "en" : "hi"));
    // }

    for (var i = 0; i < uri.pathSegments.length; i = i + 1) {
      final key = uri.pathSegments[i];

      switch (key) {
        case Keys.portfolio:
          items.add(const NavigationStackItem.portfolio());
            break;

        default:
          items.add(const NavigationStackItem.portfolio());
        // default:
        //   items.add(const NavigationStackItem.notFound());
      }
    }
    showLog("Items >> ${items.toList().toString()}");
    if (items.isEmpty) {
      const fallback = NavigationStackItem.portfolio(); //NavigationStackItem.customerInfo();
      if (items.isNotEmpty && items.first is NavigationStackItemPortfolio) {
        items[0] = fallback;
      } else {
        items.insert(0, fallback);
      }
    }
    return NavigationStack(items);
  }

  ///THIS IS IMPORTANT: Here we restore the web history
  @override
  RouteInformation restoreRouteInformation(NavigationStack configuration) {
    final location = configuration.items.fold<String>('', (previousValue, element) {
      return previousValue +
          element.when(
            portfolio: () => '/${Keys.portfolio}',
          );
    });

    ///Return null will be stay in first route page  , if we reached first page then location will empty
    return RouteInformation(location: location);
  }
}

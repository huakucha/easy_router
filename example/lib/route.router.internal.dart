// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// RouterGenerator
// **************************************************************************

import 'package:easy_router/route.dart';
import 'package:example/page_a.dart';
import 'package:example/page_b.dart';
import 'package:example/page_c.dart';

class EasyRouterInternalImpl extends EasyRouterInternal {
  EasyRouterInternalImpl();
  final Map<String, dynamic> routeMap = {
    '/pagea': PageA,
    '/pageb': PageB,
    '/pagec': PageC
  };

  @override
  EasyRouteResult router(String url) {
    try {
      EasyRouteOption option = EasyRouteOption();
      final uri = Uri.parse(url);
      if (uri.scheme != 'easy') {
        return EasyRouteResult(state: EasyRouterResultState.NOT_FOUND);
      }
      if (uri.host != 'flutter') {
        return EasyRouteResult(state: EasyRouterResultState.NOT_FOUND);
      }
      String path = uri.path;
      if (path == null) {
        return EasyRouteResult(state: EasyRouterResultState.NOT_FOUND);
      }
      option.url = url;
      option.params = uri.queryParameters;
      final Type pageClass = routeMap[path];
      if (pageClass == null) {
        return EasyRouteResult(state: EasyRouterResultState.NOT_FOUND);
      }
      final dynamic classInstance = createInstance(pageClass, option);
      return EasyRouteResult(
          widget: classInstance, state: EasyRouterResultState.FOUND);
    } catch (e) {
      return EasyRouteResult(state: EasyRouterResultState.NOT_FOUND);
    }
  }

  dynamic createInstance(Type clazz, EasyRouteOption option) {
    switch (clazz) {
      case PageA:
        return PageA(option);
      case PageB:
        return PageB(option);
      case PageC:
        return PageC(option);
      default:
        return null;
    }
  }
}

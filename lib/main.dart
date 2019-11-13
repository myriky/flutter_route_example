import 'package:flutter/material.dart';
import 'package:flutter_simple_router/screen_404.dart';
import 'package:flutter_simple_router/screen_b.dart';
import 'package:flutter_simple_router/screen_c.dart';
import 'package:flutter_simple_router/screen_root.dart';
import 'package:path/path.dart' as p;
import 'package:flutter_simple_router/screen_a.dart';

void main() => runApp(FluuterSimpleRouterSample());

class FluuterSimpleRouterSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Simple Router',
        onGenerateRoute: (RouteSettings settings) {
          assert(settings.name.indexOf("/") == 0,
              "[ROUTER] routing MUST begin with '/'");

          print("[ROUTER] $settings");
          print("[ROUTER] ${settings.name} ${settings.arguments}");

          var _refined = settings.name.replaceFirst("/", "");

          var pathParams = p.split(_refined.split("?").length > 1
              ? _refined.split("?")[0]
              : _refined);

          Map<String, dynamic> arguments = settings.arguments ??
              Uri.parse(settings.name.replaceFirst("/", "")).queryParameters ??
              {};

          var dest = pathParams.isNotEmpty ? pathParams.first : null;

          print("[ROUTER][pathParams] : $pathParams");
          print("[ROUTER][Arguments] : $arguments");
          print("[ROUTER][DEST] : $dest");

          if (settings.isInitialRoute) {
            print('[ROUTER] -> [ROOT]');
            return MaterialPageRoute(builder: (context) => ScreenRoot());
          }

          switch (dest) {
            case 'screen_a': // for /screen_a
              String param = pathParams.length > 1 ? pathParams[1] : null;
              print(
                  "[ROUTE] /screen_a -> pathParam : $param, arguments: $arguments");
              return MaterialPageRoute(
                  builder: (context) => ScreenA(param: param));

            case 'screen_b': // for /screen_b
              print("[ROUTE] /screen_b -> arguments: $arguments");
              print(arguments.runtimeType);
              return MaterialPageRoute(
                  builder: (context) => ScreenB(
                      title: arguments["param1"], desc: arguments["param2"]));

            case 'screen_c': // for /screen_b
              String param = pathParams.length > 1 ? pathParams[1] : null;
              int paramInt = int.tryParse(param);
              print(
                  "[ROUTE] /screen_c -> pathParam : $param, arguments: $arguments");
              return MaterialPageRoute(
                  builder: (context) => ScreenC(id: paramInt));

            default:
              return MaterialPageRoute(builder: (context) => Screen404());
          }
        },
        initialRoute: "/");
  }
}

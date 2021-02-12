import 'package:spacex/app/bloc/app_bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:spacex/Ui/splash_screen/splash_screen.dart';
import '../injectoin.dart';
import 'bloc/app_event.dart';
import 'bloc/app_state.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final _AppBloc = sl<AppBloc>();

  @override
  void initState() {
    _AppBloc.add(IniEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
        bloc: _AppBloc,
        builder: (BuildContext context, AppState state) {
          return StreamBuilder(builder: (context, snapshotLanguage) {
            return MaterialApp(
              title: "App", color: Color.fromRGBO(16, 150, 141, 1),
              theme: ThemeData(
                  primarySwatch: createMaterialColor(Color(0xFF10968D)),
                  fontFamily: 'GoogleSans'),
              home: SplashScreen(),
              // SplashScreen(state.loginState),
            );
          });
        });
  }

  MaterialColor createMaterialColor(Color color) {
    List strengths = <double>[.05];
    Map swatch = <int, Color>{};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    strengths.forEach((strength) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    });
    return MaterialColor(color.value, swatch);
  }
}

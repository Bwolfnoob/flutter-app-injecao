import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_injecao/models/cafe_maker.dart';
import 'package:flutter_app_injecao/pages/blocs/cafe_bloc.dart';
import 'package:flutter_app_injecao/pages/home_page.dart';

import 'models/cafe_curto.dart';
import 'models/cafe_longo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),

        home: HomePage(),
      ),
      //add yours BLoCs controlles
      blocs: [
        Bloc((i) => CafeBloc(i.get<CafeLongo>()))
        //Bloc((i) => CafeBloc(i.get<CafeCurto>()))
      ],
      //add Other Object to provider
      dependencies: [
        Dependency((i) => CafeCurto()),
        Dependency((i) => CafeLongo()),
      ],
    );
  }
}

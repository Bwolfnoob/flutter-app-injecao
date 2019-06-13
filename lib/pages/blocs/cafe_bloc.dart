import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter_app_injecao/models/cafe_maker.dart';

class CafeBloc extends BlocBase {
  final CafeMaker cafeMaker;
  CafeBloc(this.cafeMaker);

  fazerCafe() => cafeMaker.fazerCafe();
  getBackground() => cafeMaker.backgroundImg();

  @override
  void dispose() {
    super.dispose();
  }

}
import 'package:flutter/material.dart';
import 'package:example/material_app.dart';
import 'package:bloc/bloc.dart';

class MyBlocDelegate extends BlocDelegate {
  @override
  void onError(Bloc bloc, Object error, StackTrace stacktrace) {
    super.onError(bloc, error, stacktrace);
    print('${bloc.runtimeType} $error');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print('${bloc.runtimeType} $transition');
  }
}

void main() {
  BlocSupervisor.delegate = MyBlocDelegate();
  runApp(MyMaterialApp());
}

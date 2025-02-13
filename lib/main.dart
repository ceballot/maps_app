import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maps_app/blocs/blocs.dart';
import 'package:maps_app/screens/screens.dart';

void main() {
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(create: (_) => GpsBloc()),
      BlocProvider(create: (_) => LocationBloc()),
      BlocProvider(create: (_) => MapBloc()),
    ],
    child: const MapsApp(),
  ));
}

class MapsApp extends StatelessWidget {
  const MapsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoadingScreen(),
    );
  }
}

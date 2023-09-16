import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zappy_cart/applications/bloc/cart_bloc.dart';
import 'package:zappy_cart/core/colors/colors.dart';
import 'package:zappy_cart/presentation/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CartBloc(),
      child: MaterialApp(
        theme: ThemeData(
          buttonTheme: ButtonThemeData(
            colorScheme: ColorScheme.fromSwatch(backgroundColor: appColor),
          ),
          primarySwatch: Colors.green,
          colorScheme: ColorScheme.fromSeed(seedColor: appColor),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        home: const HomeScreen(),
      ),
    );
  }
}

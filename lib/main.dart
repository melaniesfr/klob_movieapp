import 'package:flutter/material.dart';
import 'package:klob_movieapp/pages/main_page.dart';
import 'package:klob_movieapp/providers/movie_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => MovieProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => MainPage(),
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:kedai_buku_kopi_mobile/screens/login.dart';
import 'package:provider/provider.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
        title: 'Kedai Buku Kopi',
        theme: ThemeData(
          primaryColor: const Color(0xFF4A628A),
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: const Color(0xFF4A628A),
            secondary: const Color(0xFFF3F3E0),
          ),
        ),
        home: const LoginPage(),
      ),
    );
  }
}

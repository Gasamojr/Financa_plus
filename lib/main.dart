import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/home_screen.dart';
import 'screens/new_transaction_screen.dart';

void main() {
  runApp(const FinancaPlusApp());
}

class FinancaPlusApp extends StatelessWidget {
  const FinancaPlusApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Finança+',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const LoginScreen(),
      routes: {
        '/home': (_) => const HomeScreen(),
        '/nova-transacao': (_) => const NewTransactionScreen(),
      },
    );
  }
}

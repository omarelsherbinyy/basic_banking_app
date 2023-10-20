import 'package:basic_bank_app/customers.dart';
import 'package:flutter/material.dart';

class CustomersScreen extends StatelessWidget {
  const CustomersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic Bank App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Basic Bank App'),
            backgroundColor: Colors.green,
          ),
          body: const Customers()),
    );
  }
}

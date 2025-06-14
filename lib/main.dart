import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/components/CpfInputFormatter.dart';
import 'package:flutter_application_1/model/hospede_model.dart';
import 'package:flutter_application_1/pages/hospedes_list_screen.dart';
import 'package:flutter_application_1/pages/login.dart';
import 'package:flutter_application_1/service/hospede_manager.dart';
import 'package:flutter_application_1/service/sesseion.dart';
import 'package:intl/intl.dart'; // <-- NÃO ESQUEÇA DE IMPORTAR

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Hotel',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
        backgroundColor: Colors.deepPurple, // Cor da AppBar
        iconTheme: IconThemeData(color: Colors.white), // Ícones brancos (menu, voltar, etc)
        titleTextStyle: TextStyle( // Texto branco
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      ),
      home: const LoginUsuario(title: 'Login'),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:i_service_4/src/views/client_services_list_view.dart';
import 'package:i_service_4/src/views/costumer_view.dart';
import 'package:i_service_4/src/views/login_view.dart';
import 'package:i_service_4/src/views/register_service_view.dart';
import 'package:i_service_4/src/views/register_user_view.dart';
import 'package:i_service_4/src/views/provider_services_list_view.dart';

import 'src/data/banco_dados.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final BancoDados bancoDados = BancoDados();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const CostumerView(),
        '/login_user': (context) => LoginView(bancoDados: bancoDados),
        '/register_user': (context) => RegisterUserView(bancoDados: bancoDados),
        '/register_service': (context) => RegisterServiceView(
              bancoDados: bancoDados,
              onServiceAdded: VoidCallbackAction.new,
            ),
        '/provider_services': (context) =>
            ProviderServicesListView(bancoDados: bancoDados),
        '/client_services': (context) =>
            ClientServicesListView(bancoDados: bancoDados),
      },
    );
  }
}

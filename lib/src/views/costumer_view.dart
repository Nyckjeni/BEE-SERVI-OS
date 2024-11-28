import 'package:flutter/material.dart';
import 'package:i_service_4/src/data/banco_dados.dart';
import 'package:i_service_4/src/views/login_view.dart';
import 'package:i_service_4/src/views/register_user_view.dart';

class CostumerView extends StatelessWidget {
  const CostumerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFDE59),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final BancoDados bancoDados = BancoDados();
          return Padding(
            padding:
                EdgeInsets.symmetric(horizontal: constraints.maxWidth * 0.05),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Image.asset(
                      '../../assets/images/titulo.png',
                      width: constraints.maxWidth,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Material(
                      borderRadius: BorderRadius.circular(28),
                      child: Ink(
                        height: 64,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(28),
                          color: const Color(0xff1E232C),
                        ),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(28),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    LoginView(bancoDados: bancoDados),
                              ),
                            );
                          },
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Entrar',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(28),
                      child: Ink(
                        height: 64,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(28),
                          color: const Color(0xffffffff),
                        ),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(28),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    RegisterUserView(bancoDados: bancoDados),
                              ),
                            );
                          },
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Cadastrar-se',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: const Color(0xff1E232C),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

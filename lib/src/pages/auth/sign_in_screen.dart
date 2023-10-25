import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:quintana/src/auth/sign_up_screen.dart';
import 'package:quintana/src/base/base_screen.dart';
import 'package:quintana/src/config/custom_colors.dart';
import 'package:image/image.dart' as img;

import 'components/custom_text_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;
    final originalImage = Image.asset('asset/tribunatw.png');

    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              SizedBox(
                width: size.width,
                height: size.height * 0.3,
                child: originalImage,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //Nome do app
                    const Text.rich(
                      TextSpan(
                        style: TextStyle(
                          fontSize: 40,
                        ),
                        children: [
                          TextSpan(
                            text: 'Tribuna',
                            style: TextStyle(
                              color: Color(0xFFecb920),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: 'TW',
                            style: TextStyle(
                              color: Color(0xFFf1f1f1),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
//Animação Categorias
                    SizedBox(
                      height: 30,
                      child: DefaultTextStyle(
                        style: const TextStyle(
                          fontSize: 22,
                        ),
                        child: AnimatedTextKit(
                          pause: Duration.zero,
                          repeatForever: true,
                          animatedTexts: [
                            FadeAnimatedText('Tribal Wars'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
//Formulário
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 40,
                ),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                        top: Radius.circular(45)),
                    color: Color(0xFFf1f1f1) ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
//E-mail
                    CustomTextField(
                      icon: Icons.email,
                      label: 'E-mail',
                      labelStyle: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                    ),
//Senha
                    CustomTextField(
                      icon: Icons.lock,
                      label: 'Senha',
                      isSecret: true,
                      labelStyle: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                    ),

//Botão de entrar
                    SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xFF800080),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18)
                          )
                        ),
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (c) {
                                return  const BaseScreen();
                              })
                          );
                        },
                        child: const Text(
                          'Entrar',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
//Esqueceu a senha
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Esqueceu a senha?',
                          style: TextStyle(
                            color: CustomColors.customContrasColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
// Divisor
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 10,
                      ),
                      child: Row(
                        children: const [
                          Expanded(
                            child: Divider(
                              color: Colors.black,
                              thickness: 2,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            child: Text('Ou', style: TextStyle(fontWeight: FontWeight.bold),),
                          ),
                          Expanded(
                            child: Divider(
                              color: Colors.black,
                              thickness: 2,
                            ),
                          ),
                        ],
                      ),
                    ),
//Botão de novo usuário
                    SizedBox(
                      height: 50,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          primary: const Color(0xFF800080),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                          side: const BorderSide(width: 2, color: Color(0xFF993399)),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (c) {
                                return SignUpScreen();
                              },
                            ),
                          );
                        },
                        child: const Text(
                          'Criar conta',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

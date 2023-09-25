import 'package:flutter/material.dart';
import 'package:quintana/src/auth/components/custom_text_field.dart';
import 'package:quintana/src/config/custom_colors.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {


    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: CustomColors.customSwatchColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              const Expanded(
                child: Center(
                  child: Text(
                    'Cadastro de Usuário',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                    ),
                  ),
                ),
              ),
//Formulário
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 40,
                ),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(45),
                    )),

//Construção do Formulário
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [

//Formulário
                    CustomTextField(
                      icon: Icons.email,
                      label: 'E-mail',
                    ),
                    CustomTextField(
                      icon: Icons.lock,
                      label: 'Senha',
                      isSecret: true,
                    ),
                    CustomTextField(
                      icon: Icons.person,
                      label: 'Nome',
                    ),
                    CustomTextField(
                      icon: Icons.phone,
                      label: 'Celular',
                    ),
                    CustomTextField(
                      icon: Icons.file_copy,
                      label: 'CPF',
                    ),
//Botão Salvar
                    SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Cadastrar usuário',
                          style: TextStyle(fontSize: 18),
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

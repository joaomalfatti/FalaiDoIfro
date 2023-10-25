import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:quintana/src/auth/components/custom_text_field.dart';
import 'package:image/image.dart' as img;

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final cpfFormatter = MaskTextInputFormatter(
    mask: '###.###.###-##',
    filter: {'#': RegExp(r'[0-9]')},
  );

  final phoneFormatter = MaskTextInputFormatter(
    mask: '## # ####-####',
    filter: {'#': RegExp(r'[0-9]')},
  );

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

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
                            text: 'Cadastro ',
                            style: TextStyle(
                              color: Color(0xFFecb920),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: 'Usuário',
                            style: TextStyle(
                              color: Color(0xFFf1f1f1),
                              fontWeight: FontWeight.bold,
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
                          color: Color(0xFFf1f1f1),
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
                            labelStyle: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                          ),
                          CustomTextField(
                            icon: Icons.lock,
                            label: 'Senha',
                            labelStyle: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                            isSecret: true,
                          ),
                          CustomTextField(
                            icon: Icons.person,
                            label: 'Nome',
                            labelStyle: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                          ),
                          CustomTextField(
                            icon: Icons.phone,
                            label: 'Celular',
                            labelStyle: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                            inputFormatter: [phoneFormatter],
                          ),
                          CustomTextField(
                            icon: Icons.file_copy,
                            label: 'CPF',
                            labelStyle: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                            inputFormatter: [cpfFormatter],
                          ),
//Botão Salvar
                          SizedBox(
                            height: 50,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: const Color(0xFF800080),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18)
                                  )
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
            ],
          ),
        ),
      ),
    );
  }
}

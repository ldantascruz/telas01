import 'package:flutter/material.dart';
import 'package:telas/formBotaoEtc/check_box.dart';
import 'package:telas/formBotaoEtc/form_criar_conta.dart';
import 'package:telas/telas/login.dart';

import '../cor_estilo_texto.dart';
import '../formBotaoEtc/botao_login.dart';
import '../formBotaoEtc/opcao_login_social.dart';

class TelaInscricao extends StatelessWidget {
  const TelaInscricao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 70,
          ),
          Padding(
            padding: fDefaultPadding,
            child: Text(
              "Crie Uma Nova Conta",
              style: titleText,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: fDefaultPadding,
            child: Row(
              children: [
                Text(
                  "Já tem uma conta?",
                  style: subTitle,
                ),
                const SizedBox(
                  width: 5,
                ),
                //rota para inicio login
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (contex) => const TelaLogin()));
                  },
                  child: Text(
                    "Entrar",
                    style: textButton.copyWith(
                      decoration: TextDecoration.underline,
                      decorationThickness: 1,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: fDefaultPadding,
            //formulario input dados.
            child: FormCriandoConta(),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: fDefaultPadding,
            child: CheckBox("Concordo com os termos e condições."),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: fDefaultPadding,
            child: CheckBox("Declaro que sou maior de 18 anos"),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: fDefaultPadding,
            child: BotaoLogin(textoBotao: "Criar Conta"),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: fDefaultPadding,
            child: Text(
              "Ou entre com:",
              style: subTitle.copyWith(color: fBlackColor),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: fDefaultPadding,
            child: OpcaoLogin(),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      )),
    );
  }
}

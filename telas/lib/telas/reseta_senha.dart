
import 'package:flutter/material.dart';
import 'package:telas/telas/login.dart';

import '../cor_estilo_texto.dart';
import '../formBotaoEtc/botao_login.dart';
import '../formBotaoEtc/resetar_senha_form.dart';

class ResetarSenha extends StatelessWidget {
  const ResetarSenha({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: fDefaultPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, //alinhar
          children: [
            const SizedBox(
              height: 50,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TelaLogin()));
                },
                child: Text(
                  "Voltar",
                  style: textButton.copyWith(
                      decoration: TextDecoration.underline,
                      decorationThickness: 1),
                )),
            const SizedBox(
              height: 200,
            ),
            Text(
              "Alterar Senha",
              style: titleText,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "Por favor, insira o seu endereço de Email.",
              style: subTitle.copyWith(fontWeight: FontWeight.w600), // bold.
            ),
            const SizedBox(
              height: 10,
            ),
            const ResetSenha(),
            const SizedBox(
              height: 40,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const TelaLogin())); //volta pro login. pode ir para uma tela "Um email foi enviado ",por ex
                },
                child: const BotaoLogin(textoBotao: "Alterar Senha"))
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:telas/formBotaoEtc/form_login.dart';
import 'package:telas/telas/reseta_senha.dart';

import '../cor_estilo_texto.dart';
import '../formBotaoEtc/botao_login.dart';
import '../formBotaoEtc/opcao_login_social.dart';
import 'nova_conta.dart';


class TelaLogin extends StatelessWidget {
  const TelaLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: fDefaultPadding,
      // deixar visivel campos enquanto digita
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 120),
            Text(
              "Seja Bem-Vindo",
              style: titleText,
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  "Não Tem Uma Conta?",
                  style: subTitle,
                ),
                const SizedBox(
                  width: 5,
                ),
                //rota para cadastro
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const TelaInscricao()),
                    );
                  },
                  child: Text("Cadastre-se",
                      style: textButton.copyWith(
                          decoration: TextDecoration.underline,
                          decorationThickness: 1)),
                ),
              ], //CRIA FORM LOGIN ABAIXO
            ),
            const SizedBox(
              height: 10,
            ),
            //USANDO CLASSE
            const LoginForm(),
            //esqueceu senha
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ResetarSenha()));
              },
              child: const Text(
                "Esqueceu a Senha?",
                style: TextStyle(
                  color: fcinzaColor,
                  fontSize: 14,
                  decoration: TextDecoration.underline,
                  decorationThickness: 1,
                ),
              ),
            ),
            //botaoLogin
            const SizedBox(
              height: 20,
            ),
            const BotaoLogin(
              textoBotao: "ENTRAR",
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Ou entre com: ",
              style: subTitle.copyWith(color: fBlackColor),
            ),
            const SizedBox(
              height: 20,
            ),
            const OpcaoLogin(),
          ],
        ),
      ),
    ));
  }
}

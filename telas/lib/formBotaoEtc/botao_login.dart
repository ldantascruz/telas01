// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:telas/cor_estilo_texto.dart';


class BotaoLogin extends StatelessWidget {
  final String textoBotao;
  const BotaoLogin({Key? key, required this.textoBotao}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height:
          MediaQuery.of(context).size.height * 0.08, //media para tamanho btn
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: fCorPrincipal),
      child: Text(
        textoBotao,
        style: textButton.copyWith(color: fWhiteColor),
      ),
    );
  }
}

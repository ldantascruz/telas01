// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class OpcaoLogin extends StatelessWidget {
  const OpcaoLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ContruirBotao(
          iconImage: const Image(
            height: 20,
            width: 20,
            image: AssetImage('imagens/facebook.png'),
          ),
          textoBotao: "Facebook",
        ),
        ContruirBotao(
          iconImage: const Image(
            height: 20,
            width: 20,
            image: AssetImage('imagens/google.png'),
          ),
          textoBotao: "Google",
        ),
      ],
    );
  }
}

class ContruirBotao extends StatelessWidget {
  final Image iconImage;
  final String textoBotao;
  // ignore: use_key_in_widget_constructors
  ContruirBotao({required this.iconImage, required this.textoBotao});
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Container(
      height: mediaQuery.height * 0.06,
      width: mediaQuery.width * 0.36,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center, //alinha texto
        children: [
          iconImage,
          const SizedBox(
            width: 5,
          ),
          Text(textoBotao),
        ],
      ),
    );
  }
}

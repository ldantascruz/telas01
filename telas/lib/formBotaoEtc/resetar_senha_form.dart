import 'package:flutter/material.dart';
import 'package:telas/cor_estilo_texto.dart';

class ResetSenha extends StatelessWidget {
  const ResetSenha({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20), // distanciar barra email titulo.
      child: TextFormField(
        decoration: const InputDecoration(
            hintText: "Email",
            hintStyle: TextStyle(color: fCampoCor),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: fCorPrincipal))),
      ),
    );
  }
}

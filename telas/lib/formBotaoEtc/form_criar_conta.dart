// ignore_for_file: library_private_types_in_public_api, file_names

import 'package:flutter/material.dart';
import 'package:telas/cor_estilo_texto.dart';

class FormCriandoConta extends StatefulWidget {
  const FormCriandoConta({Key? key}) : super(key: key);

  @override
  _FormCriandoContaState createState() => _FormCriandoContaState();
}

class _FormCriandoContaState extends State<FormCriandoConta> {
  bool _esconderInput = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        construirFormInput("Nome", false),
        construirFormInput("Sobrenome", false),
        construirFormInput("Email", false),
        construirFormInput("Telefone", false),
        construirFormInput("Senha", true),
        construirFormInput("Confirmar Senha", true),
      ],
    );
  }

  Padding construirFormInput(String hint, bool pass) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        obscureText: pass ? _esconderInput : false,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(color: fCampoCor),
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: fCorPrincipal)),
          suffixIcon: pass
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      _esconderInput = !_esconderInput;
                    });
                  },
                  icon: _esconderInput
                      ? const Icon(
                          Icons.visibility_off,
                          color: fCampoCor,
                        )
                      : const Icon(
                          Icons.visibility,
                          color: fCorPrincipal,
                        ),
                )
              : null,
        ),
      ),
    );
  }
}

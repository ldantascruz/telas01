// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'package:telas/cor_estilo_texto.dart';

class CheckBox extends StatefulWidget {
  final String texto;
  // ignore: use_key_in_widget_constructors
  const CheckBox(this.texto);
  @override
  // ignore: library_private_types_in_public_api
  _CheckBoxState createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool _selecionadoBox = false;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(children: [
        GestureDetector(
          onTap: () {
            setState(() {
              _selecionadoBox = !_selecionadoBox;
            });
          },
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: fDarkGreyColor)),
            child: _selecionadoBox
                ? const Icon(
                    Icons.check,
                    size: 17,
                    color: Colors.blue,
                  )
                : null,
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Text(widget.texto),
      ])
    ]);
  }
}

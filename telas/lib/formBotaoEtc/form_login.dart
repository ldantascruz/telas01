import 'package:flutter/material.dart';
import 'package:telas/cor_estilo_texto.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool _naoMostraIcone = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildInputForm("E-mail", false), //false para n aparecer icone
        buildInputForm("Senha", true),
      ],
    );
  }

  Padding buildInputForm(String label, bool pass) {
    // bool do iconButton
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        obscureText: pass ? _naoMostraIcone : false,
        decoration: InputDecoration(
            labelText: label,
            labelStyle: const TextStyle(color: fCampoCor),
// detalhe barra
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: fCorPrincipal),
            ),
            suffixIcon: pass
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        _naoMostraIcone = !_naoMostraIcone;
                      });
                    },
                    icon: _naoMostraIcone
                        ? const Icon(Icons.visibility_off, color: fCampoCor)
                        : const Icon(
                            Icons.visibility,
                            color: fCorPrincipal,
                          ))
                : null),
      ),
    );
  }
}

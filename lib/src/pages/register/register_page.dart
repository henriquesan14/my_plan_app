import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

// ignore: must_be_immutable
class RegisterPage extends StatefulWidget {
  RegisterPage({Key? key}) : super(key: key);

  bool isVisible = true;

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  var maskFormatter = MaskTextInputFormatter(
      mask: '(##) # ####-####',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leadingWidth: 42,
          leading: CircleAvatar(
            radius: 30,
            backgroundColor: const Color(0xfff4f4f4),
            child: IconButton(
              highlightColor: const Color(0xfff4f4f4),
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Cadastrar",
                  style: GoogleFonts.poppins(
                      color: const Color(0xff1e1e2d),
                      fontSize: 32,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 40,
                ),
                Text("Nome completo",
                    style: GoogleFonts.poppins(
                        color: const Color(0xffa2a2a7), fontSize: 15)),
                TextFormField(
                  textAlignVertical: TextAlignVertical.bottom,
                  style: GoogleFonts.gothicA1(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff333333)),
                  decoration: const InputDecoration(
                      prefixIcon: Icon(
                    Icons.person_outline,
                    color: Color(0xffa2a2a7),
                    size: 18,
                  )),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text("Número de celular",
                    style: GoogleFonts.poppins(
                        color: const Color(0xffa2a2a7), fontSize: 15)),
                TextFormField(
                  inputFormatters: [maskFormatter],
                  textAlignVertical: TextAlignVertical.bottom,
                  style: GoogleFonts.gothicA1(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff333333)),
                  decoration: const InputDecoration(
                      prefixIcon: Icon(
                    Icons.phone,
                    color: Color(0xffa2a2a7),
                    size: 18,
                  )),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text("Endereço de e-email",
                    style: GoogleFonts.poppins(
                        color: const Color(0xffa2a2a7), fontSize: 15)),
                TextFormField(
                  textAlignVertical: TextAlignVertical.bottom,
                  style: GoogleFonts.gothicA1(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff333333)),
                  decoration: const InputDecoration(
                      prefixIcon: Icon(
                    Icons.email_outlined,
                    color: Color(0xffa2a2a7),
                    size: 18,
                  )),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text("Senha",
                    style: GoogleFonts.poppins(
                        color: const Color(0xffa2a2a7), fontSize: 15)),
                TextFormField(
                  obscureText: widget.isVisible,
                  textAlignVertical: TextAlignVertical.bottom,
                  style: GoogleFonts.gothicA1(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff333333)),
                  decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.lock_outline,
                        color: Color(0xffa2a2a7),
                        size: 18,
                      ),
                      suffixIcon: IconButton(
                        icon: widget.isVisible
                            ? const Icon(Icons.visibility_outlined,
                                color: Color(0xffa2a2a7), size: 18)
                            : const Icon(Icons.visibility_off_outlined,
                                color: Color(0xffa2a2a7), size: 18),
                        onPressed: () {
                          setState(() {
                            widget.isVisible = !widget.isVisible;
                          });
                        },
                      )),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 56,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12), // <-- Radius
                      ),
                    ),
                    child: Text("Criar conta",
                        style: GoogleFonts.poppins(
                            fontSize: 16, fontWeight: FontWeight.w700)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Já tem uma conta? ",
                      style: GoogleFonts.poppins(
                          color: const Color(0xffa2a2a7),
                          fontWeight: FontWeight.w500),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("Fazer login",
                          style: GoogleFonts.poppins(
                              color: const Color(0xff0066ff),
                              fontWeight: FontWeight.w500)),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}

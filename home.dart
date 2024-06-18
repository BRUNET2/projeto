import 'package:flutter/material.dart';
import 'perfil_cliente.dart';
import 'cronograma_personalizado.dart';
import 'dicas_sugestoes.dart';
import 'sign_up.dart';

class TelaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cronograma Capilar'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Adicionando a logo com o texto "Kallen's"
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Text(
                  "KALLEN'S",
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple, // Cor roxa
                  ),
                ),
              ),
              // Mensagem de boas-vindas
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Text(
                  "Bem-vindo ao seu cronograma capilar personalizado!",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: Colors.black, // Cor preta
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              // Ícone de uma mulher com cabelo ondulado
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: CircleAvatar(
                  radius: 75,
                  backgroundColor: Colors.purple,
                  child: Icon(
                    Icons.person,
                    size: 100,
                    color: Colors.white,
                  ),
                ),
              ),
              ElevatedButton.icon(
                icon: Icon(Icons.account_circle), // Ícone de perfil
                label: const Text('Perfil do Cliente'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TelaPerfilCliente()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  textStyle: TextStyle(fontSize: 16), // Tamanho do texto
                ),
              ),
              ElevatedButton.icon(
                icon: Icon(Icons.calendar_today), // Ícone de cronograma
                label: const Text('Cronograma Personalizado'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TelaCronogramaPersonalizado()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  textStyle: TextStyle(fontSize: 16), // Tamanho do texto
                ),
              ),
              ElevatedButton.icon(
                icon: Icon(Icons.lightbulb_outline), // Ícone de dicas
                label: const Text('Dicas e Sugestões'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TelaDicasSugestoes()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  textStyle: TextStyle(fontSize: 16), // Tamanho do texto
                ),
              ),
              ElevatedButton.icon(
                icon: Icon(Icons.person_add), // Ícone de sign-up
                label: const Text('Sign Up'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TelaSignUp()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  textStyle: TextStyle(fontSize: 16), // Tamanho do texto
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

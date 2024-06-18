import 'package:flutter/material.dart';

class TelaPerfilCliente extends StatefulWidget {
  @override
  _TelaPerfilClienteState createState() => _TelaPerfilClienteState();
}

class _TelaPerfilClienteState extends State<TelaPerfilCliente> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  String? _tipoCabelo;
  String? _tipoCacho;

  Map<String, dynamic> _clienteData = {};

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  void _salvarCliente() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _clienteData = {
          'username': _usernameController.text,
          'password': _passwordController.text,
          'nome': _nameController.text,
          'email': _emailController.text,
          'tipoCabelo': _tipoCabelo,
          'tipoCacho': _tipoCacho,
        };
      });
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Perfil salvo com sucesso!')));
      print(_clienteData);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil do Cliente'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _usernameController,
                decoration: InputDecoration(labelText: 'Usuário'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira seu usuário';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(labelText: 'Senha'),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira sua senha';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Nome Completo'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira seu nome completo';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(labelText: 'Email'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira seu email';
                  } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                    return 'Por favor, insira um email válido';
                  }
                  return null;
                },
              ),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(labelText: 'Tipo de Cabelo'),
                value: _tipoCabelo,
                onChanged: (String? newValue) {
                  setState(() {
                    _tipoCabelo = newValue;
                  });
                },
                items: <String>['Liso', 'Ondulado', 'Cacheado', 'Crespo']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, selecione o tipo de cabelo';
                  }
                  return null;
                },
              ),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(labelText: 'Tipo de Cacho'),
                value: _tipoCacho,
                onChanged: (String? newValue) {
                  setState(() {
                    _tipoCacho = newValue;
                  });
                },
                items: <String>['2A', '2B', '2C', '3A', '3B', '3C', '4A', '4B', '4C']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, selecione o tipo de cacho';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _salvarCliente,
                child: Text('Salvar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

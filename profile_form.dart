import 'package:flutter/material.dart';

class ProfileForm extends StatefulWidget {
  @override
  _ProfileFormState createState() => _ProfileFormState();
}

class _ProfileFormState extends State<ProfileForm> {
  final _formKey = GlobalKey<FormState>();
  String? _name;
  String? _email;
  String? _curlType;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(
          padding: EdgeInsets.all(16.0),
          children: <Widget>[
        TextFormField(
      decoration: InputDecoration(labelText: 'Nome'),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Por favor, insira seu nome';
        }
        return null;
      },
      onSaved: (value) {
        _name = value;
      },
    ),
        SizedBox(height: 16.0),
        TextFormField(
        decoration: InputDecoration(labelText: 'Email'),
        validator: (value) {
        if (value!.isEmpty) {
        return 'Por favor, insira seu email';
        }

        return null;
       },
        onSaved: (value) {
        _email = value;
       },
       ),
        SizedBox(height: 16.0),
         Text('Tipo de Cachos'),
        DropdownButtonFormField<String>(
        value: _curlType,
        onChanged: (value) {
        setState(() {
        _curlType = value;
      });
      },

        items: ['Ondulado', 'Cacheado', 'Crespo', 'Liso'].map((String value) {
        return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
       );
        }).toList(),
        decoration: InputDecoration(
        labelText: 'Selecione o tipo de cachos',
       ),
       ),
         SizedBox(height: 16.0),
         ElevatedButton(
          onPressed: () {
          if (_formKey.currentState!.validate()) {
          _formKey.currentState!.save();

    }
    },
          child: Text('Cadastrar'),
    ),
    ],
    ),
    );
  }
}


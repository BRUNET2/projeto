import 'package:flutter/material.dart';
import 'package:projeto/profile_form.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro do Perfil do Cliente'),
      ),
      body: ProfileForm(),
    );
  }
}

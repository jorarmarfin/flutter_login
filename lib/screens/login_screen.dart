import 'package:flutter/material.dart';

import '../components/components.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static String routerName = 'login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FondoComponent(
          child: SingleChildScrollView(
              child: Column(
        children: [
          const SizedBox(
            height: 180,
          ),
          FormLoginComponent(
              child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(
                'Login',
                style: Theme.of(context).textTheme.headline5,
              ),
              const SizedBox(
                height: 30,
              ),
              _Formulario()
            ],
          )),
          SizedBox(
            height: 50,
          ),
          const Text('Crear nueva cuenta')
        ],
      ))),
    );
  }
}

class _Formulario extends StatelessWidget {
  const _Formulario({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        TextFormField(
          autocorrect: false,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              hintText: 'luis.mayta@gmail.com',
              labelText: 'Correo electronico'),
        )
      ],
    ));
  }
}

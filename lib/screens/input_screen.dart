import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormDaKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'jaime',
      'last_name': 'Ramirez',
      'email': 'jramireza69@hotmail.com',
      'password': '123456',
      'role': 'admin',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Forms and inputs'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormDaKey,
            child: Column(
              children: [
                CustomInputField(
                  labelText: 'Nombre',
                  hintText: 'Nombre del usuario',
                  fromProperty: 'first_name',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomInputField(
                    labelText: 'Apellido',
                    hintText: 'Apellido del usuario',
                    fromProperty: 'last_name',
                    formValues: formValues),
                const SizedBox(
                  height: 30,
                ),
                CustomInputField(
                  labelText: 'Email',
                  hintText: 'Email del usuario',
                  fromProperty: 'email',
                  formValues: formValues,
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomInputField(
                  labelText: 'Contraseña',
                  hintText: 'Pass del usuario',
                  fromProperty: 'password',
                  formValues: formValues,
                  isPassword: true,
                ),
                SizedBox(
                  height: 30,
                ),
                DropdownButtonFormField<String>(
                    value: 'Admin',
                    items: const [
                      DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                      DropdownMenuItem(
                          value: 'Auxiliar', child: Text('Auxiliar')),
                      DropdownMenuItem(
                          value: 'Inhouse', child: Text('Inhouse')),
                      DropdownMenuItem(
                          value: 'Coordinador', child: Text('Coordinador')),
                    ],
                    onChanged: (value) {
                      print(value);
                      formValues['role'] = value ?? 'admin';
                    }),
                ElevatedButton(
                  child: SizedBox(
                      width: double.infinity,
                      child: Center(child: Text('Guardar'))),
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    if (!myFormDaKey.currentState!.validate()) {
                      print('Formulario no valido');
                      return;
                    }

                    print(formValues);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

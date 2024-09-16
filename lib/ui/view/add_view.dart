import 'package:flutter/material.dart';
import 'package:koyo/components/custom_text_form_field.dart';

class AddView extends StatefulWidget {
  const AddView({super.key});

  @override
  State<AddView> createState() => _AddViewState();
}

class _AddViewState extends State<AddView> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
            key: _formKey,
            child: const Column(children: [
              CustomTextFormField(
                hintText: "Nom de l'abonnement / prélévement",
              )
            ])));
  }
}

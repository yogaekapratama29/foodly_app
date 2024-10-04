import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:foodly_app/widgets/text_form_fieldWidget.dart';


class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: TextFormFieldwidget(hintText: "Email", controller: TextEditingController(), textInputAction: TextInputAction.done),));
    }
}
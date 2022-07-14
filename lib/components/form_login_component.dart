import 'package:flutter/material.dart';

class FormLoginComponent extends StatelessWidget {
  const FormLoginComponent({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black, blurRadius: 15, offset: Offset(0, 5))
            ]),
        child: child,
      ),
    );
  }
}

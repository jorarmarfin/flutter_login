import 'package:flutter/material.dart';

class FondoComponent extends StatelessWidget {
  const FondoComponent({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey[400],
        child: Stack(
          children: [
            const _CajaBurbujas(),
            const Positioned(
              top: 90,
              left: 30,
              child: _Burbuja(),
            ),
            const Positioned(
              top: -20,
              left: -20,
              child: _Burbuja(),
            ),
            const Positioned(
              top: 10,
              right: 0,
              child: _Burbuja(),
            ),
            const Positioned(
              top: 160,
              right: 70,
              child: _Burbuja(),
            ),
            const _IconoHeader(),
            child
          ],
        ));
  }
}

class _IconoHeader extends StatelessWidget {
  const _IconoHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: 30),
          child: const Icon(
            Icons.person_pin,
            color: Colors.white,
            size: 100,
          )),
    );
  }
}

class _Burbuja extends StatelessWidget {
  const _Burbuja({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: const Color.fromRGBO(255, 255, 255, 0.05)),
    );
  }
}

class _CajaBurbujas extends StatelessWidget {
  const _CajaBurbujas({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.4,
      width: double.infinity,
      child: const Text('fondo'),
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromRGBO(63, 63, 156, 1),
        Color.fromRGBO(90, 70, 178, 1),
      ])),
    );
  }
}

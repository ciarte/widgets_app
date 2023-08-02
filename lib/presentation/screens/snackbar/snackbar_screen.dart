import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';
  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackback = SnackBar(
      content: const Text('Hola mundo'),
      action: SnackBarAction(label: 'Ok!', onPressed: () {}),
      duration: const Duration(seconds: 1),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackback);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: Text('Estas seguro?'),
        content: const Text(
            'khjvauydjf adsfguyadf aifdgyafbg afgvauye aeifdgio aohafoiue eoif aei ap aafopha8e afn alfh8q; fds'),
        actions: [
          TextButton(
              onPressed: () => context.pop(), child: const Text('cancelar')),
          FilledButton(
            onPressed: () => context.pop(),
            child: const Text('aceptar'),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBars & Dialogs'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FilledButton.tonal(
              onPressed: () {
                showAboutDialog(context: context, children: [
                  const Text('BlahSADGIB ASidgiDGHI Igdiugi bibiBIB')
                ]);
              },
              child: const Text('Licencias usadas')),
          FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: const Text('Mostrar dialogos'))
        ],
      )),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackbar(context),
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}

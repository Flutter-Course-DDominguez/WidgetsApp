import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const String name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    //? Clean current snackbars
    ScaffoldMessenger.of(context).clearSnackBars();

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: const Text('Hello World'),
      duration: const Duration(seconds: 2),
      action: SnackBarAction(
        label: 'Ok!',
        onPressed: () {},
      ),
    ));
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('¿Estás seguro?'),
        content: const Text(
            'Do eu cupidatat voluptate proident non proident aliqua reprehenderit in quis nostrud duis. Labore magna cillum ipsum consectetur culpa voluptate amet aliqua. Aute culpa eu in irure sit adipisicing sunt aute laborum eu. Velit quis nostrud dolore eiusmod esse eu. Laboris quis aute ipsum incididunt dolore consectetur est laboris in.'),
        actions: [
          TextButton(onPressed: () => context.pop(), child: const Text('Cancelar')),
          FilledButton(onPressed: () => context.pop(), child: const Text('Aceptar')),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars & Dialogs'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
                onPressed: () {
                  showAboutDialog(context: context, children: [
                    const Text(
                        'Mollit est eu id anim est nisi. Adipisicing aliqua reprehenderit nostrud proident duis ex Lorem nulla mollit nulla do ullamco veniam veniam. Esse nulla incididunt anim fugiat cillum ea quis consequat ea laboris velit cillum nisi ipsum. Adipisicing enim in nulla est aliqua aute id eiusmod sint ipsum non amet enim voluptate. Cillum ad adipisicing ut ullamco culpa pariatur sit tempor ipsum cillum elit cillum cupidatat laboris. Non ad ea mollit magna.')
                  ]);
                },
                child: const Text('Licencias utilizadas')),
            FilledButton.tonal(
                onPressed: () => openDialog(context),
                child: const Text('Mostrar diálogo')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
}

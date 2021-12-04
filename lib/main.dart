import 'package:flutter/material.dart';
import 'package:wisecrypto_slicing/config/routes/routes.dart' as router;

void main() {
  runApp(const WisecryptoApp());
}

class WisecryptoApp extends StatelessWidget {
  const WisecryptoApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wisecrypto App',
      onGenerateRoute: router.controller,
      initialRoute: router.initialRoute,
    );
  }
}


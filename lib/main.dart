import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wisecrypto_slicing/config/routes/routes.dart' as router;
import 'repository/user/user.dart';
import 'logic/user/user.dart';

void main() {
  runApp(const WisecryptoApp());
}

class WisecryptoApp extends StatelessWidget {
  const WisecryptoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => UserCubit(UserRepository())..fetchUser(),
        )
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Wisecrypto App',
        onGenerateRoute: router.controller,
        initialRoute: router.initialRoute,
      ),
    );
  }
}

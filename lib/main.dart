import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wisecrypto_slicing/config/routes/routes.dart' as router;
import 'package:wisecrypto_slicing/config/themes/themes.dart';
import 'repository/user/user.dart';
import 'logic/user/user.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: AppColor.white,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
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
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Wisecrypto App',
        theme: ThemeData(
          fontFamily: AppText.fontFamily,
          textTheme: Theme.of(context).textTheme.apply(
                bodyColor: AppText.defaultTextColor,
                displayColor: AppText.defaultTextColor,
              ),
        ),
        onGenerateRoute: router.controller,
        initialRoute: router.initialRoute,
      ),
    );
  }
}

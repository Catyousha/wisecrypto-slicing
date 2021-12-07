import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'config/routes/routes.dart';
import 'config/themes/themes.dart';
import 'logic/logic.dart';
import 'repository/repository.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: AppColor.white,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  initializeDateFormatting('id');
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
        ),
        BlocProvider(
          create: (_) => MarketCubit(MarketRepository())..fetchMarket(),
        ),
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
        onGenerateRoute: routeController,
        initialRoute: Routes.initialRoute,
      ),
    );
  }
}

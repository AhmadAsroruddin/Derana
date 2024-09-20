import 'package:derana_multipart/presentation/bloc/routes/route_cubit.dart';
import 'package:derana_multipart/presentation/pages/form/isi_formulir_page.dart';
import 'package:derana_multipart/presentation/pages/kamus_bahasa/kamus_bahasa.dart';
import 'package:derana_multipart/presentation/providers/page_provider.dart';
import 'package:derana_multipart/presentation/routes/router_delegate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import './locator.dart' as di;

void main() async {
  di.init();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late MyRouterDelegate myRouterDelegate;

  @override
  void initState() {
    myRouterDelegate = di.locator<MyRouterDelegate>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        BlocProvider(create: (_) => di.locator<RouteCubit>()),
        ChangeNotifierProvider(create: (context) => KondisiBahasaPageProvider())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routes: {
          IsiFormulirPage.routeName: (context) => const IsiFormulirPage(),
          KamusBahasa.routeName: (context) => const KamusBahasa()
        },
        home: Router(
          routerDelegate: myRouterDelegate,
          backButtonDispatcher: RootBackButtonDispatcher(),
        ),
      ),
    );
  }
}

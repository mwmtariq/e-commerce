import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_scaffold/ViewController/auth/auth.dart';
import 'package:flutter_scaffold/ViewController/blocks/auth_block.dart';
import 'package:flutter_scaffold/ViewController/cart.dart';
import 'package:flutter_scaffold/ViewController/categorise.dart';
import 'package:flutter_scaffold/ViewController/home/home.dart';
import 'package:flutter_scaffold/ViewController/localizations.dart';
import 'package:flutter_scaffold/ViewController/product_detail.dart';
import 'package:flutter_scaffold/ViewController/shop/shop.dart';
import 'package:flutter_scaffold/ViewController/wishlist.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  final Locale locale = Locale('en');
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider<AuthBlock>.value(value: AuthBlock())],
    child: MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [Locale('en'), Locale('ar')],
      locale: locale,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.deepOrange[500],
          accentColor: Colors.lightBlue[900],
          fontFamily: locale.languageCode == 'ar' ? 'Dubai' : 'Lato'),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => Home(),
        '/auth': (BuildContext context) => Auth(),
        '/shop': (BuildContext context) => Shop(),
        '/categorise': (BuildContext context) => Categorise(),
        '/wishlist': (BuildContext context) => WishList(),
        '/cart': (BuildContext context) => CartList(),
        '/products': (BuildContext context) => Products()
      },
    ),
  ));
}

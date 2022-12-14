import 'package:flutter_pas/common/my_colors.dart';
import 'package:flutter_pas/providers/auth_provider.dart';
import 'package:flutter_pas/providers/cart_provider.dart';
import 'package:flutter_pas/providers/favorite_provider.dart';
import 'package:flutter_pas/providers/product_provider.dart';
import 'package:flutter_pas/view/cart/cart.dart';
import 'package:flutter_pas/view/checkout/checkout.dart';
import 'package:flutter_pas/view/dashboard/dashboard.dart';
import 'package:flutter_pas/view/favorite/favorite_page.dart';
import 'package:flutter_pas/view/product_detail/product_detail.dart';
import 'package:flutter_pas/view/reset_password/reset_password.dart';
import 'package:flutter_pas/view/sign_in/sign_in.dart';
import 'package:flutter_pas/view/sign_up/sign_up.dart';
import 'package:flutter_pas/view/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ProductProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CartProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => FavoriteProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const SplashScreen(),
          '/dashboard': (context) => const DashboardPage(),
          '/sign-in': (context) => const SignInPage(),
          '/sign-up': (context) => const SignUpPage(),
          '/reset-password': (context) => const ResetPasswordPage(),
          '/cart': (context) => const CartPage(),
          '/checkout': (context) => const CheckoutPage(),
          '/favorite': (context) => const FavoritePage(),
        },
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.softGray,
      body: const SignInPage(),
    );
  }
}

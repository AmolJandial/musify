import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musify/src/auth/presentation/cubit/auth_cubit.dart';
import 'package:musify/src/auth/presentation/views/auth_body.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  static const routeName = 'auth';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: AuthBody(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musify/src/auth/presentation/cubit/auth_cubit.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  static const routeName = 'auth';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            onPressed: () => _handleAuth(context),
            child: Text('SIGN'),
          ),
        ),
      ),
    );
  }

  Future<void> _handleAuth(BuildContext context) async{
      await context.read<AuthCubit>().startSpotifyAuth();
  }
}

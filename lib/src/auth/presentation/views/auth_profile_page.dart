import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musify/src/auth/presentation/cubit/auth_cubit.dart';

class AuthProfileScreen extends StatelessWidget {
  const AuthProfileScreen({super.key});

  static Route<void> route(AuthCubit authCubit) => MaterialPageRoute(
    builder: (context) => BlocProvider.value(
      value: authCubit,
      child: const AuthProfileScreen(),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Set up your profile',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 32),

            ],
          ),
        ),
      ),
    );
  }
}

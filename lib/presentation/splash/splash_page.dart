import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lunar_lockout/application/auth/auth_bloc.dart';
import 'package:lunar_lockout/presentation/routes/router.gr.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.map(
            initial: (_) {},
            authenticated: (_) =>
                ExtendedNavigator.of(context).replace(Routes.gamePage),
            unAuthenticated: (_) =>
                ExtendedNavigator.of(context).replace(Routes.signInPage),
          );
        },
        child: const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        ));
  }
}

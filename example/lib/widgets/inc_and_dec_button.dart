import 'package:example/bloc/counter/counter_bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IncAndDecButton extends StatelessWidget {
  const IncAndDecButton({super.key});

  @override
  Widget build(BuildContext context) {
    final counterBloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              onPressed: () => counterBloc.add(CounterIncrement()),
              child: const Icon(Icons.add),
            ),
            FilledButton(
              onPressed: () => counterBloc.add(CounterDecrement()),
              child: const Icon(Icons.minimize),
            ),
          ],
        ),
      ),
    );
  }
}

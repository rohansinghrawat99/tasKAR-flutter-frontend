import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

typedef ProviderWidgetBuilder<T> = Widget Function(
    T provider, BuildContext context);

class StoreObserver<T> extends StatelessWidget {
  const StoreObserver({required this.builder});

  final ProviderWidgetBuilder<T> builder;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (BuildContext context) => builder(
        Provider.of<T>(context),
        context,
      ),
    );
  }
}
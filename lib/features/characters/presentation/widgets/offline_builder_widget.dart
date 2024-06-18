import 'package:flutter/material.dart';
import 'package:flutter_offline/flutter_offline.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/show_loading_indicator.dart';

import 'build_bloc_widget.dart';
import 'no_internet_widget.dart';

class OfflineBuilderWidget extends StatelessWidget {
  const OfflineBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return OfflineBuilder(
      connectivityBuilder: (
        BuildContext context,
        ConnectivityResult connectivity,
        Widget child,
      ) {
        final bool connected = connectivity != ConnectivityResult.none;
        if (connected) {
          return const BuildBlocWidget();
        } else {
          return const NoInternetWidget();
        }
      },
      child: const ShowLoadingIndicator(),
    );
  }
}

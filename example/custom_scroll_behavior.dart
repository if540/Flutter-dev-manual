import 'dart:ui';
import 'package:flutter/material.dart';

/// [io] touch dragDevices 新增 [web] mouseDevices drag 滑動與刷新
// 官方教學: https://docs.flutter.dev/release/breaking-changes/default-scroll-behavior-drag#copy-and-modify-existing-scrollbehavior
class MyCustomScrollBehaviorIOAndWeb extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}

class GameList extends StatelessWidget {
  final List games;
  const GameList({Key? key, required this.games}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // wrap ScrollConfiguration
    return ScrollConfiguration(
      behavior: MyCustomScrollBehaviorIOAndWeb(),
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 0.65,
        shrinkWrap: true,
        mainAxisSpacing: 0.0,
        crossAxisSpacing: 0.0,
        children: List.generate(games.length, (index) {
          return Text('Game $indnex');
        }),
      ),
    );
  }
}

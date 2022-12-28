import 'package:elvan/controller/index.dart';
import 'package:elvan/screens/home/widgets/bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final state = ref.watch(homeController);
    return Scaffold(
      body: state.screens[state.selectedScreenIndex],
      bottomNavigationBar: const BottomNavbar(),
    );
  }
}

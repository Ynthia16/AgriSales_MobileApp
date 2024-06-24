import 'package:flutter_riverpod/flutter_riverpod.dart';

class IndexBottomNavbarNotifier extends StateNotifier<int> {
  IndexBottomNavbarNotifier() : super(0);

  void updateIndex(int newIndex) {
    state = newIndex;
  }
}


import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:agrisale/RiverPod/notifier.dart';

final indexBottomNavbarProvider =
    StateNotifierProvider<IndexBottomNavbarNotifier, int>((ref) {
  return IndexBottomNavbarNotifier();
});



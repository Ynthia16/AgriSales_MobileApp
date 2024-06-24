import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:agrisale/notifier.dart';

final indexBottomNavbarProvider =
    StateNotifierProvider<IndexBottomNavbarNotifier, int>((ref) {
  return IndexBottomNavbarNotifier();
});



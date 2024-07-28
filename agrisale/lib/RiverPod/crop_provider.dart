import "package:flutter_riverpod/flutter_riverpod.dart";
import 'package:cloud_firestore/cloud_firestore.dart';

class CropState {
  final List<Map<String, dynamic>> crops;
  final bool isLoading;

  CropState({required this.crops, required this.isLoading});
}

class CropNotifier extends StateNotifier<CropState> {
  CropNotifier() : super(CropState(crops: [], isLoading: false));

  Future<void> fetchCrops() async {
    state = CropState(crops: state.crops, isLoading: true);
    final querySnapshot =
        await FirebaseFirestore.instance.collection('crops').get();
    final crops = querySnapshot.docs
        .map((doc) => {'id': doc.id, ...doc.data() as Map<String, dynamic>})
        .toList();
    state = CropState(crops: crops, isLoading: false);
  }

  Future<void> uploadCropData(Map<String, dynamic> cropData) async {
    await FirebaseFirestore.instance.collection('crops').add(cropData);
    await fetchCrops();
  }

  Future<void> deleteCrop(String cropId) async {
    await FirebaseFirestore.instance.collection('crops').doc(cropId).delete();
    await fetchCrops();
  }
}

final cropProvider =
    StateNotifierProvider<CropNotifier, CropState>((ref) => CropNotifier());

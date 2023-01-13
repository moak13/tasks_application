import 'package:flutter_riverpod/flutter_riverpod.dart';

final wrapperIndexStateProvider =
    StateNotifierProvider<WrapperindexState, int>((ref) => WrapperindexState());

class WrapperindexState extends StateNotifier<int> {
  WrapperindexState() : super(0);

  void updateIndex(int index) {
    state = index;
  }
}

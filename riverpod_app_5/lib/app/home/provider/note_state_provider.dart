import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../model/note_state.dart';
import '../../model/noto.dart';

final noteStateProvider = StateNotifierProvider<NoteState, NoteList>((ref) {
  return NoteState();
});

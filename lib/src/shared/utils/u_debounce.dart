import 'dart:async';
import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/transformers.dart';

class Debounce {
  final int milliseconds;
  Timer? _timer;

  Debounce({required this.milliseconds});

  void run(VoidCallback action) {
    _timer?.cancel();
    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }

  void dispose() {
    _timer?.cancel();
  }
}

EventTransformer<E> debounce<E>(Duration duration) {
  return (Stream<E> events, Stream<E> Function(E) mapper) =>
      events.debounceTime(duration).switchMap(mapper);
}

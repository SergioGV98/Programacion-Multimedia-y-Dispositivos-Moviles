class CounterState {
  int value;
  int initialValue;

  CounterState({required this.value, this.initialValue = 0});

  void increment() {
    value++;
  }

  void reset() {
    value = initialValue;
  }
}

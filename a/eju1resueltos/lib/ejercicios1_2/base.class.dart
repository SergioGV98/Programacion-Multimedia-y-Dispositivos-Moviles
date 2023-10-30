abstract class Base {
  Base? context;
  static int _numInstancias = 0;

  static int get numInstancias => _numInstancias;

  Base([Base? context]) {
    Base._numInstancias++;
  }
}

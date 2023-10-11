abstract class Base {
  Base? context;
  static int _numInstancias = 0;

  Base({this.context}) {
    _numInstancias++;
  }

  static int get numInstancias  {
    return _numInstancias;
  }
}

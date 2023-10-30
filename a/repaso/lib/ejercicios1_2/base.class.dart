abstract class Base{

Base? context;
static int _numInstancias = 0;

Base([Base? context]) {
  Base._numInstancias++;
  }

  static int get numInstancias => _numInstancias;

}
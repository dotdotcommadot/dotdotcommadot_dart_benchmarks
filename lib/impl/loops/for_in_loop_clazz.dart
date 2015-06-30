part of benchmarks;

class ForInLoopClazz extends BenchmarkBase
{
  static const int ITERATIONS 	= 100000;
  List<Clazz> sourceList 	= [];
  List<Clazz> targetList	= [];

  ForInLoopClazz() : super("ForInLoopClazz");

  @override
  void setup()
  {
    for (int i = 0; i < ITERATIONS; i++)
    {
      sourceList.add(new Clazz(i));
    }
  }

  @override
  void run()
  {
    targetList	= [];

    for (Clazz myClazz in sourceList)
    {
      targetList.add(myClazz);
    }
  }

  @override
  void teardown()
  {
  }
}

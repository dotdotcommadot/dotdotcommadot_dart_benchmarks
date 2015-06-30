part of benchmarks;

class WhileLoopClazz extends BenchmarkBase
{
  static const int ITERATIONS 	= 100000;
  List<Clazz> sourceList 	= [];
  List<Clazz> targetList	= [];
  int count = 0;

  WhileLoopClazz() : super("WhileLoopClazz");

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
    targetList = [];
    count = 0;

    while(count < sourceList.length)
    {
      targetList.add(sourceList[count]);
      count++;
    }
  }

  @override
  void teardown()
  {
  }
}
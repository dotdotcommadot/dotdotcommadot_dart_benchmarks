part of benchmarks;

class ForInLoopInt extends BenchmarkBase
{
  static const int ITERATIONS 	= 100000;
  List<int> sourceList 	= [];
  List<int> targetList	= [];

  ForInLoopInt() : super("ForInLoopInt");

  @override
  void setup()
  {
    for (int i = 0; i < ITERATIONS; i++)
    {
      sourceList.add(i);
    }
  }

  @override
  void run()
  {
    targetList	= [];

    for (int myInt in sourceList)
    {
      targetList.add(myInt);
    }
  }

  @override
  void teardown()
  {
  }
}

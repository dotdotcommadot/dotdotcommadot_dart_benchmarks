part of benchmarks;

class WhileLoopInt extends BenchmarkBase
{
  static const int ITERATIONS 	= 100000;
  List<int> sourceList 	= [];
  List<int> targetList	= [];
  int count = 0;

  WhileLoopInt() : super("WhileLoopInt");

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
part of benchmarks;

class ForLoopInt extends BenchmarkBase
{
	static const int ITERATIONS 	= 100000;
  List<int> sourceList 	= [];
  List<int> targetList	= [];

	ForLoopInt() : super("ForLoopInt");

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

    for (int i = 0; i < sourceList.length; i++)
    {
      targetList.add(sourceList[i]);
    }
  }

  @override
  void teardown() 
  { 
  }
}
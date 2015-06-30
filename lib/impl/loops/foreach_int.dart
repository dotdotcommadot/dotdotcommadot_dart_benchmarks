part of benchmarks;

class ForeachInt extends BenchmarkBase
{
	static const int ITERATIONS 	= 100000;
  List<int> sourceList 	= [];
  List<int> targetList	= [];

	ForeachInt() : super("ForeachInt");

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

    sourceList.forEach((myInt)
		{
      targetList.add(myInt);
		});
  }

  @override
  void teardown() 
  { 
  }
}
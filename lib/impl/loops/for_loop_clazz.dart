part of benchmarks;

class ForLoopClazz extends BenchmarkBase
{
	static const int ITERATIONS 	= 100000;
	List<Clazz> sourceList 	= [];
  List<Clazz> targetList	= [];
	
	ForLoopClazz() : super("ForLoopClazz");

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

part of benchmarks;

class ForeachClazz extends BenchmarkBase
{
	static const int ITERATIONS 	= 100000;
	List<Clazz> sourceList 	= [];
	List<Clazz> targetList	= [];
	
	ForeachClazz() : super("ForeachClazz");

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

		sourceList.forEach((myClazz)
		{
			targetList.add(myClazz);
		});
  }

	@override
  void teardown() 
  { 
  }
}
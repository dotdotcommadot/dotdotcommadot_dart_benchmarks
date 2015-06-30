part of benchmarks;

class NoOperatorOverloading extends BenchmarkBase
{
	static const int ITERATIONS 	= 100000;
	final List<Clazz> myClazzes 	= [];
	final Clazz myClazz 					= new Clazz(666);
	
	NoOperatorOverloading() : super("NoOperatorOverloading");

  @override
	void setup() 
  { 
		for (int i = 0; i< ITERATIONS; i++)
    {
			myClazzes.add(new Clazz(i));
    }
  }

  @override
	void run() 
  {
    for (int i = 0; i < myClazzes.length; i++)
    {
    	myClazz.summarizeIntegers(myClazzes[i]);
    }
  }

  @override
  void teardown() 
  { 
  }
}

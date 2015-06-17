part of benchmarks;

class ForLoopClazz extends BenchmarkBase
{
	static const int ITERATIONS 	= 100000;
	final List<Clazz> myClazzes 	= [];
	
	ForLoopClazz() : super("ForLoopClazz");
	
	void setup() 
  { 
		for (int i = 0; i< ITERATIONS; i++)
    {
			myClazzes.add(new Clazz(i));
    }
  }
	
	void run() 
  {
    for (int i = 0; i < myClazzes.length; i++)
    {
    	var e = myClazzes[i];
    }
  }

  void teardown() 
  { 
  }
}

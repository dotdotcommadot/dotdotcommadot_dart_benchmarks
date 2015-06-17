part of benchmarks;

class ForeachClazz extends BenchmarkBase
{
	static const int ITERATIONS 	= 100000;
	final List<Clazz> myClazzes		= new List();
	
	ForeachClazz() : super("ForeachClazz");
	
	void setup() 
  { 
		for (int i = 0; i< ITERATIONS; i++)
    {
			myClazzes.add(new Clazz(i));
    }
  }
	
	void run() 
  {
		myClazzes.forEach((myClazz)
		{
    	var e = myClazz;
		});
  }

  void teardown() 
  { 
  }
}
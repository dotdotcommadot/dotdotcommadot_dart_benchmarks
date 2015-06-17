part of benchmarks;

class ForeachInt extends BenchmarkBase
{
	static const int ITERATIONS 	= 100000;
	final List<int> list 					= new List();
	
	ForeachInt() : super("ForeachInt");
	
	void setup() 
  { 
		for (int i = 0; i< ITERATIONS; i++)
    {
    	list.add(i);
    }
  }
	
	void run() 
  {
    list.forEach((i)
		{
    	var e = i;
		});
  }

  void teardown() 
  { 
  }
}
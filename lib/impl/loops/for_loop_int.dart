part of benchmarks;

class ForLoopInt extends BenchmarkBase
{
	static const int ITERATIONS 	= 100000;
	
	ForLoopInt() : super("ForLoopInt");
	
	void setup() 
  { 
  }
	
	void run() 
  {
    for (int i = 0; i < ITERATIONS; i++)
    {
    	var e = i;
    }
  }

  void teardown() 
  { 
  }
}
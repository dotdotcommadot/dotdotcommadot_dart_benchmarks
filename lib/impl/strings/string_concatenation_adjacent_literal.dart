part of benchmarks;

class StringConcatenationAdjacentLiteral extends BenchmarkBase
{
	static const int ITERATIONS 	= 100000;
	
	StringConcatenationAdjacentLiteral() : super("StringConcatenationAdjacentLiteral");
	
	void setup() 
  { 
  }
	
	void run() 
  {
    for (int i = 0; i < ITERATIONS; i++)
    {
    	var e = '...Hello' ' ' 'World...';
    }
  }

  void teardown() 
  { 
  }
}
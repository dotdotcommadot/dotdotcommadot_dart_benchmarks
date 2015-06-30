part of benchmarks;

class StringConcatenationAdjacentLiteral extends BenchmarkBase
{
	static const int ITERATIONS 	= 100000;
	String helloWorld;
	
	StringConcatenationAdjacentLiteral() : super("StringConcatenationAdjacentLiteral");

  @override
	void setup() 
  { 
  }

  @override
	void run() 
  {
    for (int i = 0; i < ITERATIONS; i++)
    {
    	helloWorld = '...Hello' ' ' 'World...';
    }
  }

  @override
  void teardown() 
  { 
  }
}
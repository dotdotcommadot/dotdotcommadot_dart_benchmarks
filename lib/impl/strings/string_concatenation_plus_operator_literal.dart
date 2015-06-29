part of benchmarks;

class StringConcatenationPlusOperatorLiteral extends BenchmarkBase
{
	static const int ITERATIONS 	= 100000;
	
	StringConcatenationPlusOperatorLiteral() : super("StringConcatenationPlusOperatorLiteral");
	
	void setup() 
  { 
  }
	
	void run() 
  {
    for (int i = 0; i < ITERATIONS; i++)
    {
    	var e = '...' + 'Hello' + ' ' + 'World' + '...';
    }
  }

  void teardown() 
  { 
  }
}
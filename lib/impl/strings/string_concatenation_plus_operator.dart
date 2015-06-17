part of benchmarks;

class StringConcatenationPlusOperator extends BenchmarkBase
{
	static const int ITERATIONS 	= 100000;
	final String hello 						= 'Hello';
	final String world 						= 'World';
	
	StringConcatenationPlusOperator() : super("StringConcatenationPlusOperator");
	
	void setup() 
  { 
  }
	
	void run() 
  {
    for (int i = 0; i < ITERATIONS; i++)
    {
    	var e = '...' + hello + ' ' + world + '...';
    }
  }

  void teardown() 
  { 
  }
}
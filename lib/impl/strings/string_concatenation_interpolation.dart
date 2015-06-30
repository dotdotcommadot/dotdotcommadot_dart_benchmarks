part of benchmarks;

class StringConcatenationInterpolation extends BenchmarkBase
{
	static const int ITERATIONS 	= 100000;
	final String hello 						= 'Hello';
	final String world 						= 'World';
	String helloWorld;
	
	StringConcatenationInterpolation() : super("StringConcatenationInterpolation");

  @override
	void setup() 
  { 
  }

  @override
	void run() 
  {
    for (int i = 0; i < ITERATIONS; i++)
    {
    	helloWorld = '...$hello $world...';
    }
  }

  @override
  void teardown() 
  { 
  }
}
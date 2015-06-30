part of benchmarks;

class StrongTyping extends BenchmarkBase
{
	static const int ITERATIONS 	= 100000;
	
	StrongTyping() : super("StrongTyping");

  @override
	void setup() 
  { 
  }

  @override
	void run() 
  {
    for (int i = 0; i < ITERATIONS; i++)
    {
    	Clazz myClazz = new Clazz(i);
    	String integer = myClazz.myInteger.toString();
    }
  }

  @override
  void teardown() 
  { 
  }
}
part of benchmarks;

class WeakTyping extends BenchmarkBase
{
	static const int ITERATIONS 	= 100000;
	
	WeakTyping() : super("WeakTyping");

  @override
	void setup() 
  { 
  }

  @override
	void run() 
  {
    for (int i = 0; i < ITERATIONS; i++)
    {
    	var myClazz = new Clazz(i);
    	String integer = myClazz.myInteger.toString();
    }
  }

  @override
  void teardown() 
  { 
  }
}
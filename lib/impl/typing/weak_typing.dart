part of benchmarks;

class WeakTyping extends BenchmarkBase
{
	static const int ITERATIONS 	= 100000;
	
	WeakTyping() : super("WeakTyping");
	
	void setup() 
  { 
  }
	
	void run() 
  {
    for (int i = 0; i < ITERATIONS; i++)
    {
    	var myClazz = new Clazz(i);
    	String integer = myClazz.myInteger.toString();
    }
  }

  void teardown() 
  { 
  }
}
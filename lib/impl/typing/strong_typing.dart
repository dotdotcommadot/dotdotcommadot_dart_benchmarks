part of benchmarks;

class StrongTyping extends BenchmarkBase
{
	static const int ITERATIONS 	= 100000;
	
	StrongTyping() : super("StrongTyping");
	
	void setup() 
  { 
  }
	
	void run() 
  {
    for (int i = 0; i < ITERATIONS; i++)
    {
    	Clazz myClazz = new Clazz(i);
    	String integer = myClazz.myInteger.toString();
    }
  }

  void teardown() 
  { 
  }
}
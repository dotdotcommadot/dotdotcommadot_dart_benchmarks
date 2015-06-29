part of benchmarks;

class StringConcatenationStringBuffer extends BenchmarkBase
{
	static const int ITERATIONS 	= 100000;
	final String hello 						= 'Hello';
	final String world 						= 'World';
	StringBuffer stringBuffer;
	
	StringConcatenationStringBuffer() : super("StringConcatenationStringBuffer");
	
	void setup() 
  { 
  }
	
	void run() 
  {
    for (int i = 0; i < ITERATIONS; i++)
    {
    	stringBuffer = new StringBuffer();
    	stringBuffer.write("...");
    	stringBuffer.write(hello);
    	stringBuffer.write(" ");
    	stringBuffer.write(world);
    	stringBuffer.write("...");
    	var e = stringBuffer.toString();
    }
  }

  void teardown() 
  { 
  }
}
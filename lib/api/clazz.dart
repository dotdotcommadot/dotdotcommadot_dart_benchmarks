part of benchmarks;

class Clazz
{
	int myInteger;
	
	Clazz(this.myInteger);
	
	operator +(Clazz other) => myInteger += other.myInteger;
	
	void summarizeIntegers(Clazz other) {
		myInteger += other.myInteger;
	}
}
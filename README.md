# dotdotcommadot dart benchmarks
###### Version: 0.0.1 -- alpha

## About
The main goal of this library is to compare different writing styles to each other.

i.e. What is faster? 
```"$hello $world"``` 
or 
```hello + " " + world``` ?

The point is to compare pieces of code rather than to compare Dart's VM against other VM's or runtimes.

This project is far from finished since it can grow infinitely.
Eventually, the point is that the right conclusions and performance tips 'n tricks will be taken of it.

## Running the Application
There are mainly three important ways of running the app:
- As Dart code, inside the Dart VM (Right Click 'Benchmark.dart' -- Click 'Run')
- As Dart code, inside Dartium (Right Click 'index.html' -- Click 'Run in Dartium')
- As JavaScript code, inside a Browser (Right Click 'index.html' -- Click 'Run as JavaScript')

## Results

Following results are run from my machine.
This is a Windows 7, 64 bit machine with 16 gb of RAM.

- ForeachClazz
    - Native Dart VM: 2239 ms
    - Dartium: 1893 ms
    - Chrome: 2406 ms
- ForeachInt
    - Native Dart VM: 2249 ms
    - Dartium: 2010 ms
    - Chrome: 2310 ms
- ForLoopClazz
    - Native Dart VM: 905 ms
    - Dartium: 896 ms
    - Chrome: 999 ms
- ForLoopInt
    - Native Dart VM: 853 ms
    - Dartium: 902 ms	
    - Chrome: 937 ms
- NoOperatorOverloading
    - Native Dart VM: 2184 ms
    - Dartium: 10634
    - Chrome: 18366 ms
- OperatorOverloading
    - Native Dart VM: 2179 ms
    - Dartium: 10432	
    - Chrome: 2968 ms
- StringConcatenationInterpolation
    - Native Dart VM: 125058 ms
    - Dartium: 148928	
    - Chrome: 916 ms
- StringConcatenationPlusOperator
    - Native Dart VM: 432000 ms
    - Dartium: 656750	
    - Chrome: 919 ms
- StrongTyping
    - Native Dart VM: 30636 ms
    - Dartium: 30393 ms
    - Chrome: 99095 ms
- WeakTyping
    - Native Dart VM: 31000 ms
    - Dartium: 30223 ms
    - Chrome: 107526 ms
    
## Conclusions
#### Loops
- forEach() loops are about 2x slower than for(var i...) loops

#### Operator Overloading
- In Chrome, operator overloading is 8x faster than calling a method

#### String Concatenation
- In the Dart VM, String Interpolation is 3x faster than the + Operator
- In Google Chrome, String Interpolation is just as fast as the + Operator


## Info
I'm a huge fan of discussion.
If you see any faults or possible improvements, please
contact me at [hans@dotdotcommadot.com](mailto:hans@dotdotcommadot.com)
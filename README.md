# dotdotcommadot dart benchmarks
###### Version: 0.0.2

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

All results are in milliseconds.
The lower the number, the faster it's running.

Benchmark | Standalone Dart VM | Dartium (Dart) | Google Chrome (JS)
--- | --- | ---
ForeachClazz | 2706 | 1800 | 1905
ForeachInt | 2005 | 1793 | 2184
ForLoopClazz | 868 | 851 | 929
ForLoopInt | 802 | 842 | 971
NoOperatorOverloading | 2056 | 10070 | 18422
OperatorOverloading | 2047 | 9950 | 3078
StringConcatenationAdjacentLiteral | 573 | 606 | 900
StringConcatenationInterpolation | 118235 | 136400 | 896
StringConcatenationPlusOperator | 403400 | 640500 | 905
StringConcatenationPlusOperatorLiteral | 438000 | 640250 | 886
StringConcatenationStringBuffer | 418800 | 539250 | 157307
StrongTyping | 27243 | 29231 | 92727
WeakTyping | 27438 | 29275 | 101550


    
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
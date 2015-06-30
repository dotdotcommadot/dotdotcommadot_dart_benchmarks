# dotdotcommadot dart benchmarks
###### Version: 0.0.3

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
--------- | ------------------ | -------------- | -----------------
**Loops** | | |
ForInLoopClazz | 23034 | 19567 | 11760
ForInLoopInt | 25212 | 21913 | 11485
ForLoopClazz | 14364 | 14932 | 8255
ForLoopInt | 18794 | 15059 | 8121
ForeachClazz | 19485 | 19637 | 9547
ForeachInt | 22617 | 19940 | 9718
WhileLoopClazz | 14147 | 15052 | 9206
WhileLoopInt | 18878 | 15392 | 8609
**Operator Overloading** | | |
NoOperatorOverloading | 2159 | 11386 | 20551
OperatorOverloading | 2139 | 10192 | 3036
**String Concatenation** | | |
StringConcatenationAdjacentLiteral | 650 | 615 | 1209
StringConcatenationInterpolation | 126750 | 142857 | 1536
StringConcatenationPlusOperator | 428000 | 655250 | 1550
StringConcatenationPlusOperatorLiteral | 442000 | 656000 | 1211
StringConcatenationStringBuffer | 446600 | 587750 | 161153
**Typing** | | |
StrongTyping | 28985 | 29676 | 94772
WeakTyping | 29130 | 29970 | 100800


    
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
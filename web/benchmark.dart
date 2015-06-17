library benchmarks;

import 'package:benchmark_harness/benchmark_harness.dart';

part 'package:benchmarks/api/clazz.dart';

part 'package:benchmarks/impl/loops/for_loop_int.dart';
part 'package:benchmarks/impl/loops/for_loop_clazz.dart';
part 'package:benchmarks/impl/loops/foreach_int.dart';
part 'package:benchmarks/impl/loops/foreach_clazz.dart';

part 'package:benchmarks/impl/operator_overloading/no_operator_overloading.dart';
part 'package:benchmarks/impl/operator_overloading/operator_overloading.dart';

part 'package:benchmarks/impl/strings/string_concatenation_interpolation.dart';
part 'package:benchmarks/impl/strings/string_concatenation_plus_operator.dart';

part 'package:benchmarks/impl/typing/strong_typing.dart';
part 'package:benchmarks/impl/typing/weak_typing.dart';

main()
{
	new ForeachClazz().report();															// Native Dart VM: 2239 ms				Dartium: 1893				Chrome: 2406
	new ForeachInt().report();																// Native Dart VM: 2249 ms				Dartium: 2010				Chrome: 2310
	new ForLoopClazz().report();															// Native Dart VM: 905 ms					Dartium: 896				Chrome: 999
	new ForLoopInt().report();																// Native Dart VM: 853 ms					Dartium: 902				Chrome: 937
	
	new NoOperatorOverloading().report();											// Native Dart VM: 2184 ms				Dartium: 10634			Chrome: 18366
	new OperatorOverloading().report();												// Native Dart VM: 2179 ms				Dartium: 10432			Chrome: 2968
	
	new StringConcatenationInterpolation().report();					// Native Dart VM: 125058 ms			Dartium: 148928			Chrome: 916
	new StringConcatenationPlusOperator().report();						// Native Dart VM: 432000 ms			Dartium: 656750			Chrome: 919
	
	new StrongTyping().report();															// Native Dart VM: 30636					Dartium: 30393			Chrome: 99095
	new WeakTyping().report();																// Native Dart VM: 31000					Dartium: 30223			Chrome: 107526
}
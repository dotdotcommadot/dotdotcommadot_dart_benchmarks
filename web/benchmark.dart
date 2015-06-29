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
	new ForeachClazz().report();
	new ForeachInt().report();
	new ForLoopClazz().report();
	new ForLoopInt().report();
	
	new NoOperatorOverloading().report();
	new OperatorOverloading().report();
	
	new StringConcatenationInterpolation().report();
	new StringConcatenationPlusOperator().report();
	
	new StrongTyping().report();
	new WeakTyping().report();
}
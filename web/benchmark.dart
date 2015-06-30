library benchmarks;

import 'package:benchmark_harness/benchmark_harness.dart';

part 'package:benchmarks/api/clazz.dart';

part 'package:benchmarks/impl/loops/for_in_loop_clazz.dart';
part 'package:benchmarks/impl/loops/for_in_loop_int.dart';
part 'package:benchmarks/impl/loops/for_loop_clazz.dart';
part 'package:benchmarks/impl/loops/for_loop_int.dart';
part 'package:benchmarks/impl/loops/foreach_clazz.dart';
part 'package:benchmarks/impl/loops/foreach_int.dart';
part 'package:benchmarks/impl/loops/while_loop_clazz.dart';
part 'package:benchmarks/impl/loops/while_loop_int.dart';

part 'package:benchmarks/impl/operator_overloading/no_operator_overloading.dart';
part 'package:benchmarks/impl/operator_overloading/operator_overloading.dart';

part 'package:benchmarks/impl/strings/string_concatenation_adjacent_literal.dart';
part 'package:benchmarks/impl/strings/string_concatenation_interpolation.dart';
part 'package:benchmarks/impl/strings/string_concatenation_plus_operator.dart';
part 'package:benchmarks/impl/strings/string_concatenation_plus_operator_literal.dart';
part 'package:benchmarks/impl/strings/string_concatenation_stringbuffer.dart';

part 'package:benchmarks/impl/typing/strong_typing.dart';
part 'package:benchmarks/impl/typing/weak_typing.dart';

main()
{
	// Loops
	new ForInLoopClazz().report();
	new ForInLoopInt().report();
	new ForLoopClazz().report();
	new ForLoopInt().report();
	new ForeachClazz().report();
	new ForeachInt().report();
	new WhileLoopClazz().report();
	new WhileLoopInt().report();

	// Operator Overloading
	new NoOperatorOverloading().report();
	new OperatorOverloading().report();
	
	// Strings
	new StringConcatenationAdjacentLiteral().report();
	new StringConcatenationInterpolation().report();
	new StringConcatenationPlusOperator().report();
	new StringConcatenationPlusOperatorLiteral().report();
	new StringConcatenationStringBuffer().report();
	
	// Typing
	new StrongTyping().report();
	new WeakTyping().report();
}
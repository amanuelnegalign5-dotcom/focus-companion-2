import 'package:flutter_test/flutter_test.dart';
import 'package:focus_companion_2/core/ethiopian_calendar.dart';
void main(){test('calendar conversion returns valid fields',(){final d=gregorianToEthiopian(DateTime(2026,10,19));expect(d.month,inInclusiveRange(1,13));expect(d.day,inInclusiveRange(1,30));});}

// Copyright (c) 2019, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:analyzer/src/error/codes.dart';
import 'package:test_reflective_loader/test_reflective_loader.dart';

import '../dart/resolution/driver_resolution.dart';

main() {
  defineReflectiveSuite(() {
    defineReflectiveTests(CanBeNullAfterNullAwareTest);
  });
}

@reflectiveTest
class CanBeNullAfterNullAwareTest extends DriverResolutionTest {
  test_afterCascade() async {
    await assertErrorCodesInCode(r'''
m(x) {
  x..a?.b.c;
}
''', [HintCode.CAN_BE_NULL_AFTER_NULL_AWARE]);
  }

  test_beforeCascade() async {
    await assertErrorCodesInCode(r'''
m(x) {
  x?.a..m();
}
''', [HintCode.CAN_BE_NULL_AFTER_NULL_AWARE]);
  }

  test_cascadeWithParenthesis() async {
    await assertErrorCodesInCode(r'''
m(x) {
  (x?.a)..m();
}
''', [HintCode.CAN_BE_NULL_AFTER_NULL_AWARE]);
  }

  test_definedForNull() async {
    await assertNoErrorsInCode(r'''
m(x) {
  x?.a.hashCode;
  x?.a.runtimeType;
  x?.a.toString();
  x?.b().hashCode;
  x?.b().runtimeType;
  x?.b().toString();
}
''');
  }

  test_guarded_methodInvocation() async {
    await assertNoErrorsInCode(r'''
m(x) {
  x?.a()?.b();
}
''');
  }

  test_guarded_propertyAccess() async {
    await assertNoErrorsInCode(r'''
m(x) {
  x?.a?.b;
}
''');
  }

  test_methodInvocation() async {
    await assertErrorCodesInCode(r'''
m(x) {
  x?.a.b();
}
''', [HintCode.CAN_BE_NULL_AFTER_NULL_AWARE]);
  }

  test_multipleInvocations() async {
    await assertErrorCodesInCode(r'''
m(x) {
  x?.a
    ..m()
    ..m();
}
''', [HintCode.CAN_BE_NULL_AFTER_NULL_AWARE]);
  }

  test_parenthesized() async {
    await assertErrorCodesInCode(r'''
m(x) {
  (x?.a).b;
}
''', [HintCode.CAN_BE_NULL_AFTER_NULL_AWARE]);
  }

  test_propertyAccess() async {
    await assertErrorCodesInCode(r'''
m(x) {
  x?.a.b;
}
''', [HintCode.CAN_BE_NULL_AFTER_NULL_AWARE]);
  }
}

// Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:front_end/src/scanner/token.dart' show Token;

import 'package:kernel/ast.dart' show Catch, DartType, FunctionType, Node;

import 'package:kernel/type_algebra.dart' show Substitution;

import 'kernel_shadow_ast.dart'
    show ExpressionJudgment, InitializerJudgment, StatementJudgment;

/// Abstract base class for factories that can construct trees of expressions,
/// statements, initializers, and literal types based on tokens, inferred types,
/// and invocation targets.
abstract class Factory<Expression, Statement, Initializer, Type> {
  Expression asExpression(
      ExpressionJudgment judgment,
      int fileOffset,
      Expression expression,
      Token asOperator,
      Type type,
      DartType inferredType);

  Initializer assertInitializer(InitializerJudgment judgment, int fileOffset);

  Statement assertStatement(StatementJudgment judgment, int fileOffset);

  Expression awaitExpression(
      ExpressionJudgment judgment, int fileOffset, DartType inferredType);

  Statement block(StatementJudgment judgment, int fileOffset);

  Expression boolLiteral(
      ExpressionJudgment judgment, int fileOffset, DartType inferredType);

  Statement breakStatement(StatementJudgment judgment, int fileOffset);

  Expression cascadeExpression(
      ExpressionJudgment judgment, int fileOffset, DartType inferredType);

  Object catchStatement(
      Catch judgment,
      int fileOffset,
      DartType guardType,
      int exceptionOffset,
      DartType exceptionType,
      int stackTraceOffset,
      DartType stackTraceType);

  Expression conditionalExpression(
      ExpressionJudgment judgment, int fileOffset, DartType inferredType);

  Expression constructorInvocation(ExpressionJudgment judgment, int fileOffset,
      Node expressionTarget, DartType inferredType);

  Statement continueSwitchStatement(StatementJudgment judgment, int fileOffset);

  Expression deferredCheck(
      ExpressionJudgment judgment, int fileOffset, DartType inferredType);

  Statement doStatement(StatementJudgment judgment, int fileOffset);

  Expression doubleLiteral(
      ExpressionJudgment judgment, int fileOffset, DartType inferredType);

  Statement expressionStatement(StatementJudgment judgment, int fileOffset);

  Initializer fieldInitializer(
      InitializerJudgment judgment, int fileOffset, Node initializerField);

  Statement forInStatement(
      StatementJudgment judgment,
      int fileOffset,
      int variableOffset,
      DartType variableType,
      int writeOffset,
      DartType writeVariableType,
      int writeVariableDeclarationOffset,
      Node writeTarget);

  Statement forStatement(StatementJudgment judgment, int fileOffset);

  Statement functionDeclaration(
      StatementJudgment judgment, int fileOffset, FunctionType inferredType);

  Expression functionExpression(
      ExpressionJudgment judgment, int fileOffset, DartType inferredType);

  Expression ifNull(
      ExpressionJudgment judgment, int fileOffset, DartType inferredType);

  Statement ifStatement(StatementJudgment judgment, int fileOffset);

  Expression indexAssign(ExpressionJudgment judgment, int fileOffset,
      Node writeMember, Node combiner, DartType inferredType);

  Expression intLiteral(
      ExpressionJudgment judgment, int fileOffset, DartType inferredType);

  Initializer invalidInitializer(InitializerJudgment judgment, int fileOffset);

  Expression isExpression(ExpressionJudgment judgment, int fileOffset,
      DartType testedType, DartType inferredType);

  Expression isNotExpression(ExpressionJudgment judgment, int fileOffset,
      DartType type, DartType inferredType);

  Statement labeledStatement(StatementJudgment judgment, int fileOffset);

  Expression listLiteral(
      ExpressionJudgment judgment, int fileOffset, DartType inferredType);

  Expression logicalExpression(
      ExpressionJudgment judgment, int fileOffset, DartType inferredType);

  Expression mapLiteral(
      ExpressionJudgment judgment, int fileOffset, DartType typeContext);

  Expression methodInvocation(
      ExpressionJudgment judgment,
      int resultOffset,
      List<DartType> argumentsTypes,
      bool isImplicitCall,
      Node interfaceMember,
      FunctionType calleeType,
      Substitution substitution,
      DartType inferredType);

  Expression methodInvocationCall(
      ExpressionJudgment judgment,
      int resultOffset,
      List<DartType> argumentsTypes,
      bool isImplicitCall,
      FunctionType calleeType,
      Substitution substitution,
      DartType inferredType);

  Expression namedFunctionExpression(
      ExpressionJudgment judgment, int fileOffset, DartType inferredType);

  Expression not(
      ExpressionJudgment judgment, int fileOffset, DartType inferredType);

  Expression nullLiteral(ExpressionJudgment judgment, int fileOffset,
      bool isSynthetic, DartType inferredType);

  Expression propertyAssign(
      ExpressionJudgment judgment,
      int fileOffset,
      Node writeMember,
      DartType writeContext,
      Node combiner,
      DartType inferredType);

  Expression propertyGet(ExpressionJudgment judgment, int fileOffset,
      Node member, DartType inferredType);

  Expression propertyGetCall(
      ExpressionJudgment judgment, int fileOffset, DartType inferredType);

  Expression propertySet(
      ExpressionJudgment judgment, int fileOffset, DartType inferredType);

  Initializer redirectingInitializer(
      InitializerJudgment judgment, int fileOffset, Node initializerTarget);

  Expression rethrow_(
      ExpressionJudgment judgment, int fileOffset, DartType inferredType);

  Statement returnStatement(StatementJudgment judgment, int fileOffset);

  Expression staticAssign(
      ExpressionJudgment judgment,
      int fileOffset,
      Node writeMember,
      DartType writeContext,
      Node combiner,
      DartType inferredType);

  Expression staticGet(ExpressionJudgment judgment, int fileOffset,
      Node expressionTarget, DartType inferredType);

  Expression staticInvocation(
      ExpressionJudgment judgment,
      int fileOffset,
      Node expressionTarget,
      List<DartType> expressionArgumentsTypes,
      FunctionType calleeType,
      Substitution substitution,
      DartType inferredType);

  Expression stringConcatenation(
      ExpressionJudgment judgment, int fileOffset, DartType inferredType);

  Expression stringLiteral(
      ExpressionJudgment judgment, int fileOffset, DartType inferredType);

  Initializer superInitializer(InitializerJudgment judgment, int fileOffset);

  Statement switchStatement(StatementJudgment judgment, int fileOffset);

  Expression symbolLiteral(
      ExpressionJudgment judgment, int fileOffset, DartType inferredType);

  Expression thisExpression(
      ExpressionJudgment judgment, int fileOffset, DartType inferredType);

  Expression throw_(
      ExpressionJudgment judgment, int fileOffset, DartType inferredType);

  Statement tryCatch(StatementJudgment judgment, int fileOffset);

  Statement tryFinally(StatementJudgment judgment, int fileOffset);

  Expression typeLiteral(ExpressionJudgment judgment, int fileOffset,
      Node expressionType, DartType inferredType);

  Expression variableAssign(
      ExpressionJudgment judgment,
      int fileOffset,
      DartType writeContext,
      int writeVariableDeclarationOffset,
      Node combiner,
      DartType inferredType);

  Statement variableDeclaration(StatementJudgment judgment, int fileOffset,
      DartType statementType, DartType inferredType);

  Expression variableGet(
      ExpressionJudgment judgment,
      int fileOffset,
      bool isInCascade,
      int expressionVariableDeclarationOffset,
      DartType inferredType);

  Expression variableSet(
      ExpressionJudgment judgment, int fileOffset, DartType inferredType);

  Statement whileStatement(StatementJudgment judgment, int fileOffset);

  Statement yieldStatement(StatementJudgment judgment, int fileOffset);

  /// TODO(paulberry): this isn't really shaped properly for a factory class.
  void storePrefixInfo(int fileOffset, int prefixImportIndex);

  /// TODO(paulberry): this isn't really shaped properly for a factory class.
  void storeClassReference(int fileOffset, Node reference, DartType rawType);
}

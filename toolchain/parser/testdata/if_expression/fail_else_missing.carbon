// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// AUTOUPDATE
// CHECK:STDOUT: [
// CHECK:STDOUT:     {kind: 'FunctionIntroducer', text: 'fn'},
// CHECK:STDOUT:     {kind: 'DeclaredName', text: 'F'},
// CHECK:STDOUT:       {kind: 'ParameterListStart', text: '('},
// CHECK:STDOUT:     {kind: 'ParameterList', text: ')', subtree_size: 2},
// CHECK:STDOUT:   {kind: 'FunctionDefinitionStart', text: '{', subtree_size: 5},
// CHECK:STDOUT:     {kind: 'VariableIntroducer', text: 'var'},
// CHECK:STDOUT:       {kind: 'DeclaredName', text: 'n'},
// CHECK:STDOUT:       {kind: 'Literal', text: 'i32'},
// CHECK:STDOUT:     {kind: 'PatternBinding', text: ':', subtree_size: 3},
// CHECK:STDOUT:     {kind: 'VariableInitializer', text: '='},
// CHECK:STDOUT:         {kind: 'Literal', text: 'true'},
// CHECK:STDOUT:       {kind: 'IfExpressionIf', text: 'if', subtree_size: 2},
// CHECK:STDOUT:         {kind: 'Literal', text: '1'},
// CHECK:STDOUT:       {kind: 'IfExpressionThen', text: 'then', subtree_size: 2},
// CHECK:STDOUT:       {kind: 'InvalidParse', text: ';', has_error: yes},
// CHECK:STDOUT:     {kind: 'IfExpressionElse', text: 'if', has_error: yes, subtree_size: 6},
// CHECK:STDOUT:   {kind: 'VariableDeclaration', text: ';', subtree_size: 12},
// CHECK:STDOUT: {kind: 'FunctionDefinition', text: '}', subtree_size: 18},
// CHECK:STDOUT: {kind: 'FileEnd', text: ''},
// CHECK:STDOUT: ]

fn F() {
  // CHECK:STDERR: fail_else_missing.carbon:[[@LINE+1]]:30: Expected `else` after `if ... then ...`.
  var n: i32 = if true then 1;
}

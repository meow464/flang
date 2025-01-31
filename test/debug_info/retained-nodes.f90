!
! Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
! See https://llvm.org/LICENSE.txt for license information.
! SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
!

! REQUIRES: llvm-13

! RUN: %flang -g -S -emit-llvm %s -o - | FileCheck %s

subroutine addf(a, b, c, d, e, f, g, h, i)
  integer :: a, b, c, d, e, f, g, h, i
! CHECK: call void @llvm.dbg.declare{{.*}}({{.*}}metadata i64* %a, metadata [[A:![0-9]+]]
! CHECK: call void @llvm.dbg.declare{{.*}}({{.*}}metadata i64* %b, metadata [[B:![0-9]+]]
! CHECK: call void @llvm.dbg.declare{{.*}}({{.*}}metadata i64* %c, metadata [[C:![0-9]+]]
! CHECK: call void @llvm.dbg.declare{{.*}}({{.*}}metadata i64* %d, metadata [[D:![0-9]+]]
! CHECK: call void @llvm.dbg.declare{{.*}}({{.*}}metadata i64* %e, metadata [[E:![0-9]+]]
! CHECK: call void @llvm.dbg.declare{{.*}}({{.*}}metadata i64* %f, metadata [[F:![0-9]+]]
! CHECK: call void @llvm.dbg.declare{{.*}}({{.*}}metadata i64* %g, metadata [[G:![0-9]+]]
! CHECK: call void @llvm.dbg.declare{{.*}}({{.*}}metadata i64* %h, metadata [[H:![0-9]+]]
! CHECK: call void @llvm.dbg.declare{{.*}}({{.*}}metadata i64* %i, metadata [[I:![0-9]+]]
end subroutine

! CHECK-DAG: [[NODES:![0-9]+]] = !{{{.*}}[[A]], [[B]], [[C]], [[D]], [[E]], [[F]], [[G]], [[H]], [[I]]{{.*}}}
! CHECK-DAG: !{{.*}} = distinct !DISubprogram{{.*}}({{.*}}retainedNodes: [[NODES]]

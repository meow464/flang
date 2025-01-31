! Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
! See https://llvm.org/LICENSE.txt for license information.
! SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
!
!this test case is test for quad convert to logical
program main
  use check_mod
  integer, parameter :: k = 16
  logical(kind = 4) :: a, ea
  real(kind = k) :: b = 1.16_16
  a = b
  ea = .TRUE.

  call checkl4(a, ea, 1)

end program main

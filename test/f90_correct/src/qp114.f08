! Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
! See https://llvm.org/LICENSE.txt for license information.
! SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
!
!this test case is test for const quad convert to double
program main
  use check_mod
  real(kind = 8) :: b, ea
  ea = 1.1000000000000001_8
  b = 1.1_16

  call checkr8(b, ea, 1)
end program main

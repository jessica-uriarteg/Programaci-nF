!------Subroutine.f90: Demostrar subrutina simple
!-------------------------------------------------

Subroutine g
  Implicit none
  Real (8) :: x, y , ans1, ans2
  ans1=sin(x*y)+1.0
  ans2= ans1**2
End Subroutine g

Program Main 
  Implicit none
  Real *8 :: Xin=0.25, Yin=2.0, Gout1, Gout2
  call g
  Print *, "La respuestas son: ", Gout1,Gout2
End Program Main

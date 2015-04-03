!------Programa Function.f90:Funcion simple------------
!------------------------------------------------------

Real *8 Function f(x,y)
  Implicit none
  Real *8 :: x, y
  f=1.0+sin(x*y)
End Function f

Program Main
  Implicit none
  Real *8 :: Xin=0.25, Yin=2.0, c, f
  c=f(Xin,Yin)
  Print *, "f(Xin,Yin)=", c
End Program Main


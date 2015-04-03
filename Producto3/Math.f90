!--------Programa Math.f90: Lista de funciones trigonometricas de Fortran
!--------------------------------------------------------------------------

!Program Math 

!  Real *8:: x=1.0, y, z
!  y=sin(x)
!  z=exp(x)+1.0

!  Print *, x,y,z

!End Program Math 

!______________________________________________________________________________
!-------Programa Math.f90: Lista de funciones trig de Fortran con raiz cuadrada de -1, arcoseno de 2.0 y logaritmo de 0
!------------------------------------------------------------------------------

Program Math

  Real :: x=-1, y=2.0, z=0, a,b,c
  a= sqrt(x)
  b= asin(y)
  c= log(z)

  Print *, a,b,c

End Program Math

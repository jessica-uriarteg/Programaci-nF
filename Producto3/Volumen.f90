!--------- Programa Area.f90: Calcular el area de un ciruclo
!------------------------------------------------------------

!Program Circle_area
!Implicit none
!Real *8 :: radio, circum, area
!Real *8 :: pi=4.0 * atan(1.0)

!Print *, "Programa para calcular el area y de un circulo. Introducir el radio"
!Read *, radio
!circum=2.0*pi*radio
!area=radio*radio*pi
!Print *, "Radio:", radio
!Print *, "Circumferencia:", circum
!Print *, "Area:", area

!End Program Circle_area
!____________________________________________________________________

!------Programa Volumen.f90: Calcular el volumen de un tanque esferico
!---------------------------------------------------------------------


  Program Volumen_tanque
Implicit none

Real :: radio, altura, volumen
Real *8 :: pi=4.0 * atan(1.0)

Print *, "Programa para calcular el volumen de un tanque esférico. Introducir el radio:"
Read *,radio
Print *, "Altura:"
Read *,altura
volumen=(pi/3.0)*(altura*altura)*((3.0*radio)-altura)
Print *, "Volumen = ", volumen

  End Program Volumen_tanque




wxMaxima
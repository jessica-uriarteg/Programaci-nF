program projectilefriction

implicit none
real, parameter :: degrad=(4.0*atan(1.0))/180.0
real :: ii, rad, angle, vi, xi, yi
integer :: i

write(*,*) 'Enter angle of projectile (Real)'
read *, angle
rad=angle*degrad
write (*,*) 'Enter velocity of projectile'
read *, vi
write (*,*) 'Initial position (x)'
read *, xi
write (*,*) 'Initial position (y)'
read *, yi
write (*,*) 'Chose:(1)- Results with friction. (2)- Results without friction. (3)- Both results.'
read *, ii

IF (ii==1) THEN
   call friction
ELSE IF (ii==2) THEN
     call nofriction
ELSE 
	call friction
	call nofriction
END IF


end program projectilefriction
!----------------------------------------
subroutine nofriction (xi,yi,vi,rad,xmaxnf,ymaxnf,tnf)
implicit none
real ::  a, rad, vx, vy
real :: xi,yi,vi,rad,xmaxnf,ymaxnf,tnf
real, parameter :: degrad= (4.0*atan(1.0))/180.0, g=9.81
real :: x(150),y(150)
integer :: i
	
	vx=vi*COS(rad)
        vy=vi*SIN(rad)
        tnf=2*vi*sin(rad)*(1/g)


       open(1, file='nofriction.dat')

       do i=1,300
            t = (float(i)*0.01)
            x(i) = vx*t
            y(i) = (vy*t)-(0.5*g*t*t)

            write(1,*) x(i), y(i)
            if (y(i)<0) exit
       end do

      close(1)

      xmaxnf=(vy**2)/(0.5*g)
      ymaxnf=x(i)
      tnf=2*vi*sin(rad)*(1/g)

      if (vx<0) then
          xmaxnf=0
      end if

      print*, 'Time of flight:', t, 's'
      print*, 'Maximum height reached:', ymaxnf, 'm'
      print*, 'Horizontal range:', xmaxnf, 'm'

end subroutine nofriction
!-------------------------------------------
subroutine friction (xi,yi,vi,rad,xmaxf,ymaxf,tff)
implicit none
real, parameter :: g=9.81, pi= 4.0*atan(1.0), rho=1.20, dc=0.47
real, dimension (0:npts) :: xf,yf,vxf,vyf,ayf,axf,tf
real :: m,r,area, degrad, angle, Dom, mx
real :: xi, yi, vi, rad, xmaxf, ymaxf, tff
integer :: i

	 print*, "Mass of sphere in kg"
	 read*, m
	 print*, "Radius of sphere in m"
	 read*, r
	
	 
	 area=pi*(r**2)
	 xf(0)=xi
	 yf(0)=yi
	 vxf(0)=vi*cos(rad)
	 vyf(0)=vi*sin(rad)
	 Dom=((area*rho*dc)/2.0)/m
	 axf(0)=-Dom*vxf(0)*vyf(0)
	 ayf(0)=-g-(Dom*vyf(0)*vyf(0))
	 tf(0)=0

	 open(2, file='friction.dat')
	 
	 write(2,1001) xf(0), yf(0)
	 1001 format (f11.5,f11.5)

	 do i=0,npts
            tf(i+1)= tf(i)+0.01  
            vxf(i+1)=vxf(i)+axf(i)*tf(i+1)
            vyf(i+1)=vyf(i)+ayf(i)*tf(i+1)
            axf(i+1)=(-Dom)*vxf(i)*vxf(i)
            ayf(i+1)=-g-(Dom*vyf(i)*vyf(i))
            xf(i+1)=xf(i)+vxf(i)*tf(i+1)+((axf(i)*tf(i+1)*tf(i+1))/2.0)
            yf(i+1)=yf(i)+vyf(i)*tf(i+1)+((ayf(i)*tf(i+1)*tf(i+1))/2.0)  
            write(2,1001) xf(i+1), yf(i+1)      
            IF (yf(i)<0) exit  
       end do 
       close(2)

       xmaxf=xf(i)
       ymaxf=maxval(yf)
       tff=tf(i)*10.0

       print*, "Horizontal range: ", xmaxf, "m"
       print*, "Y range: ", ymaxf, "m"
       print*, "Time of flight: ", tff, "s"

end subroutine friction
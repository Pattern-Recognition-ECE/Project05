function [Rc,Rep,w,sf_Hoka,i] = HoKa1(x1,x2,Lr,MaxRep)
%#
%#  [Rc,Rep] = HoKa(x1,x2,Lr,MaxRep)
%#
%#  Input
%#      x1: Pattern Vectors for the first class
%#      x2: Pattern Vectors for the second class
%#      Lr: Learning rate
%#      MaxRep: Maximum repetitions
%#  Output
%#      Rc: Correct classification rate using the C-method
%#      Rep: Pattern vectors on each class
%#
 
NumOfP1 = columns(x1) ;
x1 = [x1;ones(1,NumOfP1)] ;
NumOfP2 = columns(x2) ;
x2 = [x2;ones(1,NumOfP2)] ;
Rep = [NumOfP1,NumOfP2] ;
TotPat = sum(Rep) ;
Rc = zeros(2,1) ;
 
if ( rows(x1) ~= rows(x2) )
end
 
z = [x1,-x2]'; 
 
Nv = columns(z) ;
Np = rows(z) ;
b = 0.1 * rand( Np, 1 ) ;
piz = inv( z' * z ) * z' ;
w = piz * b ;
b1 = z * w ; 
e = b1 - b ;
i = 0 ;
k=mod(MaxRep ,5000);
%if k==0
while( i < MaxRep )
   
 % printf( 'Step %d\n', i ) ;
 %printf( 'Classification Score: %7.4f%%\n', ( 100 * NoGreatValMat( b1, 0.0 ) ) / ( rows(b1) * columns(b1)) ) ;
  if ( GreatValMat(b1,0.0) == 1 )
    % printf( 'Linear Separation of classes in %d repetitions\n', i ) ;
     Rc = Rep ;
     return ;
  end
  ea = AbsMat(e) ;
  b = b + Lr * ( e + ea ) ;
  w = piz * b ;
  b1 = z * w ;
  e = b1 - b ;
  i=i+1 ;
  Rc(1) = NoGreatValMat( b1(1:NumOfP1), 0.0 )  ;
 
  Rc(2) = NoGreatValMat( b1(NumOfP1+1:TotPat), 0.0 )  ;
  sf_Hoka(i)=1-((Rc(1)+Rc(2))/(Rep(1)+Rep(2)));
end

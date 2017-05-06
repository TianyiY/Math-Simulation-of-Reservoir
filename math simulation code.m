% x dimensions of block(1-60), ft
dx=[509, 491, 596, 439, 509, 491, 596, 526, 439, 877, 439, 509, 491, 596, 526, 561, 912, 807, 439, 877, 544, 772, 439, 509, 491, 596, 526, 561, 912, 807, 439, 877, 544, 772, 439, 509, 491, 596, 526, 561, 912, 807, 439, 877, 596, 526, 561, 912, 807, 439, 877, 561, 912, 807, 912, 807, 439, 912, 807, 439];
% y dimensions of block(1-60), ft
dy=[474 474 474 404 404 404 404 404 404 404 386 386 386 386 386 386 386 386 386 386 386 386 491 491 491 491 491 491 491 491 491 491 491 491 404 404 404 404 404 404 404 404 404 404 316 316 316 316 316 316 316 316 316 316 421 421 421 526 526 526];
% z dimensions of block(1-60), ft
dz=[10 12 5 8 35 30 15 6 4 5 14 44 36 30 22 16 12 14 15 11 6 3 20 34 35 40 34 32 29 25 22 18 10 3 5 12 12 40 44 42 32 20 16 10 10 19 27 24 10 6 3 4 10 6 8 7 3 4 5 2];
% block depth (from block's bottom to top), ft
depth=[9342 9345 9347 9341 9327 9330 9338 9333 9311 9310 9336 9319 9316 9322 9325 9315 9299 9300 9299 9297 9297 9305 9340 9326 9316 9308 9310 9313 9297 9296 9295 9293 9292 9295 9342 9332 9323 9305 9298 9298 9296 9292 9291 9288 9315 9297 9295 9292 9289 9289 9287 9294 9290 9286 9289 9281 9282 9290 9280 9278];
% x direction permeability, md
permx=[275 270 252 267 274 280 265 253 259 270 265 280 289 278 271 271 270 269 270 279 283 275 258 271 295 297 282 280 281 276 290 293 279 270 253 259 275 285 290 280 289 277 290 280 272 276 273 288 281 274 268 265 280 290 270 280 270 260 268 260];
% y direction permeability, md
permy=[220 216 201.6 213.6 219.2 224 212 202.4 207.2 216 212 224 231.2 222.4 216.8 216.8 216 215.2 216 223.2 226.4 220 206.4 216.8 236 237.6 225.6 224 224.8 220.8 232 234.4 223.2 216 202.4 207.2 220 228 232 224 231.2 221.6 232 224 217.6 220.8 218.4 230.4 224.8 219.2 214.4 212 224 232 216 224 216 208 214.4 208];
% block porosity
porosity=[0.192 0.197 0.202 0.19 0.195 0.2 0.204 0.207 0.215 0.205 0.19 0.196 0.205 0.207 0.21 0.216 0.22 0.223 0.215 0.21 0.203 0.2 0.185 0.195 0.205 0.213 0.216 0.221 0.225 0.226 0.22 0.215 0.207 0.2 0.183 0.195 0.205 0.212 0.218 0.225 0.232 0.232 0.225 0.219 0.21 0.219 0.226 0.235 0.23 0.22 0.216 0.225 0.235 0.23 0.232 0.226 0.217 0.229 0.22 0.217];
% block relations to calculate transmissibility
block_link=[0 5 1 2 0; 1 6 2 3 0; 2 7 3 0 0; 0 11 4 5 0; 4 12 5 6 1; 5 13 6 7 2; 6 14 7 8 3; 7 15 8 0 0; 0 19 9 10 0; 9 20 10 0 0; 0 23 11 12 4; 11 24 12 13 5; 12 25 13 14 6; 13 26 14 15 7; 14 27 15 16 8; 15 28 16 17 0; 16 29 17 18 0; 17 30 18 19 0; 18 31 19 20 9; 19 32 20 21 10; 20 33 21 22 0; 21 34 22 0 0; 0 35 23 24 11; 23 36 24 25 12; 24 37 25 26 13; 25 38 26 27 14; 26 39 27 28 15; 27 40 28 29 16; 28 41 29 30 17; 29 42 30 31 18; 30 43 31 32 19; 31 44 32 33 20; 32 0 33 34 21; 33 0 34 0 22; 0 0 35 36 23; 35 0 36 37 24; 36 0 37 38 25; 37 45 38 39 26; 38 46 39 40 27; 39 47 40 41 28; 40 48 41 43 29; 41 49 42 43 30; 42 50 43 44 31; 43 51 44 0 32; 0 0 45 46 38; 45 0 46 47 39; 46 52 47 48 40; 47 53 48 49 41; 48 54 49 50 42; 49 0 50 51 43; 50 0 51 0 44; 0 0 52 53 47; 52 55 53 54 48; 53 56 54 0 49; 0 58 55 56 53; 55 59 56 57 54; 56 60 57 0 0; 0 0 58 59 55; 58 0 59 60 56; 59 0 60 0 57];
% block depth (from block's middle to top), ft
Depth=depth-dz/2;
permx=permx/1000; % d
permy=permy/1000; % d
pi=7750; % initial pressure, unit: psi
pwf=5600; % W-3 (block 19) wellbore flow pressure, unit: psi
cl=0.000009; % oil compressibility, unit: 1/psi
densityl=52.4; % oil density, unit: lb/ft3
rw=0.25; % wellbore radius, unit: ft
qlsc=-650; % W-2 (block 26) oil production rate, unit: STB/D
% initial pressure
p=zeros(1,60);
for i=1:60
    p(i)=7750;
end
% Calculate oil viscosity and FVF
viscosity=zeros(1,60);
Bl=zeros(1,60);
for i=1:60
 viscosity(i)=6e-9*p(i)^2-5e-5*p(i)+1.0121;
 Bl(i)=1/(1+9e-6*(p(i)-14.7));
end
for i=1:60
    ww(i)=block_link(i,1);
end
% Calculate transmissibility at each direction
for i=1:60
   % West direction
    if ww(i)==0
        W(i)=0;
    else W(i)=1.127*8*dy(i)*dz(i)*dy(ww(i))*dz(ww(i))*permx(i)*permx(ww(i))/(viscosity(i)+viscosity(ww(i)))/(Bl(i)+Bl(ww(i)))/(dy(i)*dz(i)*permx(i)*dx(ww(i))+dy(ww(i))*dz(ww(i))*permx(ww(i))*dx(i));
    end
end
for i=1:60
   % South direction
     if block_link(i,2)==0
        S(i)=0;
     else S(i)=1.127*8*dx(i)*dz(i)*dx(block_link(i,2))*dz(block_link(i,2))*permy(i)*permy(block_link(i,2))/(viscosity(i)+viscosity(block_link(i,2)))/(Bl(i)+Bl(block_link(i,2)))/(dx(i)*dz(i)*permy(i)*dy(block_link(i,2))+dx(block_link(i,2))*dz(block_link(i,2))*permy(block_link(i,2))*dy(i));
     end
end
for i=1:60
   % East direction
     if block_link(i,4)==0
        E(i)=0;
     else E(i)=1.127*8*dy(i)*dz(i)*dy(block_link(i,4))*dz(block_link(i,4))*permx(i)*permx(block_link(i,4))/(viscosity(i)+viscosity(block_link(i,4)))/(Bl(i)+Bl(block_link(i,4)))/(dy(i)*dz(i)*permx(i)*dx(block_link(i,4))+dy(block_link(i,4))*dz(block_link(i,4))*permx(block_link(i,4))*dx(i));
     end
end
for i=1:60
% Nouth direction
     if block_link(i,5)==0
        N(i)=0;
     else N(i)=1.127*8*dx(i)*dz(i)*dx(block_link(i,5))*dz(block_link(i,5))*permy(i)*permy(block_link(i,5))/(viscosity(i)+viscosity(block_link(i,5)))/(Bl(i)+Bl(block_link(i,5)))/(dx(i)*dz(i)*permy(i)*dy(block_link(i,5))+dx(block_link(i,5))*dz(block_link(i,5))*permy(block_link(i,5))*dy(i));
     end
end
for i=1:60
     gamma(i)=dx(i)*dy(i)*dz(i)*porosity(i)*cl/Bl(i)/5.615;
    % Central transmissibility
     C(i)=-(W(i)+S(i)+E(i)+N(i)+gamma(i)/1);
end
% Consider the QG term
for i=1:60
WG(i)=W(i)*0.00694*52.4;
SG(i)=S(i)*0.00694*52.4;
EG(i)=E(i)*0.00694*52.4;
NG(i)=N(i)*0.00694*52.4;
CG(i)=-(WG(i)+SG(i)+EG(i)+NG(i));
end
Depth=Depth';
for i=1:60
 if block_link(i,1)==0
     W_Depth(i)=0;
 else W_Depth(i)=Depth(block_link(i,1),1);
 end
end
for i=1:60
 if block_link(i,2)==0
     S_Depth(i)=0;
 else S_Depth(i)=Depth(block_link(i,2),1);
 end
end
for i=1:60
 if block_link(i,4)==0
     E_Depth(i)=0;
     else E_Depth(i)=Depth(block_link(i,4),1);
 end
end
for i=1:60
 if block_link(i,5)==0
     N_Depth(i)=0;
 else N_Depth(i)=Depth(block_link(i,5),1);
 end
end
Depth=Depth';
for i=1:60
 QG(i)=WG(i)*W_Depth(i)+SG(i)*S_Depth(i)+CG(i)*Depth(i)+EG(i)*E_Depth(i)+NG(i)*N_Depth(i);
end
 % Q value without wells
 for i=1:60
    Q(i)=-(gamma(i)*p(i)-QG(i));
 end
% Jacobi
W=W';
S=S';
C=C';
E=E';
N=N';
for i=1:60
T=[W(i), S(i), C(i), E(i), N(i)]; % Matrix of transmissibility
for n=1:5
    if block_link(i,n)~=0
        Jacobi(i,block_link(i,n))=T(1,n);
    end
end
end
% well 19 (block 19) is rate-specified well
Q(19)=Q(19)-qlsc;
% well 26 (block 26) is pressure-specified well
% Calculate req26
ka26=(permy(26)/permx(26))^0.5;
kb26=(permx(26)/permy(26))^0.5;
kc26=(permy(26)/permx(26))^0.25;
kd26=(permx(26)/permy(26))^0.25;
ke26=(permx(26)*permy(26))^0.5;
req26=0.28*(ka26*dx(26)^2+kb26*dy(26)^2)^0.5/(kc26+kd26);
% Calculate Productivity Index J of block26
    J26=2*3.14*1.127*ke26*dz(26)/viscosity(26)/Bl(26)/(log(req26/rw));  
%subtract J from C in block 26
Jacobi(26,block_link(26,3))=Jacobi(26,block_link(26,3))-J26;
Q(26)=Q(26)-5600*J26;
p=reshape(p,60,1);
Q=reshape(Q,60,1);
p=Jacobi\Q;
q26=(p(26)-5600)*J26
qtotal=q26+650;
% Calculate req19
ka19=(permy(19)/permx(19))^0.5;
kb19=(permx(19)/permy(19))^0.5;
kc19=(permy(19)/permx(19))^0.25;
kd19=(permx(19)/permy(19))^0.25;
ke19=(permx(19)*permy(19))^0.5;
req19=0.28*(ka19*dx(19)^2+kb19*dy(19)^2)^0.5/(kc19+kd19);
% Calculate Productivity Index J of block19
    J19=2*3.14*1.127*ke19*dz(19)/viscosity(19)/Bl(19)/(log(req19/rw));  
% Calculate sandface pressure of block19
    SFP19=p(19)-650/J19;
% display
disp('pressure distribution (day 1) is: ');
disp(p);
disp('PI of block 19 (day 1) is: ');
disp(J19);
disp('PI of block 26 (day 1) is: ');
disp(J26);
disp('sandface pressure of block 19 (day 1) is: ');
disp(SFP19);
disp('flow rate of block 26 (day 1) is: ');
disp(q26);
disp('total production (day 1) is: ');
disp(qtotal);

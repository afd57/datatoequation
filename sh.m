T_sh = [0 0];
R = fscanf(fopen('res.txt'),'%f');
R = R';
i=1;

for Rt=R
    T_sh(i) = 1 /(0.00146 + (0.000240 * log(Rt))+ (0.00000010*(log(Rt)^3)) );
    i = i+1;
end

figure(1)
plot(T_sh,R);
hold

T_gercek = 0:1:30;
T_gercek = T_gercek + 273.15; % Kelvine dönüþüm

plot(T_gercek,R,'r')


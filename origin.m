clc;
clear;
close all;
w_n=1;t_final=20;
zeta=2;G_2order0 = tf([1],[1 2*zeta*w_n w_n^2]);
zeta=1;G_2order1 = tf([1],[1 2*zeta*w_n w_n^2]);
zeta=0.7;G_2order2 = tf([1],[1 2*zeta*w_n w_n^2]);
zeta=0;G_2order3 = tf([1],[1 2*zeta*w_n w_n^2]);

figure;
step(G_2order0,G_2order1,G_2order2,G_2order3,t_final);grid on;hold on;
legend('过阻尼','临界阻尼','欠阻尼','无阻尼');

clear; clc; close all;

M = 2048;
L = 1000;

% 適切なサイズの0行列を用意します
Spec = zeros(M/2+1,L); 

% forループを用いてDFTmodoki(M)をL回実行，各実行結果をSpecの各列に代入します
for i = 1:L
    Spec(:,i) = DFTmodoki(M);
end
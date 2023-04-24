clear; clc; close all;

sigLen = 441000;
shiftLen = 1024;
winLen = 2048;
frameLen = %frameLenを計算

% 適切なサイズの0行列を用意します
% 床関数の追加
Spec = zeros(winLen/2+1, frameLen); 

% forループを用いてDFTmodoki(M)をL回実行，各実行結果をSpecの各列に代入します
for i = 1:frameLen
    Spec(:,i) = DFTmodoki(winLen);
end
clear; clc; close all;

M = 2048;
L = 1000;

Spec = % 適切なサイズの0行列を用意します

% forループを用いてDFTmodoki(M)をL回実行，各実行結果をSpecの各列に代入します
clear; clc; close all;

% 信号の読み込み(STEP3)
[sigVec fs] = audioread("kitamuravoice.wav");

sigVec = (sigVec(:,1) + sigVec(:,2))/2;

sigLen = length(sigVec);
time = sigLen/fs;
shiftLen = 1024;
winLen = 2048;


frameLen = ceil((sigLen-winLen)/shiftLen + 1);
newSigLen = (frameLen - 1)*shiftLen + winLen;
newSigVec = zeros(newSigLen, 1);
newSigVec(1:sigLen) = sigVec; 
windowFn = hann(winLen);

% 適切なサイズの0行列を用意
Spec = zeros(floor(winLen/2)+1, frameLen); 

% forループを用いてrealDFT()をL回実行，各実行結果をSpecの各列に代入
for i = 1:frameLen
    % sigVec()のインデックスに適切な値を代入してください
    Spec(:, i) = realDFT(winLen, newSigVec((i-1)*shiftLen+1:(i-1)*shiftLen+winLen), windowFn);
end

absSpec =  abs(Spec);
absLogSpec = 20*log10(absSpec);
imagesc(absLogSpec)
axis xy
t = 0:time
j = (frameLen/time)*t
xticks(j)
xticklabels(t)
xlim([0, frameLen])
xlabel('時間[s]')
f = 0:500:4000
i = ((floor(winLen/2)+1)/(fs/2))*f + 1 
yticks(i)
yticklabels(f)
ylim([0,((floor(winLen/2)+1)/(fs/2))*4000 + 1 ])
ylabel('周波数[Hz]')
clim([-60,20])
fontsize(gca, 20, "points")

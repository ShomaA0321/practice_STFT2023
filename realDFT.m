function retVec = realDFT(winLen, inputVec, windowFn)
% [Input]
%    inputVec: Time-domain signal
% [Output]
%      retVec: Frequency-domain signal calculated by DFT

retVec = fft(inputVec.*windowFn);% inputVecとwindowFnの要素ごとの積を計算し，fft()関数の第一引数としてください
retVec = retVec(1:floor(winLen/2)+1);% 先頭からfloor(winLen/2)+1の部分のみを取り出し，retVecに再代入してください
end
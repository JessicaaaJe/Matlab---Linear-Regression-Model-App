function [model,x,y] = RLM (filename)

data = readmatrix(filename); apploic
x = data(:,1:size(data,2)-1); 
y = data(:,size(data,2)); 

model = fitlm (x,y);
end

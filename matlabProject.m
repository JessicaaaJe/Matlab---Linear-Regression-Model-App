function model = RLM (filename)

data = readmatrix(filename); 
x = data(:,1:size(data,2)-1); 
y = data(:,size(data,2)); 

model = fitlm (x,y); 
end

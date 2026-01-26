clc;
clear;
close all;

check = false;

while ~check
    matrix = randi([0 1], 3, 9);
    
    row_check = all(sum(matrix,2) == 5);
    col_check = all(sum(matrix,1) >= 1);
    
    if row_check && col_check
        check = true;
    end
end

ranges = {1:9, 10:19, 20:29, 30:39, 40:49, ...
          50:59, 60:69, 70:79, 80:90};

ticket = zeros(3,9);

for col = 1:9
    ones_count = sum(matrix(:,col));
    nums = randsample(ranges{col}, ones_count);
    nums = sort(nums);
    idx = find(matrix(:,col) == 1);
    ticket(idx,col) = nums;
end


disp(' ');
disp('=========== TAMBOLA TICKET ===========');

for r = 1:3
    for c = 1:9
        fprintf('%3d   ', ticket(r,c));
    end
    fprintf('\n');
end

function Q1_a
    S = cell(6,6);
    for i = 1:6
        for j = 1:6
            S{i,j} = [i,j]; 
        end
    end
    
    sum_array = 1:12;
    frequency = zeros([1,12]);
    for i = 1:6
        for j = 1:6
            frequency(sum(S{i,j})) = frequency(sum(S{i,j})) + 1;
        end
    end
    
    ln_freq = log(frequency);
    frequency(frequency==0) = nan;
    
    figure;
    subplot(2,1,1); stem(sum_array,frequency);
    xlabel("Macrostates"); ylabel("Microstates");xlim([0,14]);
    title('Microstates vs Macrostates');
    
    for k=2:numel(sum_array)
      text(sum_array(k),frequency(k),['(' num2str(sum_array(k)) ',' num2str(frequency(k)) ')'])
    end
    
    subplot(2,1,2); stem(sum_array,ln_freq);
    xlabel("Totals"); ylabel("ln(multiplicity)");xlim([0,14]);
    title('ln(multiplicity) vs Totals');
    
    for k=2:numel(sum_array)
      text(sum_array(k),ln_freq(k),['(' num2str(sum_array(k)) ',' num2str(ln_freq(k)) ')'])
    end
end
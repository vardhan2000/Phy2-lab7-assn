function Q1_b

    S = cell(6,6);
    S{1,1}=[3,5]; S{1,2}=[1,2]; S{1,3}=[1,1]; S{1,4}=[2,3]; S{1,5}=[3,4]; S{1,6}=[3,5];
    S{2,1}=[2,6]; S{2,2}=[1,5]; S{2,3}=[3,4]; S{2,4}=[1,2]; S{2,5}=[5,6]; S{2,6}=[2,5];
    S{3,1}=[6,6]; S{3,2}=[1,1]; S{3,3}=[2,6]; S{3,4}=[1,3]; S{3,5}=[6,4]; S{3,6}=[5,2];
    S{4,1}=[5,6]; S{4,2}=[1,5]; S{4,3}=[6,5]; S{4,4}=[2,5]; S{4,5}=[1,3]; S{4,6}=[6,2];
    S{5,1}=[2,1]; S{5,2}=[1,5]; S{5,3}=[2,2]; S{5,4}=[3,1]; S{5,5}=[4,1]; S{5,6}=[4,5];
    S{6,1}=[1,3]; S{6,2}=[5,3]; S{6,3}=[1,4]; S{6,4}=[4,4]; S{6,5}=[6,4]; S{6,6}=[6,1];
    
    
    disp(S);
    
    for i = 1:6
        for j = 1:6
        fprintf("%d,",S{i,j}(1))
        end
    end
    fprintf("\n\n");
    for i = 1:6
        for j = 1:6
        fprintf("%d,",S{i,j}(2))
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
    disp(frequency');
    disp(ln_freq');
    
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
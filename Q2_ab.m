function Q2_ab
    move_number = (1:100)';
    reading_on_die = [3,5,1,2,1,1,2,3,3,4,3,5,2,6,1,5,3,4,1,2,5,6,2,5,6,6,...
                     1,1,2,6,1,3,6,4,5,2,5,6,1,5,6,5,2,5,1,3,6,2,2,1,1,5,2,2,...
                     3,1,4,1,4,5,1,3,5,3,1,4,4,4,6,4,6,1,1,5,3,1,6,3,5,5,6,...
                     4,5,3,2,6,3,6,4,4,1,6,3,4,3,2,6,4,1,4]';
    % disp(size(reading_on_die));
    expA_molecular_state = zeros(size(move_number));
    expB_molecular_state = zeros(size(move_number));
    microChartExptA = zeros([100,1]);
    microChartExptB = zeros([100,1]);
    counterA = 0;
    counterB = 0;
    
    for i = 1:100
        if reading_on_die(i) <= 3
            expA_molecular_state(i) = 1;
            counterA = counterA+1;
        else
            expA_molecular_state(i) = 2;
            counterA = counterA-1;
        end
        
        if reading_on_die(i) <= 4
            expB_molecular_state(i) = 1;
            counterB = counterB+1;
        else
            expB_molecular_state(i) = 2;
            counterB = counterB-1;
        end
        
        microChartExptA(i) = counterA;
        microChartExptB(i) = counterB;
    end
    
    
    
%     disp(move_number);
%     disp(reading_on_die);
%     disp(expA_molecular_state);
%     disp(expB_molecular_state);
figure;
plot(move_number', microChartExptA);
hold on;
plot(move_number', microChartExptB);
legend('expA','expB', 'Location','northwest');
xlabel("Move number"); ylabel("Count");
title("Microchart for experiment A and B");
    
end
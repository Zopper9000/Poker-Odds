%Poker hand comparator
%David Lu
%02/09/2015
%Compares two 5 card poker hands
%All cards represented as an integer from 1-52
%Standard Texas Hold 'em hands used
%Returns:
%1 if first hand wins
%-1 if first hand loses
%0 if pot is split
function winner = comparehands(a, b)
%Extract raw card values, returning integer between 1 and 13
avalues = mod(a - 1, 13) + 1;
bvalues = mod(b - 1, 13) + 1;

%Extract raw suits, returning integer between 1 and 4
asuits = floor(a / 13 + 1);
bsuits = floor(b / 13 + 1);

disp('Hand A:');
disp(avalues);
disp(asuits);
disp('Hand B:');
disp(bvalues);
disp(bsuits);

%Check for straight
astraight = sort(avalues);
for i = 2:5
    if(astraight(i) - astraight(1) ~= i - 1)
       astraight = false; 
       break;
    end
end
if(astraight ~= false)
   astraight = true; 
end

disp('Straight A:');
disp(astraight);

bstraight = sort(bvalues);
for i = 2:5
    if(bstraight(i) - bstraight(1) ~= i - 1)
       bstraight = false; 
       break;
    end
end
if(bstraight ~= false)
   bstraight = true; 
end

disp('Straight B:');
disp(bstraight);

%Check for flush
aflush = sort(asuits);
if(aflush(5) - aflush(1) == 0)
    aflush = true;
else
    aflush = false;
end

disp('Flush A:');
disp(aflush);

bflush = sort(bsuits);
if(bflush(5) - bflush(1) == 0)
    bflush = true;
else
    bflush = false;
end

disp('Flush B:');
disp(bflush);
    
winner = 0;
end
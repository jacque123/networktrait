function [result,PH] = ispredictable(CL,tau)
%ISPREDICTABLE heuristicly checks if the collective choices of a community
%CL has at least one complete eventual period based on the last tau  
%elements in the collective choices, and returns the result of the
%collective choices being predictable or not and the head positions of the
%eventual period PH.

CL = CL'; %flip for strfind function
tail = CL((end-tau):end); %extract the tail

PH = strfind(CL,tail)'; %find head positions of subsequences identical to the tail

if length(PH) == 1

    result = false;

else

    result = true;

end

end
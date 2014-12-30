#{ 
	BOOK: 		Introduction to Probability By Charles M Grinstead and J Laurie Snell
	CHAPTER: 	1 (Discrete Probability Distributions)
	AUTHOR: 	Victor Mutai (muvic08@gmail.com, https://github.com/muvic08)

	DESCRIPTION:
		This program simulates n tosses of a fair coin, and prints the proportion of tosses
		that come up heads.  If print = True,  then the outcomes of the tosses (H/T) are
		also printed.
#} 


%% Initialization
clear ; close all; clc

n = 20;
probability = 1/2;
headcounter = 0;
tailcounter = 0;

for toss = 1:n
	r = rand > probability;
	if (r) 
		disp("H");
		headcounter++;
	else 
		disp("T");
		tailcounter++;
	endif
end

%% Print Head to Tails ratio.

printf("\n");
printf("H/T = ");
printf(mat2str(headcounter));
printf("/"); 
printf(mat2str(tailcounter));
disp("");
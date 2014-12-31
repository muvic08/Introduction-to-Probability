#{ 
	BOOK: 		Introduction to Probability By Charles M Grinstead and J Laurie Snell
	CHAPTER: 	1 (Discrete Probability Distributions)
	AUTHOR: 	Victor Mutai (muvic08@gmail.com, https://github.com/muvic08)

	DESCRIPTION:
		This program simulates n tosses of a fair coin, and prints the proportion of tosses
		that come up heads.  If print = True,  then the outcomes of the tosses (H/T) are
		also printed.
#}

function [] = CoinTosses(n, print)
	probability = 1/2;
	headcounter = 0;
	tailcounter = 0;

	for toss = 1:n
		r = rand > probability;
		if (r) 
			printf("H");
			headcounter++;
		else 
			printf("T");
			tailcounter++;
		endif
	end

	%% Print Head to Tails ratio _if print is True
	printf("\n");

	if (print == true) 
		printf("\n");
		printf("H/T = ");
		printf(mat2str(headcounter));
		printf("/"); 
		printf(mat2str(tailcounter));
		disp("");
	endif

end


#{ 
	Sample Run: 
		ENVIRONMENT:		Octave _or Matlab	
		COMMAND:		CoinTosses(30, true)
		RESULTS:		TTTHHHTHTHHTHTHTTTHTTHHHHHTTTT
						H/T = 14/16
#}
#{ 
	BOOK: 		Introduction to Probability By Charles M Grinstead and J Laurie Snell
	CHAPTER: 	1 (Discrete Probability Distributions) --- Example 1.4
	AUTHOR: 	Victor Mutai (muvic08@gmail.com, https://github.com/muvic08)

	SYNOPSIS:
		This program simulates an experiment in which a fair coin is tossed m times. 
		The experiment is repeated n times.  The program records the "winnings" in each
		experiment, where the winnings are defined to be the number of heads minus
		the number of tails.  It also keeps track of the number of times the winnings are 
		"positive" in the course of an experiment (we count as "positive" a time at which 
		the winnings are 0 but the previous winnings are positive). The program returns
		(winningslist), and whose second element is a list of times in the lead in each
		experiment (timesinleadlist).  If print = True and n = 1, then a graph of the game
		is displayed.  If print = True and n > 1, then spike graphs of the winningslist
		and timesinleadlist are displayed. 

	STATUS: 	Incomplete.
#}

function [] = HTSimulation(n, m, print)
	sumTimesInLead = 0;
	sumWinningSum = 0;
	for i = 1:n 
		[tossset, winningsums] = headtail(rand(m, 1));
		winnings = winningsums(end);
		timesinleadlist = length(find(winningsums > 0));
		timesatzero = find(winningsums == 0);
		for i = timesatzero
			if ((winningsums(i) == 0) && (i > 0)) 
				if (winningsums(i-1) > 0) 
					timesinleadlist++;
				endif
			endif
		endfor

		sumTimesInLead += timesinleadlist;
		sumWinningSum += winnings;

	endfor

	printf(mat2str(sumTimesInLead/n));
	printf(", ");
	printf(mat2str(sumWinningSum/n));
	printf("\n");

end

#{ 
	Sample Run: 
		ENVIRONMENT:		Octave _or Matlab	
		COMMAND:		DeMere2(10000, 24, false)
		RESULTS:		success/n = 4897/10000 = 0.4897
#}

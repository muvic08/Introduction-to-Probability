#{ 
	BOOK: 		Introduction to Probability By Charles M Grinstead and J Laurie Snell
	CHAPTER: 	2 (Continuous Probability Densities) ~ Example 2.4 & Example 2.5
	AUTHOR: 	Victor Mutai (muvic08@gmail.com, https://github.com/muvic08)

	SYNOPSIS: 
		Suppose that we choose n random real numbers in [0, 1] and add
		them together. Let X be the sum. How is X distributed?
#}

function [] = Areabargraph(n, m)
	pairsMatrix = rand(n, m);
	sln = sum(pairsMatrix'); 				%% '
	hist(sln, (n/(0.01*n)));
end

#{ 
	Sample Run: 
		ENVIRONMENT:		Octave _or Matlab	
		COMMAND:		setenv("GNUTERM", "qt")  
						Areabargraph(500000,150)
		RESULTS:		normal distribution histogram
#}

#{ 
	BOOK: 		Introduction to Probability By Charles M Grinstead and J Laurie Snell
	CHAPTER: 	1 (Discrete Probability Distributions)
	AUTHOR: 	Victor Mutai (muvic08@gmail.com, https://github.com/muvic08)

	SYNOPSIS:
		Computes the proportion of times that a six appears in a given number 
		of games of four rolls of a die. if print = True, then the rolls are printed out.
#}

function [sixes, n] = DeMere1(n, print)
	sixes = 0;

	for i = 1:n
		rolls = 0;
		do 
			roll = ceil(rand*6);
			rolls++;
			if (print == true) 
				printf(mat2str(roll));
			endif
		until ((roll == 6) || (rolls == 4))

		if (roll == 6) 
			sixes++;
		endif
	end 

	printf("\n");
	printf("Sixes/n = ");
	printf(mat2str(sixes));
	printf("/"); 
	printf(mat2str(n));
	printf(" = ");
	printf(mat2str(sixes/n));
	printf("\n");
end

#{ 
	Sample Run: 
		ENVIRONMENT:		Octave _or Matlab	
		COMMAND:		[sixes, n] = DeMere1(10000, true)
		RESULTS:		Sixes/n = 5168/10000 = 0.5168
#}

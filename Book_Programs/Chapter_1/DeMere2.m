#{ 
	BOOK: 		Introduction to Probability By Charles M Grinstead and J Laurie Snell
	CHAPTER: 	1 (Discrete Probability Distributions)
	AUTHOR: 	Victor Mutai (muvic08@gmail.com, https://github.com/muvic08)

	SYNOPSIS:
		This program simulates m rolls of two dice, and determines whether a double 6
		has appeared (a "success").  It repeats this experiment n times, and prints the
		number of trials that resulted in a success.  It also prints the proportion of trials
		that resulted in a success. Finally, if print = True, then the rolls are printed out.
#}

function [] = DeMere2(n, m, print)
	success = 0;

	for i = 1:n
		rolls = 0;
		do 
			rollset = [ceil(rand*6), ceil(rand*6)];
			rolls++;

			if (print == true) 
				printf(mat2str(rollset));
			endif
		until ( ( (rollset(1) == rollset(2)) && (rollset(1) == 6)) || (rolls == m))

		if (( (rollset(1) == rollset(2)) && (rollset(1) == 6))) 
			success++;
		endif
	end 

	
	printf("\n");
	printf("success/n = ");
	printf(mat2str(success));
	printf("/"); 
	printf(mat2str(n));
	printf(" = ");
	printf(mat2str(success/n));
	printf("\n");
	
end

#{ 
	Sample Run: 
		ENVIRONMENT:		Octave _or Matlab	
		COMMAND:		DeMere2(10000, 24, false)
		RESULTS:		success/n = 4897/10000 = 0.4897 
#}

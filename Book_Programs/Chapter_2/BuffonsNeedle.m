#{ 
	BOOK: 		Introduction to Probability By Charles M Grinstead and J Laurie Snell
	CHAPTER: 	2 (Continuous Probability Densities) ~ Example 2.3
	AUTHOR: 	Victor Mutai (muvic08@gmail.com, https://github.com/muvic08)

	SYNOPSIS: 
		This program simulates the Buffon needle experiment described in the book,
        dropping n pins on a 10 x 10 grid.  The program computes an estimate for Pi,
        using the book_s method. 
#}

function [sln] = BuffonsNeedle(n)
	pairsMatrix = rand(n, 2);
	d = pairsMatrix(:, 1)*0.5;
	theta = pairsMatrix(:, 2)*pi;

	d_ = 0.5 .* sin(theta);
	event = find(d <= d_);
	sln = 2/(length(event)/n);
end

#{ 
	Sample Run: 
		ENVIRONMENT:		Octave _or Matlab	
		COMMAND:		BuffonsNeedle(1000000)
		RESULTS:		3.1453
#}

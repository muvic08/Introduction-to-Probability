#{ 
	BOOK: 		Introduction to Probability By Charles M Grinstead and J Laurie Snell
	CHAPTER: 	2 (Discrete Probability Distributions)
	AUTHOR: 	Victor Mutai (muvic08@gmail.com, https://github.com/muvic08)

	SYNOPSIS: 
		This program estimates  the area under the input function fn and above the
		interval [xmin, xmax] by choosing n random points in the rectangle above the
        interval [xmin, xmax] and between the y-values 0 and ymax.  The function f[x] is
        assumed to be non-negative on the interval [xmin, xmax], and is assumed to
        have a maximum value which does not exceed ymax.   (Note: it is not necessary
        that the maximum value of f[x] = ymax.)  The program returns its area estimate,
         and also plots the random points and the function f[x] on the interval  [xmin,
         xmax].  

#}

function [sln] = MonteCarlo(n, fn, xmin_, xmax_, ymax_)
	pairsMatrix = rand(n, 2);
	x = xmin_ + pairsMatrix(:, 1)*(xmax_ - xmin_);
	y = pairsMatrix(:, 2)*ymax_;

	y_ = fn(x);
	event = find(y <= y_);
	sln = length(event)/n;
end

#{ 
	Sample Run: 
		ENVIRONMENT:		Octave _or Matlab	
		COMMAND:		MonteCarlo(10000, @SquaredFn, 0, 1, 1)  -- Use @ to pass the function.
		RESULTS:		0.33330
#}

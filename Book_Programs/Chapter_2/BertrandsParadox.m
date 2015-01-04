#{ 
	BOOK: 		Introduction to Probability By Charles M Grinstead and J Laurie Snell
	CHAPTER: 	2 (Continuous Probability Densities) ~ Example 2.6
	AUTHOR: 	Victor Mutai (muvic08@gmail.com, https://github.com/muvic08)

	SYNOPSIS: 
		A chord of a circle is a line segment both of whose endpoints lie on
		the circle. Suppose that a chord is drawn at random in a unit circle. What is the
		probability that its length exceeds √3?

		We can describe each chord by giving:
			1. The rectangular coordinates (x, y) of the midpoint M (SIM 1), or 
			2. The polar coordinates (r, θ) of the midpoint M (SIM 2), or
			3. The polar coordinates (1, α) and (1, β) of the endpoints A and B (SIM 3).
#}

function [sim1sln, sim2sln, sim3sln] = BertrandsParadox(n)	
	
	%% SIM 1
	sim1circle = [];
	do 
		sim1rand = -1 + rand(n,2)*2;
		inds = find((sim1rand(:, 1).^2 + sim1rand(:, 2).^2) <= 1);
		sim1circle = [sim1circle; sim1rand(inds, :)];
	until (length(sim1circle) >= n);

	sim1xy = sim1circle(1:n, :);
	sim1L = 2 * sqrt(1 - (sim1xy(:, 1).^2 + sim1xy(:, 2).^2));
	sim1sln = length(find(sim1L > sqrt(3))) / n;


	%% SIM 2
	r = -1 + rand(n,1)*2;
	sim2L = 2 * sqrt(1 - r.^2);
	sim2sln = length(find(sim2L > sqrt(3))) / n;


	%% SIM 3
	alpha = rand(n,1) * 2 * pi;
	sim3L = sqrt(2 - (2*cos(alpha)));
	sim3sln = length(find(sim3L > sqrt(3))) / n;

end

#{ 
	Sample Run: 
		ENVIRONMENT:		Octave _or Matlab	
		COMMAND:		[s1, s2, s3] = BertrandsParadox(1000)
		RESULTS:		s1 =  0.25200
						s2 =  0.48100
						s3 =  0.33700
#}

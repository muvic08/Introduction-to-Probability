function [g, gsum] = headtail(z)
	g = zeros(size(z));
	gsum = g;

	g(find(z <= 0.5)) = -1;
	g(find(z > 0.5)) = 1;

	gsum = cumsum(g);
end
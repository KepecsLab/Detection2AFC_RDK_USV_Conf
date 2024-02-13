function [x, y, life] = compute_life(dots)
    % increment the life of each dot by 1
    life = dots.life+1;

    % figure out if the dot is dead
    deadDots = mod(dots.life,dots.lifetime)==0;

     n = sum(deadDots);
     t = 2*pi*rand(1,n);
     r = (dots.apertureSize(1)/2)*sqrt(rand(1,n));


    % find new position for the dead dots
    dots.x(deadDots) =  dots.center(1) + r.*cos(t);
    dots.y(deadDots) = dots.center(2) + r.*sin(t);

    % send back to function
    x = dots.x; y = dots.y;
end
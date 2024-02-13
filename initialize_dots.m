function [dots] = initialize_dots(dots)


         n = dots.nDots;
         t = 2*pi*rand(1,n);
         r = (dots.apertureSize(1)/2)*sqrt(rand(1,n));
         dots.x = dots.center(1) + r.*cos(t);
         dots.y = dots.center(2) + r.*sin(t);


        dots.life = ceil(rand(1,dots.nDots)*dots.lifetime);
end
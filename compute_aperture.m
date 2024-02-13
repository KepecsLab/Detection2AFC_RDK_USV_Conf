function [x,y] = compute_aperture(x,y,center,apertureSize)
    % this function computes the boundaries for the aperture and then
    % moves dots to the other edge

    % compute boundaries
    badspots = (x-center(1)).^2/(apertureSize(1)/2)^2 + ...
                (y-center(2)).^2/(apertureSize(1)/2)^2 > 1;
            
     n = sum(badspots);
     t = 2*pi*rand(1,n);
     r = (apertureSize(1)/2)*sqrt(rand(1,n));
     x_ = center(1) + r.*cos(t);
     y_ = center(2) + r.*sin(t);


    % move dots as needed
    x(badspots) = x_;
    y(badspots) = y_;
end
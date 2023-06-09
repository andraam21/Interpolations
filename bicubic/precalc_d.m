function [Ix, Iy, Ixy] = precalc_d(I)
    % =========================================================================
    % Prealculeaza matricile Ix, Iy si Ixy ce contin derivatele dx, dy, dxy ale 
    % imaginii I pentru fiecare pixel al acesteia
    % =========================================================================
    
    % obtine dimensiunea imaginii
    [m n nr_colors] = size(I);

    
    % TODO: fa cast matricii I la double
    I = cast(I, "double");

    % TODO: calculeaza matricea cu derivate fata de x Ix
    % TODO: calculeaza matricea cu derivate fata de y Iy
    % TODO: calculeaza matricea cu derivate fata de xy Ixy
    for i = 1:m
      for j = 1:n
        Iy(i, j) = fx(I, i, j);
        Ix(i, j) = fy(I, i, j);
        Ixy(i, j) = fxy(I, i, j);
      endfor
    endfor

endfunction

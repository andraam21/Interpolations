function r = fxy(f, x, y)
    % =========================================================================
    % Aproximeaza derivata fata de x si y a lui f in punctul (x, y).
    % =========================================================================
    [m n] = size(f);
    
    xc = x + 1;
    xm = x - 1;
    yc = y + 1;
    ym = y - 1;
    
    % Verificare daca trece peste lungimea maxima a imaginii
    % sau daca este mai mica decat lungimea minima
    if xc > m || xm < 1 || yc > n || ym < 1
      r = 0;
      return;
    endif
    
    % TODO: calculeaza derivata
    r = (f(x - 1, y - 1) + f(x + 1, y + 1) - f(x + 1, y - 1) - f(x - 1, y + 1)) / 4;
endfunction
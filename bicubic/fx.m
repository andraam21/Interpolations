function r = fx(f, x, y)
    % =========================================================================
    % Aproximeaza derivata fata de x a lui f in punctul (x, y).
    % =========================================================================
    [m n] = size(f);
    
    xc = x + 1;
    xm = x - 1;

    % Verificare daca trece peste lungimea maxima a imaginii
    % sau daca este mai mica decat lungimea minima
    if xc > m || xm < 1
      r = 0;
      return;
    endif
    % TODO: calculeaza derivata
    r = (f(x + 1, y) - f(x - 1, y)) / 2;
endfunction
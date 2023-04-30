function r = fy(f, x, y)
    % =========================================================================
    % Aproximeaza derivata fata de y a lui f in punctul (x, y).
    % =========================================================================
    [m n] = size(f);

    yc = y + 1;
    ym = y - 1;

    % Verificare daca trece peste lungimea maxima a imaginii
    % sau daca este mai mica decat lungimea minima
    if yc > n || ym < 1
      r = 0;
      return;
    endif
    % TODO: calculeaza derivata
    r = (f(x, y + 1) - f(x, y - 1)) / 2;
endfunction
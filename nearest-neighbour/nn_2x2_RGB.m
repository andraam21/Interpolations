function [out] = nn_2x2_RGB(img, STEP = 0.1)
    % =========================================================================
    % Aplica interpolare nearest neighbour pe imaginea 2x2 img cu puncte
    % intermediare echidistante.
    % img este o imagine colorata RGB.
    % =========================================================================

    % TODO: extrage canalul rosu al imaginii
    red = img(:,:,1);
    % TODO: extrage canalul verde al imaginii
    green = img(:,:,2);
    % TODO: extrace canalul albastru al imaginii
    blue = img(:,:,3);

    % TODO: aplica functia nn pe cele 3 canale ale imaginii
    new_red = nn_2x2(red, STEP);
    new_green = nn_2x2(green, STEP);
    new_blue = nn_2x2(blue, STEP);
    
    n = length(new_red);
    % TODO: formeaza imaginea finala cu cele 3 canale de culori
    % Hint: functia cat

     out = cat(n * n, new_red, new_green, new_blue);
endfunction

% Create a containers.Map to hold the cursive letter coordinates
cursiveMap = containers.Map;

% Define cursive letter 'a' coordinates
x_a = [1 1.4 1.5 2 3 4 3 2 1.7 1.5 2 3 4 4 4 4.5 5];
y_a = [0.5 0.25 1.5 2.5 3 3. 3 2.5 2 1.5 0.5 0.33 1.5 3 1.5 0 0.5];
cursiveMap('a') = [x_a; y_a]';

% Define cursive letter 'b' coordinates
x_b = [1 1.6 2 2 2 3 4 4.2 3.5 2 2 5 ];
y_b = [0.5 1.5 4 2 1 1 1.5 2 2.5 2.1 1 0.5];
cursiveMap('b') = [x_b; y_b]';

% Define cursive letter 'c' coordinates
x_c = [1 1.4 1.5 2 3 4 3 2 1.7 1.5 2 3 4 4.25 4 4.25 5];
y_c = [0.5 0.25 1.5 2.5 3 3. 3 2.5 2 1.5 0.5 0.25 0.45 0.75 0.6 0.25 0.5];
cursiveMap('c') = [x_c; y_c]';

% Define cursive letter 'd' coordinates
x_d = [1 2.5 4 4 4 4 3 2 2 4 4 5];
y_d = [0.5 0.5 1  4 2 1 1 1.3 2 2.1 1 0.5];
cursiveMap('d') = [x_d; y_d]';

% Define cursive letter 'e' coordinates
x_e = [1 1.5 0.9  1 2 4 3 1 2 4 3.5 5];
y_e = [0.5 0.25 1.25 2 1.75 2 3 2 0.5 1 1.25 0.5];
cursiveMap('e') = [x_e; y_e]';

% Define cursive letter 'f' coordinates
x_f = [1 2 2 2 3.2 2.6 0.3 3 4 5];
y_f = [0.5 1 2 3.5 4 3.6 2.7 2.5 2.3  0.5];
cursiveMap('f') = [x_f; y_f]';

% Define cursive letter 'g' coordinates
x_g = [ 1 2 2.3 2 3 4 4 3 2 2.2 3.5 4 4.3 5];
y_g = [ 0.5 0.75 1.5 1 0.5 1 3 4 3.5 2.5 2.5 3 1.5 0.5];
cursiveMap('g') = [x_g; y_g]';

% Define cursive letter 'h' coordinates
x_h = [1 1.5 2.5 2 2.5 2.5 3 4 4 4 4.5 5];
y_h = [0.5 1 3.75 3.75 0.5 0.5 2.5 2 1.25 0.5 0.5 0.5];
cursiveMap('h') = [x_h; y_h]';

% Define cursive letter 'i' coordinates
x_i = [1 2 3 3.5 3 2.5 3 4 5];
y_i = [0.5 1 2.25 3.5 4 3.5 2.25 1 0.5];
cursiveMap('i') = [x_i; y_i]';

% Define cursive letter 'j' coordinates
x_j = [1 1 4 3 3.3 4 3 2.5 3.3 4 5];
y_j = [0.5 3 4 3.66 2 1 0.5 1.5 2 2.5 0.5];
cursiveMap('j') = [x_j; y_j]';

% Define cursive letter 'k' coordinates
x_k = [1 2 2.5 2 2 2 2 3 4 3 2 5];
y_k = [0.5 2.75 4.25 4.25 2.75 0.5 2.25 3.5 4 3 2.25 0.5];
cursiveMap('k') = [x_k; y_k]';

% Define cursive letter 'l' coordinates
x_l = [1 2 3 3.5 3 2.5 3 4 5];
y_l = [0.5 1 2.25 3.5 4 3.5 2.25 1 0.5];
cursiveMap('l') = [x_l; y_l]';

% Define cursive letter 'm' coordinates
x_m = [1 0.5 1 1.5 1.5 1.5 2.3 3 3 3.8 5];
y_m = [0.5 3.5 4 4 0.5 0.5 4 0.5 0.5 4 0.5];
cursiveMap('m') = [x_m; y_m]';

% Define cursive letter 'n' coordinates
x_n = [1 1 1.5 1.5 1.5 3 4.3 5];
y_n = [0.5 4 4 0.5 0.5 4 4 0.5];
cursiveMap('n') = [x_n; y_n]';

% Define cursive letter 'o' coordinates
x_o = [1.0 1.3 1.80 1.65 1.7 2.7 3.58 3.6 2.7 1.92 2.8 3.65 4.1 5.0];
y_o = [0.5 2.5 2.72 2.35 1.4 0.9 1.50 2.7 3.5 2.96 2.6 2.80 3.1 0.5];
cursiveMap('o') = [x_o; y_o]';

% Define cursive letter 'p' coordinates
x_p = [1.0 1.6 2.30 2.2 2.4 3.00 3.70 3.9 3.4 2.5 2.25 2.3 2.4 3.0 3.9 5.0];
y_p = [0.5 0.4 1.27 3.5 3.6 3.85 3.73 3.0 2.5 2.7 3.11 3.5 0.6 0.5 0.4 0.5];
cursiveMap('p') = [x_p; y_p]';

% Define cursive letter 'q' coordinates
x_q = [1.0 3.0 3.31 2.5 2.00 2.0 2.3 2.9 3.30 3.27 3.27 3.3 3.40 3.6 3.7 5.0];
y_q = [0.5 1.5 3.50 3.9 3.55 2.9 2.4 2.4 3.25 3.60 2.35 1.4 0.63 0.0 0.2 0.5];
cursiveMap('q') = [x_q; y_q]';

% Define cursive letter 'r' coordinates
x_r = [1.0 1.9 2.2 2.45 2.38 2.45 3 3.7 3.18 2.37 2.2 2.3 2.60 3.35 5.0];
y_r = [0.5 0.7 1.5 3.00 3.00 2.75 3 2.8 3.00 2.50 1.5 1.0 0.65 0.59 0.5];
cursiveMap('r') = [x_r; y_r]';

% Define cursive letter 's' coordinates
x_s = [1.0 2.2 4.00 3.30 2.50 3.50 2.50 2.00 4.0 5.0];
y_s = [0.5 1.5 2.75 3.40 2.40 0.75 0.00 0.75 1.2 0.5];
cursiveMap('s') = [x_s; y_s]';

% Define cursive letter 't' coordinates
x_t = [1.0 2.00 2.45 2.5 2.67 2.85 3.2 4 3.2 2.59 1.9 1.6 2.59 3.1 2.67...
2.5 2.45 2.60 3.4 5.0];
y_t = [0.5 0.55 1.00 1.5 2.30 2.85 3.0 3 3.0 2.99 2.9 2.8 2.99 3.8 2.30...
1.5 1.00 0.40 0.1 0.5];
cursiveMap('t') = [x_t; y_t]';

% Define cursive letter 'u' coordinates
x_u = [1 2.0 1.8 2.7 4.0 4.75 4.5 5];
y_u = [0.5 4.0 1.5 0.5 1.5 4.0 2.25 0.5];
cursiveMap('u') = [x_u; y_u]';

% Define cursive letter 'v' coordinates
x_v = [1 1.5 2.5 4.0 4.5 3.3 4.0 5];
y_v = [0.5 3.5 0.5 2.25 4.0 3.3 2.5 0.5];
cursiveMap('v') = [x_v; y_v]';

% Define cursive letter 'w' coordinates
x_w = [1 1.3 0.8 2.1 2.8 3.1 4.4 4.8 4.5 4.0 5];
y_w = [0.5 3.5 1.0 0.5 2.25 0.5 0.75 2.5 3.45 2.5 0.5];
cursiveMap('w') = [x_w; y_w]';

% Define cursive letter 'x' coordinates
x_x = [1.0 2.5 1.5 1.0 4.5 2.8 3.0 4.5 5];
y_x = [4.0 2.25 0.75 1.25 4.0 2.25 0.75 1.0 0.5];
cursiveMap('x') = [x_x; y_x]';

% Define cursive letter 'y' coordinates
x_y = [1.0 1.8 2.2 3.3 3.8 3.5 2.0 2.5 4.5 5];
y_y = [0.5 4.0 2.6 2.9 4.0 1.0 0.5 1.4 2.0 0.5];
cursiveMap('y') = [x_y; y_y]';

% Define cursive letter 'z' coordinates
x_z = [1.0 1.5 2.5 3.5 2.0 3.5 3.5 2.0 3.0 4.7 5];
y_z = [0.5 3.1 4.0 3.4 2.5 2.25 0.6 0.5 1.5 2.0 0.5];
cursiveMap('z') = [x_z; y_z]';

% Saving the map to a MAT file
save('cursive_letters.mat', 'cursiveMap');

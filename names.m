% Plot the x and y coordinates for each group member's name
% Azyan
x1 = [2.5 2 1.25 1 1.5 2.5 2.5 2.5 2.65 3 3.5 4 4.5 3.8 3.8 4 4.75 5 4.75...
4 3.35 4 4.75 5.5 6 6 6.75 7.2 7.5 7.5 7.5 7.45 6.5 6 7.5 8 8.5 8.75...
9 9.75 10.1 9.75 9 8.75 8.7 9 9.7 10.1 10.2 10.25 11 11 11 12 13 12 12 13];

y1 = [3.25 2.75 2 2.75 3.5 3.25 2.75 2 1.9 2.5 3.25 3.5 3.25 2.6 2.6 2.7 2.75...
2.5 2 1.5 2 2.35 2.75 3 3.5 3 2.75 3.25 3.5 3 2.5 2 1.5 2 2.5 2.75 3 3.25...
3.5 3.5 3.3 3.5 3.5 3.25 2.75 2 2.75 3.3 2.75 2 3.5 2.5 2.5 3.5 3 2 1.5 2];

% Syasya
x2 = [0.7 3.0 2.5 1.5 2 1.10 0.35 1.00 2.4 2.6 2.90 3.20 3.2 3.15 2.95 2.6...
2.4 3.0 3.5 3.90 3.8 3.55 3.4 3.60 3.95 4.00 4.01 4.35 4.7 4.5 4.30 ...
4.5 4.66 4.68 4.40 5.0 5.2 5.50 5.80 5.8 5.75 5.55 5.2 5.0 5.6 6.1 ...
6.50 6.4 6.15 6.0 6.20 6.55 6.60 6.61 6.95];

y2 = [2.4 3.5 4.0 3.0 1 0.25 0.80 1.45 2.0 1.8 1.65 2.05 1.5 1.00 0.50 0.3...
0.6 1.5 2.0 2.05 1.7 1.60 1.8 2.05 2.05 1.85 1.60 1.80 2.1 2.2 2.05 ...
1.9 1.79 1.57 1.55 2.0 1.8 1.65 2.05 1.4 0.90 0.40 0.2 0.5 1.4 1.9 ...
1.95 1.6 1.50 1.7 1.95 1.95 1.75 1.50 1.8];

% Erika 
x3 = [1.85 1.5 1.0 1.2 1.65 1.4 1.0 0.8 1.4 1.9 2.1 1.95 2.05 2.5 2.45 2.5 ...
2.7 2.9 2.8 3.0 3.3 3.3 3.1 3.5 3.9 3.5 4.0 4.2 4.5 5.0 5.0 4.5 ...
4.4 5.1 5.3 5.4 5.6];

y3 = [3.1 3.4 3.0 2.5 2.25 2.15 1.9 1.25 0.9 1.5 1.9 1.75 1.7 1.8 1.5 1.0 ...
1.25 1.8 1.25 1.0 2.0 3.25 1.0 2.0 1.8 1.5 1.0 1.2 1.8 1.8 1.2 1.0 ...
1.7 1.8 1.5 1.0 1.25];

% Muqri
x4 = [1 1 1 2 2.5 3.5 4 4 5 6.5 6 7 9 9 7 8.5 9.25 9 8.9 10 11 11 11.5 13 14 14 14];

y4 = [1 3.5 3 4 2.5 4 1 3 1 3 2.5 1 1.5 3 2 1.25 2 0 0.3 0.5 3 1 2 3 2.75 3.5 1];

% Making the figure for the four subplots
figure;

% Names for each subplot
subplot_names = {'Azyan', 'Syasya', 'Erika', 'Muqri'};

% Creating the four subplots
create_subplot(x1, y1, 1, subplot_names{1});
create_subplot(x2, y2, 2, subplot_names{2});
create_subplot(x3, y3, 3, subplot_names{3});
create_subplot(x4, y4, 4, subplot_names{4});

% Making the function to plot the names in calligraphy
function create_subplot(x,y,subplot_num,subplot_name)
    % Subplot with 2 rows and 2 columns
    subplot(2,2,subplot_num);
    n = length(x);
    t = 0:n-1; % Parametric coordinate t
    tt = 0:0.01:n-1; % More dense coordinate tt for spline interpolation

    % Compute spline interpolation
    xx = spline(t,x,tt);
    yy = spline(t,y,tt);
    % Plot settings
    plot(xx, yy, 'k', 'LineWidth', 1.5); % plot spline
    hold on
    plot(x, y, 'bo', 'MarkerFaceColor', 'b'); % plot data points
    grid on

    % Defining the axis for each subplot
axis([min(x)-0.5,max(x)+0.5,min(y)-0.5,max(y)+0.5]);

    % Naming the title and axis for each subplot
    title(subplot_name);
    xlabel('x');
    ylabel('y');
    set(gca, 'FontSize', 10, 'LineWidth', 1);
    grid on
end
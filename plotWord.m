function plotWord(word)
    % Load cursive letters map
    load('cursive_letters.mat'); % Load the map containing cursive letter coordinates

    % Convert the input word to lowercase
    word = lower(word);

    % Initialise variables for plotting coordinates
    wordCoordinates = [];

    % Shift value for x-coordinate
    shiftValue = 0;

    % Combine the letters into words
    for i = 1:length(word)
        letter = word(i);
        if isKey(cursiveMap, letter)
            % Fetch coordinates for the current letter
            letterCoords = cursiveMap(letter);
            % Apply the shift to the x-coordinates for the second letter and beyond
            if i > 1
                letterCoords(:, 1) = letterCoords(:, 1) + shiftValue;
            end
            % Combine the coordinates for the word
            wordCoordinates = [wordCoordinates; letterCoords; NaN NaN]; % Separate letters by NaN for plotting
            % Update the shift value after the first letter
            shiftValue = shiftValue + 4; % Adjust the shift for the next letter
        else
            disp(['Coordinates not found for the letter ' letter]);
        end
    end

    % Plot the cursive word with spline interpolation
    plot(wordCoordinates(:, 1), wordCoordinates(:, 2), 'b.', 'MarkerSize', 10); % Plot solid blue dots
    hold on; % Retain the current plot while adding the splines

    % Iterate through each letter, plotting spline curves with animation
    startIdx = 1;
    endIdx = 1;
    while endIdx <= size(wordCoordinates, 1)
        if isnan(wordCoordinates(endIdx, 1))
            % Plot spline curve for the letters with animation
            splineX = wordCoordinates(startIdx:endIdx - 1, 1);
            splineY = wordCoordinates(startIdx:endIdx - 1, 2);
            t = 1:numel(splineX);
            ts = linspace(1, numel(splineX), 100);
            xs = spline(t, splineX, ts);
            ys = spline(t, splineY, ts);
            plot(xs, ys, 'k', 'LineWidth', 1); % Plot the spline curve in black
            startIdx = endIdx + 1;

            % Introduce a pause for a little animation
            pause(0.35); % Adjust the pause duration as needed
        end
        endIdx = endIdx + 1;
    end

    hold off; % Release the hold on the plot
    grid on; % Add grid lines to the plot
    title('Cursive Word (Spline Interpolation)');
    xlabel('X-axis');
    ylabel('Y-axis');
end

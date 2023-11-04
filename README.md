[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-24ddc0f5d75046c5622901739e7c5dd533143b0c8e959d652212380cedb1ea36.svg)](https://classroom.github.com/a/i8q0vJZ5)

# Group Assignment (MATLAB)

# Summary 

> Description of solutions to all the tasks

## Task 1 (Graph paper transcription)
- Each member is to write their (short-hand) name in cursive on graph paper.
- 



## Task 2 (Digital reconstruction)
Using the `names.mat` from 1), plot data points with use of
- `spline` : produce a series of polynomials joined at knots. Its used to interpolate or smooth data.
- `subplot` : illustrates all 4 members' name plot graphs in a single figure

```rust
Muqri will put code for names.m here

```

## Task 3 (Word combination & function scripting)

```ruby
function plotWord(word)
    % Load cursive letters map
    load('cursive_letters.mat'); % Load the map containing cursive letter coordinates

    % Convert the input word to lowercase
    word = lower(word);

    % Initialize variables for plotting coordinates
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

    % Iterate through each letter, plotting spline curves
    startIdx = 1;
    endIdx = 1;
    while endIdx <= size(wordCoordinates, 1)
        if isnan(wordCoordinates(endIdx, 1))
            % Plot spline curve for the letters
            splineX = wordCoordinates(startIdx:endIdx - 1, 1);
            splineY = wordCoordinates(startIdx:endIdx - 1, 2);
            t = 1:numel(splineX);
            ts = linspace(1, numel(splineX), 100);
            xs = spline(t, splineX, ts);
            ys = spline(t, splineY, ts);
            plot(xs, ys, 'k', 'LineWidth', 1); % Plot the spline curve in black
            startIdx = endIdx + 1;
        end
        endIdx = endIdx + 1;
    end

    hold off; % Release the hold on the plot
    grid on; % Add grid lines to the plot
    title('Cursive Word (Spline Interpolation)');
    xlabel('X-axis');
    ylabel('Y-axis');
end

```

### Contribution declaration:
- Task 1: Everyone in the group
- Task 2: @muqriyahya
- Task 3: @azyansafriudin
- README: @rameriika & @syasyahzqh

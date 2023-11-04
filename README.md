
# Group Assignment (MATLAB)

## Introduction
Welcome to our project repository! This collaborative effort involves a comprehensive approach to recreating cursive handwriting using digital methods. Our team, consisting of four members, has embarked on the journey of crafting, storing, and merging data plot points to form cohesive cursive words, as well as undertaking specific steps involving graph paper transcription and digital reconstruction to bring cursive writing to life.
# Summary
# Digital Reconstruction
Using the `names.mat` from Task 1, plot data points with the use of:
- `spline` : Produces a series of polynomials joined at knots. It is used to interpolate or smooth data.
- `subplot` : Illustrates all 4 members' name plot graphs in a single figure.

```rust
Muqri will put code for names.m here

```

(Muqri will upload the png here)

# Word Combination & Function Scripting
## Project Workflow
1. Data Plot Creation: Together, we meticulously generated data plot points representing 6-7 unique cursive letters each.
2. Data Organization: These data plots are efficiently stored and accessed using containers.Map. We obtained the containers.Map structure from the official MATLAB documentation at [MathWorks](https://www.mathworks.com/help/matlab/ref/containers.map.html).
3. Function Development: The plotWord function is designed to load and combine the cursive letters, facilitating the formation of complete words.

## MATLAB Implementation
In order to utilize the plotWord function in MATLAB, we've provided an m-file named cursive_letters. This file contains the data for all 26 alphabetical cursive letters. Loading this file will save the necessary data into your MATLAB workspace, allowing you to execute the function successfully.

## Objective
Our primary goal is to establish a method for merging individual cursive letters into words using the plotWord function.


```rust
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
To use the plotWord function, call it with a string parameter:
```
plotWord('Hello')
```
This will display the cursive representation of the word 'Hello', using the letter representations defined in the cursiveMap.

<img width="553" alt="hello" src="https://github.com/sm2302-aug23/grp-matlab-irrational-4/assets/141397076/dca0c678-7473-425b-9cf0-e9ad93b01367">


### Contribution declaration:
- Task 1: Everyone in the group
- Task 2: @muqriyahya
- Task 3: @azyansafriudin
- README: @rameriika & @syasyahzqh

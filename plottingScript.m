%plotting script

slope = input('Provide an expression for the slope(s) of the line to plot (multiple slopes must be in single row vector): ');
figure
hold on;

if length(slope) == 1
    [x, y] = toralCurve(slope);
    plotCurve(x, y);
else
    for s = 1:length(slope)
        [x, y] = toralCurve(slope(s));
        plotCurve(x, y);
    end
end

        


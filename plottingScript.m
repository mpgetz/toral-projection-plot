%plotting script

slope = input('Provide an expression for the slope of the line to plot ');

[x, y] = toralCurve(slope);
plotCurve(x, y);


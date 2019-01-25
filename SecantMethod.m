format long
xPrev = 2.5;
xCurrent = 3.5;
xFuture = 0;
numIters = 10;

iterCounter = 0;

while iterCounter < numIters
    iterCounter = iterCounter + 1;
    fprintf('ITERATION #%ld\n', iterCounter);
    
    fprintf('xPrev: %ld\n', xPrev);
    fxPrev = SecantPositionEstimation(xPrev);
    fprintf('fxPrev: %ld\n', fxPrev);
    
    fprintf('xCurrent: %ld\n', xCurrent);
    fxCurrent = SecantPositionEstimation(xCurrent);
    fprintf('fxCurrent: %ld\n', fxCurrent);
    
    xFuture = xCurrent - (fxCurrent * (xPrev - xCurrent)) / (fxPrev - fxCurrent);
    fprintf('xFuture: %ld\n\n', xFuture);
    
    xPrev = xCurrent;
    xCurrent = xFuture;
end


%STARTUP   Startup file
%   Change the name of this file to STARTUP.M. The file 
%   is executed when MATLAB starts up, if it exists 
%   anywhere on the path.  In this example, the
%   MAT-file generated during quitting using FINISHSAV
%   is loaded into MATLAB during startup.

%   Copyright 1984-2000 The MathWorks, Inc. 
%   $Revision: 1.4 $  $Date: 2000/06/01 16:19:26 $

addpath('/Users/anthony/stuff/analysis/diffusion/scripts/diffusionAnalysis/displayFunctions');
addpath('/Users/anthony/stuff/analysis/diffusion/scripts/diffusionAnalysis');
addpath('/Users/anthony/scripts/matlabTools');
addpath('/Users/anthony/scripts/arrayTools/matlab');
addpath('/Users/anthony/scripts/arrayTools/matlab/fitFunctions');
cd /Users/anthony/stuff/analysis;

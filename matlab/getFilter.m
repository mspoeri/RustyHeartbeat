function Hd = getFilter
              % GETFILTER
Returns  a
discrete-
time filter
object.

%
MATLAB Code
%
Generated by
MATLAB(R)
9.2 and
the    DSP
System Toolbox
9.4.
%
Generated on
: 12-Apr-2018 14:04:18

Fpass = 10;
%
Passband Frequency
Fstop = 40;
%
Stopband Frequency
Apass = 0.1;
%

Passband Ripple(dB)

Astop = 120;
%

Stopband Attenuation(dB)

Fs = 500;
%
Sampling Frequency

h = fdesign.lowpass('fp,fst,ap,ast', Fpass, Fstop, Apass, Astop, Fs);

Hd = design(h, 'equiripple', ...
'DensityFactor', 20, ...
'MinOrder', 'any', ...
'StopbandShape', 'flat');



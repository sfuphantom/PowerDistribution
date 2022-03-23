clc
clear

vin_min = 8
vin = 12
vin_max = 15
vout = 5
iout = 0.2
vf_est = 0.1
vleak = 15
n = 0.85
%fsw = 199e3
%% 1) transformer turns

nps = (65 - vin_max - vleak)/(vout+vf_est) % less than
npsChosen = 4
%npsChosen = floor(nps)

%% Primary inductance
% pick transformer with primary inductance 30% larger than calculated
toffmin = 450e-9
ton_min = 170e-9
isw_min = 0.290
% sw off time
lpri_swOff = (toffmin*npsChosen*(vout+vf_est))/isw_min % greater than
% sw on time
lpri_swOn = (ton_min*vin_max)/isw_min %greater than
%lpri = lpri_swOff*1.3
lpri=40e-6
lsec = lpri/(npsChosen)^2
%% Max load switching frequency
d = ((vout+vf_est)*npsChosen)/((vout+vf_est)*npsChosen+vin)
isw = (vout*iout*2)/(n*vin*d)
ton = (lpri*isw)/vin
toff = (lpri*isw)/(nps*(vout+vf_est))
fsw = 1/(ton+toff)
% pick transformer with saturation current rating larger than 2A

%% choose output Diode
isw_max = 1.375
idiode_max = isw_max*npsChosen
vrev = vout +vin_max/npsChosen

%% output Cap

cout = lpri*isw^2/(2*vout*0.01*vout)
% be mindful of dc bias on ceramic caps
%% snubber 
vzen_max = 65-vin_max % less than
vsw_max = vin_max+vzen_max %
vrev_snub = vsw_max % larger

%% rfb resistor

rfb = npsChosen*(vout+vf_est)/100e-6



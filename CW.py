#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon Dec  7 16:08:29 2020

@author: pi
"""
import numpy as np
import matplotlib.pyplot as plt
import math
#from matplotlib.figure import Figure 

data = np.loadtxt('code from pi/radar/dats_test.txt')
#plt.plot(data)
#plt.show

data_norm=data/max(data)


data_norm_list = np.ndarray.tolist(data_norm)
data_norm_list = data_norm_list[:math.floor(len(data_norm_list)/2)]# taking every second point in data, due to ADC sampling nature
data1=np.asarray(data_norm_list,dtype=float)
# constants
c = 3*10**8 #(m/s) speed of light
FS = 44100 #needs to be matched with ADC sampling rate

#radar parameters 
Tp = 0.250 #(s) observation time
N = Tp*FS # number of of samples per observation
fc = 2437*10**6 #(Hz) Center frequency (fixed)

#invertion due to HW
s=data1* (-1) 
#s=test
#doppler vs. time data creation
X=round(len(s)/N)-1
sif =np.zeros((int(X),int(N)))
for ii in range(X):
    idx1=(ii)*N
    idx2=(ii+1)*N
    s_ii=s[int(idx1):int(idx2)]
    sif[[ii],:] = s_ii

##subtract the average DC term here and zeropad
sif=np.array(sif)-np.mean(s)
zpad= 8*N/2


###create doppler vs. time plot:
v = np.fft.ifft(sif,int(zpad),1)
v = 20 * np.log10(abs(v)); #calculate v in dB
v = v[:,0:int(np.size(v,1)/2)]
##data=v
#
### nyt
mmax = np.max(v)

# velocity calculation
delta_f = np.linspace(0, np.size(v,1),num=int(FS/2))
Lambda=c/fc
velocity = delta_f*Lambda/2

# time calculation
time = np.linspace(1,Tp*np.size(v,0),int(np.size(v,0)))
v = np.transpose(v)
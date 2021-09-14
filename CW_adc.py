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

data = np.loadtxt('dats_test.txt')
#plt.plot(data)
#plt.show

data_norm=data/max(data)


data_norm_list = np.ndarray.tolist(data_norm)
data_norm_list = data_norm_list[:math.floor(len(data_norm_list)/2)]# taking every second point in data, due to ADC sampling nature
data1=np.asarray(data_norm_list,dtype=float)
# constants
c = 3E8 #(m/s) speed of light
FS = 44100 #needs to be matched with ADC sampling rate

#radar parameters 
Tp = 0.250 #(s) observation time
N = Tp*FS # number of of samples per observation
fc = 2437E6 #(Hz) Center frequency (fixed)

#invertion due to HW
s=data1#[i * 1 for i in data1]

#doppler vs. time data creation
X=round(len(s)/N)-1
sif =np.zeros(X)
for ii in range(1,X):
    idx1=1+(ii-1)*N
    idx2=ii*N
    sif = np.array([sif, s[idx1:idx2]])

##subtract the average DC term here and zeropad
#sif=np.array(sif)-np.mean(s)
#zpad= 8*N/2


###create doppler vs. time plot:
#v = np.fft.ifft(sif,int(zpad),1)
#v = 20 * np.log10(abs(v)); #calculate v in dB
#v = v[0:141,:]
##data=v
#
###plot
#plt.imshow(v, aspect='auto')
#plt.colorbar()
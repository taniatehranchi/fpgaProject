import cv2
import numpy as np

I = cv2.imread('input.png')
G = cv2.cvtColor(I, cv2.COLOR_BGR2GRAY)

f = open("inputImage.txt", "a")

rowSlice=int(G.shape[0]/8)
colSlice=int(G.shape[1]/8)
row_pointer=0
col_pointer=0


for i in range(rowSlice):
    for j in range(colSlice):
        row_pointer=i*8
        col_pointer=j*8
        for index1 in range(8):
            for index2 in range(8):
                f.write(str(G[row_pointer][col_pointer])+'\n')
                col_pointer=col_pointer+1
            row_pointer = row_pointer + 1
            col_pointer = j * 8



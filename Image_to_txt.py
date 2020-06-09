import cv2
import numpy as np

I = cv2.imread('input.png')
G = cv2.cvtColor(I, cv2.COLOR_BGR2GRAY)
np.savetxt('inputImage.txt', G, fmt='%d')

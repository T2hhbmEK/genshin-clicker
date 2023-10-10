import numpy as np

# option_x = x1 w + x2
# x = [x1, x2].T
# A.T.dot(A).dot(x) = A.T.dot(b)
# np.linalg.lstsq

# WideScreen
# 1280x720   800, 806, 812 -480
# 1707x720  1145,1151,1157 -562  (2560x1080 1718,1727,1736)
# 2560x720  1836,1842,1848 -724

A = np.array([[1280,2560/1.5,2560],[1,1,1]]).T
b = np.array([800,1145,1836])
# ATA = A.T.dot(A)
# ATb = A.T.dot(b)
# x1, x2 = np.linalg.inv(ATA).dot(ATb)
x1, x2 = np.linalg.lstsq(A, b, rcond=None)[0]
print(np.round(x1, 3), np.round(x2, 1))
# 0.809 -236.2
# __import__("pdb").Pdb().set_trace()

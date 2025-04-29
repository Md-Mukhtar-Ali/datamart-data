import os
import glob
dirPath = "/root/dir1/"
#filelist=os.listdir(dirPath)
fileCount=glob.glob("/root/dir1/")
#print("\n------------------\n")
#print("type of file :- ", type(filelist))
#print("os.listdir(dirPath)", os.listdir(dirPath))
#print("\n******************\n")
#print(fileCount)
print(len(fileCount))

fileCount = len([f for f in os.listdir(dirPath) if os.path.isfile(os.path.join(dirPath, f))])
print("Total files:", fileCount)

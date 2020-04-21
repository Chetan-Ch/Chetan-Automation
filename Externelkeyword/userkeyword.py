import os

def create_folder(foldername):
    os.mkdir("/home/chetan/Documents/"+foldername)

def create_sub_folder(subfoldername):
    os.mkdir("/home/chetan/Documents/"+subfoldername)
def concatenate_two_values(val1,val2):
    val3=val1+""+val2
    return val3
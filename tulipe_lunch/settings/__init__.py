#use this to change between local and production settings files
try:
    from .local_settings import *
except:
    pass
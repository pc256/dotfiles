try:
    import readline
    import atexit
    import os
except ImportError:
    print("Python shell enhancement modules not available.")
else:
    histfile = os.path.join(os.environ["HOME"], ".pythonhistory")
    if os.path.isfile(histfile):
        readline.read_history_file(histfile)
    atexit.register(readline.write_history_file, histfile)
    del os, histfile, readline, atexit
    print ("Python shell history is enabled.")

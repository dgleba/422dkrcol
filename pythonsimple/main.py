import config
import creds

print ('Hello World docker .py')

# https://stackoverflow.com/questions/5055042/whats-the-best-practice-using-a-settings-file-in-python
print (creds.a['secretkey'])
print (config.a['egg'])

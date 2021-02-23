import os

server = 'http://mz.ingress:30080'  # Ingress
#server = 'https://minibox.mosip.net'
ssl_verify = False

superadmin_user = 'superadmin'
superadmin_pwd =  os.gentenv('SUPERADMIN_PWD')
csv_idschema = 'csv/idschema.csv'


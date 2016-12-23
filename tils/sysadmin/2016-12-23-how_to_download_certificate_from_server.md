# How to download certificate from server
 
_Category: sysadmin_
_Generated on 2016-12-23_
_source: [source]_

`$ echo -n | openssl s_client -connect HOST:PORTNUMBER | sed -ne '/-BEGIN CERTIFICATE-/,/-END CERTIFICATE-/p' > SERVERNAME.cert`


`-showcerts` can be used to download all the certificates in the chain. 

echo -n is needed because openssl s_client is interactive.

`$ sed -ne '/-BEGIN CERTIFICATE-/,/-END CERTIFICATE-/p'` removes information about the certificate chain.  
This is the preferred format to import the certificate into other keystores.

[source]: http://serverfault.com/a/192731/100015
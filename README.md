Here are my scripts I like to use to manage SSL/TLS certs.

makePrivateKey.sh is used to make your private key. It only really needs to be called when you're first setting things up.

makeCSR.sh creates a CSR, using your private key

makeCombinedCrt.sh makes a combined crt from what's given by the SSL/TLS vendor I tend to use (optional)

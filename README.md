Here are my scripts I like to use to manage SSL/TLS certs.

Note scripts that use the crt file depend on you having gone through the process to get your crt to use with these scripts. If you're starting from scratch:
 1. Make your private key.
 1. Make your Certificate Signing Request (CSR) using the key.
 1. Submit the CSR to whomever you're getting your certificate from.
 1. Go through whatever the SSL/TLS vendor's process is and get your Certificate (CRT).
 1. Many users will be happy with their key and crt files. Some will need to combine the crt with bundled chained certs. There are various helper scripts that'll get you to convert the certificates to various formats.

<h2>Disclaimer</h2>
These are provided as-is. Hence, if they set your house on fire (etc), then I guess you did it to yourself? I use most of these scripts for my production context, but I can't guarantee anything. The MS-oriented ones I haven't really fully tested. I learn as I go. Good luck. ^_^ 

<h2>makePrivateKey.sh</h2>
Makes your private key. It only really needs to be called when you're first setting things up.

<h2>makeCSR.sh</h2>
Creates a CSR, using your private key

<h2>makeCombinedCrt.sh</h2>
Makes a combined crt from what's given by the SSL/TLS vendor I tend to use (optional)

<h2>makePem.sh</h2>
Concatenates your crt and private key files to make a pem. According to some dude on the Internet, some MS-like services won't let you provide the private key separately, so... Yeah.. That's "cool". Theoretically, this helps there.

<h2>makePfx.sh</h2>
Concatenates your crt and private key files to make a pfx. 

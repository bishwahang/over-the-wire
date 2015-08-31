##Vortex2
The Executatbel /vrotex/vortex2 is owned by vortex3, hence we use this to tar /etc/vortex_pass/vortex3 using -p key to preserve permission
later, tar -xvf "/tmp/ownership.$$.tar" -O , flag outputs the result in stdout stream.
the catch was file was created along with dollar sign and not the process_id number value.

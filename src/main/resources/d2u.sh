Source="ftp://gnoodap.bo.ingv.it/Core/MEDSEA_REANALYSIS_PHYS_006_004/myov04_2367-med-ingv-tem-rean-dm"
Dest="s3://melodies-wp6"

lls() {
   ncftpls -f up $1 #> filenamelist
   }

ldl() {
    while read filename; do
      echo $1/$filename >> $0.list_ldl
      ncftpget -f up $1/$filename &> /dev/null
      echo $filename
      done
   }

lul() {
   while read filename; do
      echo $filename >> $0.list_lul
      s3cmd put $filename $1
      rm $filename
      done
   }

#lls $Source/20080101_dm-INGV--TEMP-MFSs4b3-MED-b20140620_re-fv05.00.nc.gz | ldl $Source | lul $Dest/2008/
lls $Source/2008* | ldl $Source | lul $Dest/2008/
lls $Source/2009* | ldl $Source | lul $Dest/2009/
lls $Source/2010* | ldl $Source | lul $Dest/2010/
lls $Source/2011* | ldl $Source | lul $Dest/2011/
lls $Source/2012* | ldl $Source | lul $Dest/2012/

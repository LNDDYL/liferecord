#�˽ű�3��һ�鱸��
dte=$(date '+%d')  #�����Ǽ���
#dte=$(date '+%j') #�����ǽ���ĵڼ���
destdir=/app/backup/$((dte%3))
if [ ! -d $destdir ]; then
mkdir $destdir
fi

stty intr '^c'
DLC=/qad/progress/oe102b;export DLC
. $DLC/bin/slib_env
PATH=$PATH:$DLC/bin;export PATH
PROMSGS=$DLC/promsgs;export PROMSGS
PROTERMCAP=$DLC/protermcap;export PROTERMCAP
probkup online /qad/2011se/db/hlpprod $destdir/hlpprod.bak
echo $(date "+%Y-%m-%d %X") 'backup to' $destdir 'OK!'  >> /app/backup/bkup.log

#!/bin/bash 
SEMAPHORE_FILE="/tmp/my_semaphore.lock"
T1=${1:-5}
T2=${2:-3}
PROCESS_ID=$$
echo "Процесс $PROCESS_ID запущен..."
while true; do
     if mkdir "$SEMAPHORE_FILE" 2>/dev/null; then 
         echo "Процесс  $PROCESS_ID получил доступ к ресурсу..."
         sleep $T2
         rmdir "$SEMAPHORE_FILE" 
         echo "Процесс $PROCCES_ID освободил ресурс..."
         break
     else
         echo "Ресурс $PROCESS_ID занят, ждем $T1 секунд..."
         sleep $T1
     fi
done

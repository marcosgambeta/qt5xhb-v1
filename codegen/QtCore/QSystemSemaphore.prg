$header

#include "hbclass.ch"

CLASS QSystemSemaphore

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD setKey
   METHOD key
   METHOD acquire
   METHOD release
   METHOD error
   METHOD errorString

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QSystemSemaphore(const QString &key, int initialValue = 0, AccessMode mode = Open)
*/
$constructor=|new|const QString &,int=0,QSystemSemaphore::AccessMode=QSystemSemaphore::Open

$deleteMethod

/*
void setKey(const QString &key, int initialValue = 0, AccessMode mode = Open)
*/
$method=|void|setKey|const QString &,int=0,QSystemSemaphore::AccessMode=QSystemSemaphore::Open

/*
QString key() const
*/
$method=|QString|key|

/*
bool acquire()
*/
$method=|bool|acquire|

/*
bool release(int n = 1)
*/
$method=|bool|release|int=1

/*
SystemSemaphoreError error() const
*/
$method=|QSystemSemaphore::SystemSemaphoreError|error|

/*
QString errorString() const
*/
$method=|QString|errorString|

$extraMethods

#pragma ENDDUMP

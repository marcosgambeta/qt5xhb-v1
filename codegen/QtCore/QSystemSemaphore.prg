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

$prototype=QSystemSemaphore(const QString &key, int initialValue = 0, AccessMode mode = Open)
$constructor=|new|const QString &,int=0,QSystemSemaphore::AccessMode=QSystemSemaphore::Open

$deleteMethod

$prototype=void setKey(const QString &key, int initialValue = 0, AccessMode mode = Open)
$method=|void|setKey|const QString &,int=0,QSystemSemaphore::AccessMode=QSystemSemaphore::Open

$prototype=QString key() const
$method=|QString|key|

$prototype=bool acquire()
$method=|bool|acquire|

$prototype=bool release(int n = 1)
$method=|bool|release|int=1

$prototype=SystemSemaphoreError error() const
$method=|QSystemSemaphore::SystemSemaphoreError|error|

$prototype=QString errorString() const
$method=|QString|errorString|

$extraMethods

#pragma ENDDUMP

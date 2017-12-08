$header

#include "hbclass.ch"

CLASS QDBusUnixFileDescriptor

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD swap
   METHOD isValid
   METHOD fileDescriptor
   METHOD setFileDescriptor
   METHOD giveFileDescriptor
   METHOD takeFileDescriptor
   METHOD isSupported

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

$prototype=QDBusUnixFileDescriptor()
$internalConstructor=|new1|

$prototype=explicit QDBusUnixFileDescriptor(int fileDescriptor)
$internalConstructor=|new2|int

$prototype=QDBusUnixFileDescriptor(const QDBusUnixFileDescriptor &other)
$internalConstructor=|new3|const QDBusUnixFileDescriptor &

//[1]QDBusUnixFileDescriptor()
//[2]explicit QDBusUnixFileDescriptor(int fileDescriptor)
//[3]QDBusUnixFileDescriptor(const QDBusUnixFileDescriptor &other)

HB_FUNC( QDBUSUNIXFILEDESCRIPTOR_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDBusUnixFileDescriptor_new1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QDBusUnixFileDescriptor_new2();
  }
  else if( ISNUMPAR(1) && ISQDBUSUNIXFILEDESCRIPTOR(1) )
  {
    QDBusUnixFileDescriptor_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void swap(QDBusUnixFileDescriptor &other)
$method=|void|swap|QDBusUnixFileDescriptor &

$prototype=bool isValid() const
$method=|bool|isValid|

$prototype=int fileDescriptor() const
$method=|int|fileDescriptor|

$prototype=void setFileDescriptor(int fileDescriptor)
$method=|void|setFileDescriptor|int

$prototype=void giveFileDescriptor(int fileDescriptor)
$method=|void|giveFileDescriptor|int

$prototype=int takeFileDescriptor()
$method=|int|takeFileDescriptor|

$prototype=static bool isSupported()
$staticMethod=|bool|isSupported|

$extraMethods

#pragma ENDDUMP

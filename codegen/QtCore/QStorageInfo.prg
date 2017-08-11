$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QStorageInfo

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD swap
   METHOD setPath
   METHOD rootPath
   METHOD device
   METHOD fileSystemType
   METHOD name
   METHOD displayName
   METHOD bytesTotal
   METHOD bytesFree
   METHOD bytesAvailable
   METHOD isRoot
   METHOD isReadOnly
   METHOD isReady
   METHOD isValid
   METHOD refresh
   METHOD mountedVolumes
   METHOD root

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,4,0

/*
QStorageInfo()
*/
$internalConstructor=5,4,0|new1|

/*
explicit QStorageInfo(const QString &path)
*/
$internalConstructor=5,4,0|new2|const QString &

/*
explicit QStorageInfo(const QDir &dir)
*/
$internalConstructor=5,4,0|new3|const QDir &

/*
QStorageInfo(const QStorageInfo &other)
*/
$internalConstructor=5,4,0|new4|const QStorageInfo &

//[1]QStorageInfo()
//[2]explicit QStorageInfo(const QString &path)
//[3]explicit QStorageInfo(const QDir &dir)
//[4]QStorageInfo(const QStorageInfo &other)

HB_FUNC_STATIC( QSTORAGEINFO_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStorageInfo_new1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QStorageInfo_new2();
  }
  else if( ISNUMPAR(1) && ISQDIR(1) )
  {
    QStorageInfo_new3();
  }
  else if( ISNUMPAR(1) && ISQSTORAGEINFO(1) )
  {
    QStorageInfo_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,4,0

/*
void swap(QStorageInfo &other)
*/
$method=5,4,0|void|swap|QStorageInfo &

/*
void setPath(const QString &path)
*/
$method=5,4,0|void|setPath|const QString &

/*
QString rootPath() const
*/
$method=5,4,0|QString|rootPath|

/*
QByteArray device() const
*/
$method=5,4,0|QByteArray|device|

/*
QByteArray fileSystemType() const
*/
$method=5,4,0|QByteArray|fileSystemType|

/*
QString name() const
*/
$method=5,4,0|QString|name|

/*
QString displayName() const
*/
$method=5,4,0|QString|displayName|

/*
qint64 bytesTotal() const
*/
$method=5,4,0|qint64|bytesTotal|

/*
qint64 bytesFree() const
*/
$method=5,4,0|qint64|bytesFree|

/*
qint64 bytesAvailable() const
*/
$method=5,4,0|qint64|bytesAvailable|

/*
bool isRoot() const
*/
$method=5,4,0|bool|isRoot|

/*
bool isReadOnly() const
*/
$method=5,4,0|bool|isReadOnly|

/*
bool isReady() const
*/
$method=5,4,0|bool|isReady|

/*
bool isValid() const
*/
$method=5,4,0|bool|isValid|

/*
void refresh()
*/
$method=5,4,0|void|refresh|

/*
static QList<QStorageInfo> mountedVolumes()
*/
$staticMethod=5,4,0|QList<QStorageInfo>|mountedVolumes|

/*
static QStorageInfo root()
*/
$staticMethod=5,4,0|QStorageInfo|root|

$extraMethods

#pragma ENDDUMP

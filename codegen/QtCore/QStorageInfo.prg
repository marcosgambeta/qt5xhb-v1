%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

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

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,4,0

$prototype=QStorageInfo()
$internalConstructor=5,4,0|new1|

$prototype=explicit QStorageInfo(const QString &path)
$internalConstructor=5,4,0|new2|const QString &

$prototype=explicit QStorageInfo(const QDir &dir)
$internalConstructor=5,4,0|new3|const QDir &

$prototype=QStorageInfo(const QStorageInfo &other)
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

$prototype=void swap(QStorageInfo &other)
$method=5,4,0|void|swap|QStorageInfo &

$prototype=void setPath(const QString &path)
$method=5,4,0|void|setPath|const QString &

$prototype=QString rootPath() const
$method=5,4,0|QString|rootPath|

$prototype=QByteArray device() const
$method=5,4,0|QByteArray|device|

$prototype=QByteArray fileSystemType() const
$method=5,4,0|QByteArray|fileSystemType|

$prototype=QString name() const
$method=5,4,0|QString|name|

$prototype=QString displayName() const
$method=5,4,0|QString|displayName|

$prototype=qint64 bytesTotal() const
$method=5,4,0|qint64|bytesTotal|

$prototype=qint64 bytesFree() const
$method=5,4,0|qint64|bytesFree|

$prototype=qint64 bytesAvailable() const
$method=5,4,0|qint64|bytesAvailable|

$prototype=bool isRoot() const
$method=5,4,0|bool|isRoot|

$prototype=bool isReadOnly() const
$method=5,4,0|bool|isReadOnly|

$prototype=bool isReady() const
$method=5,4,0|bool|isReady|

$prototype=bool isValid() const
$method=5,4,0|bool|isValid|

$prototype=void refresh()
$method=5,4,0|void|refresh|

$prototype=static QList<QStorageInfo> mountedVolumes()
$staticMethod=5,4,0|QList<QStorageInfo>|mountedVolumes|

$prototype=static QStorageInfo root()
$staticMethod=5,4,0|QStorageInfo|root|

$extraMethods

#pragma ENDDUMP

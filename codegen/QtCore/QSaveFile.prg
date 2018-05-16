%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$beginClassFrom=QFileDevice

   METHOD new
   METHOD delete
   METHOD fileName
   METHOD setFileName
   METHOD open
   METHOD commit
   METHOD cancelWriting
   METHOD setDirectWriteFallback
   METHOD directWriteFallback

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$prototype=QSaveFile(const QString &name)
$internalConstructor=5,1,0|new1|const QString &

$prototype=QSaveFile(QObject *parent = 0)
$internalConstructor=5,1,0|new2|QObject *=0

$prototype=QSaveFile(const QString &name, QObject *parent)
$internalConstructor=5,1,0|new3|const QString &,QObject *

//[1]QSaveFile(const QString &name)
//[2]QSaveFile(QObject *parent = 0)
//[3]QSaveFile(const QString &name, QObject *parent)

HB_FUNC_STATIC( QSAVEFILE_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QSaveFile_new1();
  }
  else if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QSaveFile_new2();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQOBJECT(2) )
  {
    QSaveFile_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

$deleteMethod=5,1,0

$prototype=QString fileName() const
$method=5,1,0|QString|fileName|

$prototype=void setFileName(const QString &name)
$method=5,1,0|void|setFileName|const QString &

$prototype=bool open(OpenMode flags)
$method=5,1,0|bool|open|QIODevice::OpenMode

$prototype=bool commit()
$method=5,1,0|bool|commit|

$prototype=void cancelWriting()
$method=5,1,0|void|cancelWriting|

$prototype=void setDirectWriteFallback(bool enabled)
$method=5,1,0|void|setDirectWriteFallback|bool

$prototype=bool directWriteFallback() const
$method=5,1,0|bool|directWriteFallback|

#pragma ENDDUMP

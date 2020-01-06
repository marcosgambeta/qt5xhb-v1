%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QUrl>

$prototype=QFileSelector(QObject *parent = 0)
$constructor=|new|QObject *=0

$deleteMethod

$prototype=QString select(const QString &filePath) const
$internalMethod=|QString|select,select1|const QString &

$prototype=QUrl select(const QUrl &filePath) const
$internalMethod=|QUrl|select,select2|const QUrl &

//[1]QString select(const QString &filePath) const
//[2]QUrl select(const QUrl &filePath) const

HB_FUNC_STATIC( QFILESELECTOR_SELECT )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFileSelector_select1();
  }
  else if( ISNUMPAR(1) && ISQURL(1) )
  {
    QFileSelector_select2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=select

$prototype=QStringList extraSelectors() const
$method=|QStringList|extraSelectors|

$prototype=void setExtraSelectors(const QStringList &list)
$method=|void|setExtraSelectors|const QStringList &

$prototype=QStringList allSelectors() const
$method=|QStringList|allSelectors|

#pragma ENDDUMP

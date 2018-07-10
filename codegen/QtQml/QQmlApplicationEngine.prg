%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QQmlEngine

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$prototype=QQmlApplicationEngine(QObject *parent=0)
$internalConstructor=5,1,0|new1|QObject *=0

$prototype=QQmlApplicationEngine(const QUrl &url, QObject *parent=0)
$internalConstructor=5,1,0|new2|const QUrl &,QObject *=0

$prototype=QQmlApplicationEngine(const QString &filePath, QObject *parent=0)
$internalConstructor=5,1,0|new3|const QString &,QObject *=0

//[1]QQmlApplicationEngine(QObject *parent=0)
//[2]QQmlApplicationEngine(const QUrl &url, QObject *parent=0)
//[3]QQmlApplicationEngine(const QString &filePath, QObject *parent=0)

HB_FUNC_STATIC( QQMLAPPLICATIONENGINE_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QQmlApplicationEngine_new1();
  }
  else if( ISBETWEEN(1,2) && ISQURL(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QQmlApplicationEngine_new2();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QQmlApplicationEngine_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,1,0

$prototype=QList<QObject*> rootObjects()
$method=5,1,0|QList<QObject *>|rootObjects|

$prototype=void load(const QUrl &url)
$internalMethod=5,1,0|void|load,load1|const QUrl &

$prototype=void load(const QString &filePath)
$internalMethod=5,1,0|void|load,load2|const QString &

//[1]void load(const QUrl &url)
//[2]void load(const QString &filePath)

HB_FUNC_STATIC( QQMLAPPLICATIONENGINE_LOAD )
{
  if( ISNUMPAR(1) && ISQURL(1) )
  {
    QQmlApplicationEngine_load1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QQmlApplicationEngine_load2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void loadData(const QByteArray &data, const QUrl &url = QUrl())
$method=5,1,0|void|loadData|const QByteArray &,const QUrl &=QUrl()

$beginSignals
$signal=5,1,0|objectCreated(QObject*,QUrl)
$endSignals

#pragma ENDDUMP

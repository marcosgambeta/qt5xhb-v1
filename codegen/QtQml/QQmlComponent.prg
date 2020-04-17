%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtQml

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtQml/QQmlContext>

$prototype=QQmlComponent(QQmlEngine * engine, QObject * parent = 0)
$internalConstructor=|new1|QQmlEngine *,QObject *=0

$prototype=QQmlComponent(QQmlEngine * engine, const QString & fileName, QObject * parent = 0)
$internalConstructor=|new2|QQmlEngine *,const QString &,QObject *=0

$prototype=QQmlComponent(QQmlEngine * engine, const QString & fileName, CompilationMode mode, QObject * parent = 0)
$internalConstructor=|new3|QQmlEngine *,const QString &,QQmlComponent::CompilationMode,QObject *=0

$prototype=QQmlComponent(QQmlEngine * engine, const QUrl & url, QObject * parent = 0)
$internalConstructor=|new4|QQmlEngine *,const QUrl &,QObject *=0

$prototype=QQmlComponent(QQmlEngine * engine, const QUrl & url, CompilationMode mode, QObject * parent = 0)
$internalConstructor=|new5|QQmlEngine *,const QUrl &,QQmlComponent::CompilationMode,QObject *=0

/*
[1]QQmlComponent(QQmlEngine * engine, QObject * parent = 0)
[2]QQmlComponent(QQmlEngine * engine, const QString & fileName, QObject * parent = 0)
[3]QQmlComponent(QQmlEngine * engine, const QString & fileName, CompilationMode mode, QObject * parent = 0)
[4]QQmlComponent(QQmlEngine * engine, const QUrl & url, QObject * parent = 0)
[5]QQmlComponent(QQmlEngine * engine, const QUrl & url, CompilationMode mode, QObject * parent = 0)
*/

HB_FUNC_STATIC( QQMLCOMPONENT_NEW )
{
  if( ISBETWEEN(1,2) && ISQQMLENGINE(1) && ISOPTQOBJECT(2) )
  {
    QQmlComponent_new1();
  }
  else if( ISBETWEEN(2,3) && ISQQMLENGINE(1) && ISCHAR(2) && ISOPTQOBJECT(3) )
  {
    QQmlComponent_new2();
  }
  else if( ISBETWEEN(3,4) && ISQQMLENGINE(1) && ISCHAR(2) && ISNUM(3) && ISOPTQOBJECT(4) )
  {
    QQmlComponent_new3();
  }
  else if( ISBETWEEN(2,3) && ISQQMLENGINE(1) && ISQURL(2) && ISOPTQOBJECT(3) )
  {
    QQmlComponent_new4();
  }
  else if( ISBETWEEN(3,4) && ISQQMLENGINE(1) && ISQURL(2) && ISNUM(3) && ISOPTQOBJECT(4) )
  {
    QQmlComponent_new5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=virtual QObject * beginCreate(QQmlContext * publicContext)
$virtualMethod=|QObject *|beginCreate|QQmlContext *

$prototype=virtual void completeCreate()
$virtualMethod=|void|completeCreate|

$prototype=virtual QObject * create(QQmlContext * context = 0)
$internalVirtualMethod=|QObject *|create,create1|QQmlContext *=0

$prototype=void create(QQmlIncubator & incubator, QQmlContext * context = 0, QQmlContext * forContext = 0)
$internalMethod=|void|create,create2|QQmlIncubator &,QQmlContext *=0,QQmlContext *=0

/*
[1]virtual QObject * create(QQmlContext * context = 0)
[2]void create(QQmlIncubator & incubator, QQmlContext * context = 0, QQmlContext * forContext = 0)
*/

HB_FUNC_STATIC( QQMLCOMPONENT_CREATE )
{
  if( ISBETWEEN(0,1) && (ISQQMLCONTEXT(1)||ISNIL(1)) )
  {
    QQmlComponent_create1();
  }
  else if( ISBETWEEN(1,3) && ISQQMLINCUBATOR(1) && (ISQQMLCONTEXT(2)||ISNIL(2)) && (ISQQMLCONTEXT(3)||ISNIL(3)) )
  {
    QQmlComponent_create2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=create

$prototype=QQmlContext * creationContext() const
$method=|QQmlContext *|creationContext|

$prototype=bool isError() const
$method=|bool|isError|

$prototype=bool isLoading() const
$method=|bool|isLoading|

$prototype=bool isNull() const
$method=|bool|isNull|

$prototype=bool isReady() const
$method=|bool|isReady|

$prototype=qreal progress() const
$method=|qreal|progress|

$prototype=Status status() const
$method=|QQmlComponent::Status|status|

$prototype=QUrl url() const
$method=|QUrl|url|

$prototype=void loadUrl(const QUrl & url)
$internalMethod=|void|loadUrl,loadUrl1|const QUrl &

$prototype=void loadUrl(const QUrl & url, CompilationMode mode)
$internalMethod=|void|loadUrl,loadUrl2|const QUrl &,QQmlComponent::CompilationMode

/*
[1]void loadUrl(const QUrl & url)
[2]void loadUrl(const QUrl & url, CompilationMode mode)
*/

HB_FUNC_STATIC( QQMLCOMPONENT_LOADURL )
{
  if( ISNUMPAR(1) && ISQURL(1) )
  {
    QQmlComponent_loadUrl1();
  }
  else if( ISNUMPAR(2) && ISQURL(1) && ISNUM(2) )
  {
    QQmlComponent_loadUrl2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=loadUrl

$prototype=void setData(const QByteArray & data, const QUrl & url)
$method=|void|setData|const QByteArray &,const QUrl &

$beginSignals
$signal=|progressChanged(qreal)
$signal=|statusChanged(QQmlComponent::Status)
$endSignals

#pragma ENDDUMP

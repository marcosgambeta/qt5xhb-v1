%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtQml

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QJSEngine()
$internalConstructor=|new1|

$prototype=QJSEngine(QObject * parent)
$internalConstructor=|new2|QObject *

//[1]QJSEngine()
//[2]QJSEngine(QObject * parent)

HB_FUNC_STATIC( QJSENGINE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QJSEngine_new1();
  }
  else if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    QJSEngine_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void collectGarbage()
$method=|void|collectGarbage|

$prototype=QJSValue evaluate(const QString & program, const QString & fileName = QString(), int lineNumber = 1)
$method=|QJSValue|evaluate|const QString &,const QString &=QString(),int=1

$prototype=QJSValue globalObject() const
$method=|QJSValue|globalObject|

$prototype=QJSValue newArray(uint length = 0)
$method=|QJSValue|newArray|uint=0

$prototype=QJSValue newObject()
$method=|QJSValue|newObject|

$prototype=QJSValue newQObject(QObject * object)
$method=|QJSValue|newQObject|QObject *

#pragma ENDDUMP

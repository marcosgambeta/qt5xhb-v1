$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QJSVALUE
#endif

CLASS QJSEngine INHERIT QObject

   METHOD new
   METHOD delete
   METHOD collectGarbage
   METHOD evaluate
   METHOD globalObject
   METHOD newArray
   METHOD newObject
   METHOD newQObject

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QJSEngine()
*/
$internalConstructor=|new1|

/*
QJSEngine(QObject * parent)
*/
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

/*
void collectGarbage()
*/
$method=|void|collectGarbage|

/*
QJSValue evaluate(const QString & program, const QString & fileName = QString(), int lineNumber = 1)
*/
$method=|QJSValue|evaluate|const QString &,const QString &=QString(),int=1

/*
QJSValue globalObject() const
*/
$method=|QJSValue|globalObject|

/*
QJSValue newArray(uint length = 0)
*/
$method=|QJSValue|newArray|uint=0

/*
QJSValue newObject()
*/
$method=|QJSValue|newObject|

/*
QJSValue newQObject(QObject * object)
*/
$method=|QJSValue|newQObject|QObject *

#pragma ENDDUMP

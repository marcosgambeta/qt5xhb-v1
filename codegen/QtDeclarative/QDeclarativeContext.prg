$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
REQUEST QOBJECT
REQUEST QVARIANT
REQUEST QDECLARATIVEENGINE
#endif

CLASS QDeclarativeContext INHERIT QObject

   METHOD new
   METHOD delete
   METHOD baseUrl
   METHOD contextObject
   METHOD contextProperty
   METHOD engine
   METHOD isValid
   METHOD parentContext
   METHOD resolvedUrl
   METHOD setBaseUrl
   METHOD setContextObject
   METHOD setContextProperty

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDeclarativeContext ( QDeclarativeEngine * engine, QObject * parent = 0 )
$internalConstructor=|new1|QDeclarativeEngine *,QObject *=0

$prototype=QDeclarativeContext ( QDeclarativeContext * parentContext, QObject * parent = 0 )
$internalConstructor=|new2|QDeclarativeContext *,QObject *=0

//[1]QDeclarativeContext ( QDeclarativeEngine * engine, QObject * parent = 0 )
//[2]QDeclarativeContext ( QDeclarativeContext * parentContext, QObject * parent = 0 )

HB_FUNC_STATIC( QDECLARATIVECONTEXT_NEW )
{
  if( ISBETWEEN(1,2) && ISQDECLARATIVEENGINE(1) && ISOPTQOBJECT(2) )
  {
    QDeclarativeContext_new1();
  }
  else if( ISBETWEEN(1,2) && ISQDECLARATIVECONTEXT(1) && ISOPTQOBJECT(2) )
  {
    QDeclarativeContext_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QUrl baseUrl () const
$method=|QUrl|baseUrl|

$prototype=QObject * contextObject () const
$method=|QObject *|contextObject|

$prototype=QVariant contextProperty ( const QString & name ) const
$method=|QVariant|contextProperty|const QString &

$prototype=QDeclarativeEngine * engine () const
$method=|QDeclarativeEngine *|engine|

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=QDeclarativeContext * parentContext () const
$method=|QDeclarativeContext *|parentContext|

$prototype=QUrl resolvedUrl ( const QUrl & src )
$method=|QUrl|resolvedUrl|const QUrl &

$prototype=void setBaseUrl ( const QUrl & baseUrl )
$method=|void|setBaseUrl|const QUrl &

$prototype=void setContextObject ( QObject * object )
$method=|void|setContextObject|QObject *

$prototype=void setContextProperty ( const QString & name, QObject * value )
$internalMethod=|void|setContextProperty,setContextProperty1|const QString &,QObject *

$prototype=void setContextProperty ( const QString & name, const QVariant & value )
$internalMethod=|void|setContextProperty,setContextProperty2|const QString &,const QVariant &

//[1]void setContextProperty ( const QString & name, QObject * value )
//[2]void setContextProperty ( const QString & name, const QVariant & value )

HB_FUNC_STATIC( QDECLARATIVECONTEXT_SETCONTEXTPROPERTY )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISQOBJECT(2) )
  {
    QDeclarativeContext_setContextProperty1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQVARIANT(2) )
  {
    QDeclarativeContext_setContextProperty2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP

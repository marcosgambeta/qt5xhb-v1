$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QExtensionManager INHERIT QObject,QAbstractExtensionManager

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD extension
   METHOD registerExtensions
   METHOD unregisterExtensions

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QExtensionManager ( QObject * parent = 0 )
*/
$constructor=|new|QObject *=0

$deleteMethod

/*
virtual QObject * extension ( QObject * object, const QString & iid ) const
*/
$method=|QObject *|extension|QObject *,const QString &

/*
virtual void registerExtensions ( QAbstractExtensionFactory * factory, const QString & iid = QString() )
*/
$method=|void|registerExtensions|QAbstractExtensionFactory *,const QString &=QString()

/*
virtual void unregisterExtensions ( QAbstractExtensionFactory * factory, const QString & iid = QString() )
*/
$method=|void|unregisterExtensions|QAbstractExtensionFactory *,const QString &=QString()

#pragma ENDDUMP

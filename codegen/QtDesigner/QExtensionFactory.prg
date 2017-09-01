$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QEXTENSIONMANAGER
REQUEST QOBJECT
#endif

CLASS QExtensionFactory INHERIT QObject,QAbstractExtensionFactory

   METHOD new
   METHOD delete
   METHOD extensionManager
   METHOD extension

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QExtensionFactory ( QExtensionManager * parent = 0 )
*/
$constructor=|new|QExtensionManager *=0

$deleteMethod

/*
QExtensionManager * extensionManager () const
*/
$method=|QExtensionManager *|extensionManager|

/*
virtual QObject * extension ( QObject * object, const QString & iid ) const
*/
$method=|QObject *|extension|QObject *,const QString &

#pragma ENDDUMP

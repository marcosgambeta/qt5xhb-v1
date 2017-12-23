$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QDIR
#endif

CLASS QAbstractFormBuilder

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD load
   METHOD save
   METHOD setWorkingDirectory
   METHOD workingDirectory

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QAbstractFormBuilder ()
$constructor=|new|

$deleteMethod

$prototype=virtual QWidget * load ( QIODevice * device, QWidget * parent = 0 )
$virtualMethod=|QWidget *|load|QIODevice *,QWidget *=0

$prototype=virtual void save ( QIODevice * device, QWidget * widget )
$virtualMethod=|void|save|QIODevice *,QWidget *

$prototype=void setWorkingDirectory ( const QDir & directory )
$method=|void|setWorkingDirectory|const QDir &

$prototype=QDir workingDirectory () const
$method=|QDir|workingDirectory|

$extraMethods

#pragma ENDDUMP

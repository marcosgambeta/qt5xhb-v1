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

/*
QAbstractFormBuilder ()
*/
$constructor=|new|

$deleteMethod

/*
virtual QWidget * load ( QIODevice * device, QWidget * parent = 0 )
*/
$method=|QWidget *|load|QIODevice *,QWidget *=0

/*
virtual void save ( QIODevice * device, QWidget * widget )
*/
$method=|void|save|QIODevice *,QWidget *

/*
void setWorkingDirectory ( const QDir & directory )
*/
$method=|void|setWorkingDirectory|const QDir &

/*
QDir workingDirectory () const
*/
$method=|QDir|workingDirectory|

$extraMethods

#pragma ENDDUMP

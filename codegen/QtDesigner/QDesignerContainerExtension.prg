$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWIDGET
#endif

CLASS QDesignerContainerExtension

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD addWidget
   METHOD count
   METHOD currentIndex
   METHOD insertWidget
   METHOD remove
   METHOD setCurrentIndex
   METHOD widget

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

$deleteMethod

/*
virtual void addWidget ( QWidget * page ) = 0
*/
$method=|void|addWidget|QWidget *

/*
virtual int count () const = 0
*/
$method=|int|count|

/*
virtual int currentIndex () const = 0
*/
$method=|int|currentIndex|

/*
virtual void insertWidget ( int index, QWidget * page ) = 0
*/
$method=|void|insertWidget|int,QWidget *

/*
virtual void remove ( int index ) = 0
*/
$method=|void|remove|int

/*
virtual void setCurrentIndex ( int index ) = 0
*/
$method=|void|setCurrentIndex|int

/*
virtual QWidget * widget ( int index ) const = 0
*/
$method=|QWidget *|widget|int

$extraMethods

#pragma ENDDUMP

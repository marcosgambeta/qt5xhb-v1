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

$prototype=virtual void addWidget ( QWidget * page ) = 0
$virtualMethod=|void|addWidget|QWidget *

$prototype=virtual int count () const = 0
$virtualMethod=|int|count|

$prototype=virtual int currentIndex () const = 0
$virtualMethod=|int|currentIndex|

$prototype=virtual void insertWidget ( int index, QWidget * page ) = 0
$virtualMethod=|void|insertWidget|int,QWidget *

$prototype=virtual void remove ( int index ) = 0
$virtualMethod=|void|remove|int

$prototype=virtual void setCurrentIndex ( int index ) = 0
$virtualMethod=|void|setCurrentIndex|int

$prototype=virtual QWidget * widget ( int index ) const = 0
$virtualMethod=|QWidget *|widget|int

$extraMethods

#pragma ENDDUMP

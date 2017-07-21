$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QDESIGNERFORMWINDOWINTERFACE
#endif

CLASS QDesignerFormWindowCursorInterface

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD current
   METHOD formWindow
   METHOD hasSelection
   METHOD isWidgetSelected
   METHOD movePosition
   METHOD position
   METHOD selectedWidget
   METHOD selectedWidgetCount
   METHOD setPosition
   METHOD widget
   METHOD widgetCount

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
virtual QWidget * current () const = 0
*/
$method=|QWidget *|current|

/*
virtual QDesignerFormWindowInterface * formWindow () const = 0
*/
$method=|QDesignerFormWindowInterface *|formWindow|

/*
virtual bool hasSelection () const = 0
*/
$method=|bool|hasSelection|

/*
bool isWidgetSelected ( QWidget * widget ) const
*/
$method=|bool|isWidgetSelected|QWidget *

/*
virtual bool movePosition ( MoveOperation operation, MoveMode mode = MoveAnchor ) = 0
*/
$method=|bool|movePosition|QDesignerFormWindowCursorInterface::MoveOperation,QDesignerFormWindowCursorInterface::MoveMode=QDesignerFormWindowCursorInterface::MoveAnchor

/*
virtual int position () const = 0
*/
$method=|int|position|

/*
virtual QWidget * selectedWidget ( int index ) const = 0
*/
$method=|QWidget *|selectedWidget|int

/*
virtual int selectedWidgetCount () const = 0
*/
$method=|int|selectedWidgetCount|

/*
virtual void setPosition ( int position, MoveMode mode = MoveAnchor ) = 0
*/
$method=|void|setPosition|int,QDesignerFormWindowCursorInterface::MoveMode=QDesignerFormWindowCursorInterface::MoveAnchor

/*
virtual QWidget * widget ( int index ) const = 0
*/
$method=|QWidget *|widget|int

/*
virtual int widgetCount () const = 0
*/
$method=|int|widgetCount|

$extraMethods

#pragma ENDDUMP

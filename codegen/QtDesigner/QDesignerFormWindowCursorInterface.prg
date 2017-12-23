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

$prototype=virtual QWidget * current () const = 0
$virtualMethod=|QWidget *|current|

$prototype=virtual QDesignerFormWindowInterface * formWindow () const = 0
$virtualMethod=|QDesignerFormWindowInterface *|formWindow|

$prototype=virtual bool hasSelection () const = 0
$virtualMethod=|bool|hasSelection|

$prototype=bool isWidgetSelected ( QWidget * widget ) const
$method=|bool|isWidgetSelected|QWidget *

$prototype=virtual bool movePosition ( MoveOperation operation, MoveMode mode = MoveAnchor ) = 0
$virtualMethod=|bool|movePosition|QDesignerFormWindowCursorInterface::MoveOperation,QDesignerFormWindowCursorInterface::MoveMode=QDesignerFormWindowCursorInterface::MoveAnchor

$prototype=virtual int position () const = 0
$virtualMethod=|int|position|

$prototype=virtual QWidget * selectedWidget ( int index ) const = 0
$virtualMethod=|QWidget *|selectedWidget|int

$prototype=virtual int selectedWidgetCount () const = 0
$virtualMethod=|int|selectedWidgetCount|

$prototype=virtual void setPosition ( int position, MoveMode mode = MoveAnchor ) = 0
$virtualMethod=|void|setPosition|int,QDesignerFormWindowCursorInterface::MoveMode=QDesignerFormWindowCursorInterface::MoveAnchor

$prototype=virtual QWidget * widget ( int index ) const = 0
$virtualMethod=|QWidget *|widget|int

$prototype=virtual int widgetCount () const = 0
$virtualMethod=|int|widgetCount|

$extraMethods

#pragma ENDDUMP

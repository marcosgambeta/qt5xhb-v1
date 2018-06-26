%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

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

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QDesignerFormWindowInterface>

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

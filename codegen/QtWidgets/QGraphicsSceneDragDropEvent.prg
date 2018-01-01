%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMIMEDATA
REQUEST QPOINTF
REQUEST QPOINT
REQUEST QWIDGET
#endif

CLASS QGraphicsSceneDragDropEvent INHERIT QGraphicsSceneEvent

   METHOD delete
   METHOD acceptProposedAction
   METHOD buttons
   METHOD dropAction
   METHOD mimeData
   METHOD modifiers
   METHOD pos
   METHOD possibleActions
   METHOD proposedAction
   METHOD scenePos
   METHOD screenPos
   METHOD setDropAction
   METHOD source

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=void acceptProposedAction ()
$method=|void|acceptProposedAction|

$prototype=Qt::MouseButtons buttons () const
$method=|Qt::MouseButtons|buttons|

$prototype=Qt::DropAction dropAction () const
$method=|Qt::DropAction|dropAction|

$prototype=const QMimeData * mimeData () const
$method=|const QMimeData *|mimeData|

$prototype=Qt::KeyboardModifiers modifiers () const
$method=|Qt::KeyboardModifiers|modifiers|

$prototype=QPointF pos () const
$method=|QPointF|pos|

$prototype=Qt::DropActions possibleActions () const
$method=|Qt::DropActions|possibleActions|

$prototype=Qt::DropAction proposedAction () const
$method=|Qt::DropAction|proposedAction|

$prototype=QPointF scenePos () const
$method=|QPointF|scenePos|

$prototype=QPoint screenPos () const
$method=|QPoint|screenPos|

$prototype=void setDropAction ( Qt::DropAction action )
$method=|void|setDropAction|Qt::DropAction

$prototype=QWidget * source () const
$method=|QWidget *|source|

#pragma ENDDUMP

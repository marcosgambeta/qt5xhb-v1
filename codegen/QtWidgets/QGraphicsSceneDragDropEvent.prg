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

/*
void acceptProposedAction ()
*/
$method=|void|acceptProposedAction|

/*
Qt::MouseButtons buttons () const
*/
$method=|Qt::MouseButtons|buttons|

/*
Qt::DropAction dropAction () const
*/
$method=|Qt::DropAction|dropAction|

/*
const QMimeData * mimeData () const
*/
$method=|const QMimeData *|mimeData|

/*
Qt::KeyboardModifiers modifiers () const
*/
$method=|Qt::KeyboardModifiers|modifiers|

/*
QPointF pos () const
*/
$method=|QPointF|pos|

/*
Qt::DropActions possibleActions () const
*/
$method=|Qt::DropActions|possibleActions|

/*
Qt::DropAction proposedAction () const
*/
$method=|Qt::DropAction|proposedAction|

/*
QPointF scenePos () const
*/
$method=|QPointF|scenePos|

/*
QPoint screenPos () const
*/
$method=|QPoint|screenPos|

/*
void setDropAction ( Qt::DropAction action )
*/
$method=|void|setDropAction|Qt::DropAction

/*
QWidget * source () const
*/
$method=|QWidget *|source|

#pragma ENDDUMP

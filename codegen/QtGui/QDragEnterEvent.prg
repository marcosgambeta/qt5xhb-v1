$header

#include "hbclass.ch"

CLASS QDragEnterEvent INHERIT QDragMoveEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QDragEnterEvent ( const QPoint & point, Qt::DropActions actions, const QMimeData * data, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers )
*/
$constructor=|new|const QPoint &,Qt::DropActions,const QMimeData *,Qt::MouseButtons,Qt::KeyboardModifiers

$deleteMethod

#pragma ENDDUMP

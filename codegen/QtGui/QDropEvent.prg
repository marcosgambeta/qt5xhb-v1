$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMIMEDATA
REQUEST QOBJECT
#endif

CLASS QDropEvent INHERIT QEvent,QMimeSource

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD acceptProposedAction
   METHOD dropAction
   METHOD keyboardModifiers
   METHOD mimeData
   METHOD mouseButtons
   METHOD possibleActions
   METHOD proposedAction
   METHOD setDropAction
   METHOD source

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QDropEvent ( const QPoint & pos, Qt::DropActions actions, const QMimeData * data, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers, Type type = Drop )
*/
$constructor=|new|const QPoint &,Qt::DropActions,const QMimeData *,Qt::MouseButtons,Qt::KeyboardModifiers,QEvent::Type=QEvent::Drop

$deleteMethod

/*
void acceptProposedAction ()
*/
$method=|void|acceptProposedAction|

/*
Qt::DropAction dropAction () const
*/
$method=|Qt::DropAction|dropAction|

/*
Qt::KeyboardModifiers keyboardModifiers () const
*/
$method=|Qt::KeyboardModifiers|keyboardModifiers|

/*
const QMimeData * mimeData () const
*/
$method=|const QMimeData *|mimeData|

/*
Qt::MouseButtons mouseButtons () const
*/
$method=|Qt::MouseButtons|mouseButtons|

/*
Qt::DropActions possibleActions () const
*/
$method=|Qt::DropActions|possibleActions|

/*
Qt::DropAction proposedAction () const
*/
$method=|Qt::DropAction|proposedAction|

/*
void setDropAction ( Qt::DropAction action )
*/
$method=|void|setDropAction|Qt::DropAction

/*
QObject * source () const
*/
$method=|QObject *|source|

#pragma ENDDUMP

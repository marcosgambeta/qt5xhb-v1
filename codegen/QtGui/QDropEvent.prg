%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMIMEDATA
REQUEST QOBJECT
#endif

CLASS QDropEvent INHERIT QEvent,QMimeSource

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

#include <QMimeData>

$prototype=QDropEvent ( const QPoint & pos, Qt::DropActions actions, const QMimeData * data, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers, Type type = Drop )
$constructor=|new|const QPoint &,Qt::DropActions,const QMimeData *,Qt::MouseButtons,Qt::KeyboardModifiers,QEvent::Type=QEvent::Drop

$deleteMethod

$prototype=void acceptProposedAction ()
$method=|void|acceptProposedAction|

$prototype=Qt::DropAction dropAction () const
$method=|Qt::DropAction|dropAction|

$prototype=Qt::KeyboardModifiers keyboardModifiers () const
$method=|Qt::KeyboardModifiers|keyboardModifiers|

$prototype=const QMimeData * mimeData () const
$method=|const QMimeData *|mimeData|

$prototype=Qt::MouseButtons mouseButtons () const
$method=|Qt::MouseButtons|mouseButtons|

$prototype=Qt::DropActions possibleActions () const
$method=|Qt::DropActions|possibleActions|

$prototype=Qt::DropAction proposedAction () const
$method=|Qt::DropAction|proposedAction|

$prototype=void setDropAction ( Qt::DropAction action )
$method=|void|setDropAction|Qt::DropAction

$prototype=QObject * source () const
$method=|QObject *|source|

#pragma ENDDUMP

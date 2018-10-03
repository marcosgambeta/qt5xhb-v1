%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QPoint>
#include <QPixmap>
#include <QMimeData>

$prototype=QDrag(QObject * dragSource)
$constructor=|new|QObject *

$deleteMethod

$prototype=Qt::DropAction defaultAction() const
$method=|Qt::DropAction|defaultAction|

$prototype=QPixmap dragCursor(Qt::DropAction action) const
$method=|QPixmap|dragCursor|Qt::DropAction

$prototype=Qt::DropAction exec(Qt::DropActions supportedActions = Qt::MoveAction)
$internalMethod=|Qt::DropAction|exec,exec1|Qt::DropActions=Qt::MoveAction

$prototype=Qt::DropAction exec(Qt::DropActions supportedActions, Qt::DropAction defaultDropAction)
$internalMethod=|Qt::DropAction|exec,exec2|Qt::DropActions,Qt::DropAction

//[1]Qt::DropAction exec(Qt::DropActions supportedActions = Qt::MoveAction)
//[2]Qt::DropAction exec(Qt::DropActions supportedActions, Qt::DropAction defaultDropAction)

HB_FUNC_STATIC( QDRAG_EXEC )
{
  if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QDrag_exec1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QDrag_exec2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=exec

$prototype=QPoint hotSpot() const
$method=|QPoint|hotSpot|

$prototype=QMimeData * mimeData() const
$method=|QMimeData *|mimeData|

$prototype=QPixmap pixmap() const
$method=|QPixmap|pixmap|

$prototype=void setDragCursor(const QPixmap & cursor, Qt::DropAction action)
$method=|void|setDragCursor|const QPixmap &,Qt::DropAction

$prototype=void setHotSpot(const QPoint & hotspot)
$method=|void|setHotSpot|const QPoint &

$prototype=void setMimeData(QMimeData * data)
$method=|void|setMimeData|QMimeData *

$prototype=void setPixmap(const QPixmap & pixmap)
$method=|void|setPixmap|const QPixmap &

$prototype=QObject * source() const
$method=|QObject *|source|

$prototype=Qt::DropActions supportedActions() const
$method=|Qt::DropActions|supportedActions|

$prototype=QObject * target() const
$method=|QObject *|target|

$beginSignals
$signal=|actionChanged(Qt::DropAction)
$signal=|targetChanged(QObject*)
$endSignals

#pragma ENDDUMP

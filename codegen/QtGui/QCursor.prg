%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QPixmap>

$prototype=QCursor ()
$internalConstructor=|new1|

$prototype=QCursor ( Qt::CursorShape shape )
$internalConstructor=|new2|Qt::CursorShape

$prototype=QCursor ( const QBitmap & bitmap, const QBitmap & mask, int hotX = -1, int hotY = -1 )
$internalConstructor=|new3|const QBitmap &,const QBitmap &,int=-1,int=-1

$prototype=QCursor ( const QPixmap & pixmap, int hotX = -1, int hotY = -1 )
$internalConstructor=|new4|const QPixmap &,int=-1,int=-1

$prototype=QCursor ( const QCursor & c )
$internalConstructor=|new5|const QCursor &

//[1]QCursor ()
//[2]QCursor ( Qt::CursorShape shape )
//[3]QCursor ( const QBitmap & bitmap, const QBitmap & mask, int hotX = -1, int hotY = -1 )
//[4]QCursor ( const QPixmap & pixmap, int hotX = -1, int hotY = -1 )
//[5]QCursor ( const QCursor & c )
//[6]QCursor ( HCURSOR cursor ) // TODO: implementar
//[7]QCursor ( Qt::HANDLE handle ) // TODO: implementar

HB_FUNC_STATIC( QCURSOR_NEW )
{
  if( ISNUMPAR(0) )
  {
    QCursor_new1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QCursor_new2();
  }
  else if( ISBETWEEN(2,4) && ISQBITMAP(1) && ISQBITMAP(2) && ISOPTNUM(3) && ISOPTNUM(4) )
  {
    QCursor_new3();
  }
  else if( ISBETWEEN(1,3) && ISQPIXMAP(1) && ISOPTNUM(2) && ISOPTNUM(3) )
  {
    QCursor_new4();
  }
  else if( ISNUMPAR(1) && ISQCURSOR(1) )
  {
    QCursor_new5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=const QBitmap * bitmap () const
$method=|const QBitmap *|bitmap|

$prototype=QPoint hotSpot () const
$method=|QPoint|hotSpot|

$prototype=const QBitmap * mask () const
$method=|const QBitmap *|mask|

$prototype=QPixmap pixmap () const
$method=|QPixmap|pixmap|

$prototype=void setShape ( Qt::CursorShape shape )
$method=|void|setShape|Qt::CursorShape

$prototype=Qt::CursorShape shape () const
$method=|Qt::CursorShape|shape|

$prototype=static QPoint pos ()
$staticMethod=|QPoint|pos|

$prototype=static void setPos ( int x, int y )
$internalStaticMethod=|void|setPos,setPos1|int,int

$prototype=static void setPos ( const QPoint & p )
$internalStaticMethod=|void|setPos,setPos2|const QPoint &

//[1]static void setPos ( int x, int y )
//[2]static void setPos ( const QPoint & p )

HB_FUNC_STATIC( QCURSOR_SETPOS )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QCursor_setPos1();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QCursor_setPos2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setPos

$extraMethods

#pragma ENDDUMP

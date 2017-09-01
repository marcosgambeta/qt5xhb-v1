$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBITMAP
REQUEST QPOINT
REQUEST QPIXMAP
#endif

CLASS QCursor

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD bitmap
   METHOD hotSpot
   METHOD mask
   METHOD pixmap
   METHOD setShape
   METHOD shape
   METHOD pos
   METHOD setPos

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

#include <QPixmap>

/*
QCursor ()
*/
$internalConstructor=|new1|

/*
QCursor ( Qt::CursorShape shape )
*/
$internalConstructor=|new2|Qt::CursorShape

/*
QCursor ( const QBitmap & bitmap, const QBitmap & mask, int hotX = -1, int hotY = -1 )
*/
$internalConstructor=|new3|const QBitmap &,const QBitmap &,int=-1,int=-1

/*
QCursor ( const QPixmap & pixmap, int hotX = -1, int hotY = -1 )
*/
$internalConstructor=|new4|const QPixmap &,int=-1,int=-1

/*
QCursor ( const QCursor & c )
*/
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

/*
const QBitmap * bitmap () const
*/
$method=|const QBitmap *|bitmap|

/*
QPoint hotSpot () const
*/
$method=|QPoint|hotSpot|

/*
const QBitmap * mask () const
*/
$method=|const QBitmap *|mask|

/*
QPixmap pixmap () const
*/
$method=|QPixmap|pixmap|

/*
void setShape ( Qt::CursorShape shape )
*/
$method=|void|setShape|Qt::CursorShape

/*
Qt::CursorShape shape () const
*/
$method=|Qt::CursorShape|shape|

/*
static QPoint pos ()
*/
$staticMethod=|QPoint|pos|

/*
static void setPos ( int x, int y )
*/
$internalStaticMethod=|void|setPos,setPos1|int,int

/*
static void setPos ( const QPoint & p )
*/
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

$extraMethods

#pragma ENDDUMP

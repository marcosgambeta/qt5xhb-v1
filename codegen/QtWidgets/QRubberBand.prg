%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$beginClassFrom=QWidget

   METHOD new
   METHOD delete
   METHOD move
   METHOD resize
   METHOD setGeometry
   METHOD shape

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QRubberBand ( Shape s, QWidget * p = 0 )
$constructor=|new|QRubberBand::Shape,QWidget *=0

$deleteMethod

$prototype=void move ( int x, int y )
$internalMethod=|void|move,move1|int,int

$prototype=void move ( const QPoint & p )
$internalMethod=|void|move,move2|const QPoint &

//[1]void move ( int x, int y )
//[2]void move ( const QPoint & p )

HB_FUNC_STATIC( QRUBBERBAND_MOVE )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QRubberBand_move1();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QRubberBand_move2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void resize ( int width, int height )
$internalMethod=|void|resize,resize1|int,int

$prototype=void resize ( const QSize & size )
$internalMethod=|void|resize,resize2|const QSize &

//[1]void resize ( int width, int height )
//[2]void resize ( const QSize & size )

HB_FUNC_STATIC( QRUBBERBAND_RESIZE )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QRubberBand_resize1();
  }
  else if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    QRubberBand_resize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void setGeometry ( const QRect & rect )
$internalMethod=|void|setGeometry,setGeometry1|const QRect &

$prototype=void setGeometry ( int x, int y, int width, int height )
$internalMethod=|void|setGeometry,setGeometry2|int,int,int,int

//[1]void setGeometry ( const QRect & rect )
//[2]void setGeometry ( int x, int y, int width, int height )

HB_FUNC_STATIC( QRUBBERBAND_SETGEOMETRY )
{
  if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QRubberBand_setGeometry1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QRubberBand_setGeometry2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=Shape shape () const
$method=|QRubberBand::Shape|shape|

#pragma ENDDUMP

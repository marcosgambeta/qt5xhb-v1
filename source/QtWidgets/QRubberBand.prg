/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QRubberBand INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD move1
   METHOD move2
   METHOD move
   METHOD resize1
   METHOD resize2
   METHOD resize
   METHOD setGeometry1
   METHOD setGeometry2
   METHOD setGeometry
   METHOD shape

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QRubberBand
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QRubberBand>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QRubberBand>
#endif

/*
QRubberBand ( Shape s, QWidget * p = 0 )
*/
HB_FUNC_STATIC( QRUBBERBAND_NEW )
{
  QRubberBand * o = new QRubberBand ( (QRubberBand::Shape) hb_parni(1), OPQWIDGET(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QRUBBERBAND_DELETE )
{
  QRubberBand * obj = (QRubberBand *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void move ( int x, int y )
*/
HB_FUNC_STATIC( QRUBBERBAND_MOVE1 )
{
  QRubberBand * obj = (QRubberBand *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) )
    {
      obj->move ( PINT(1), PINT(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void move ( const QPoint & p )
*/
HB_FUNC_STATIC( QRUBBERBAND_MOVE2 )
{
  QRubberBand * obj = (QRubberBand *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->move ( *PQPOINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void move ( int x, int y )
//[2]void move ( const QPoint & p )

HB_FUNC_STATIC( QRUBBERBAND_MOVE )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QRUBBERBAND_MOVE1 );
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QRUBBERBAND_MOVE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void resize ( int width, int height )
*/
HB_FUNC_STATIC( QRUBBERBAND_RESIZE1 )
{
  QRubberBand * obj = (QRubberBand *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) )
    {
      obj->resize ( PINT(1), PINT(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void resize ( const QSize & size )
*/
HB_FUNC_STATIC( QRUBBERBAND_RESIZE2 )
{
  QRubberBand * obj = (QRubberBand *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->resize ( *PQSIZE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void resize ( int width, int height )
//[2]void resize ( const QSize & size )

HB_FUNC_STATIC( QRUBBERBAND_RESIZE )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QRUBBERBAND_RESIZE1 );
  }
  else if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    HB_FUNC_EXEC( QRUBBERBAND_RESIZE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setGeometry ( const QRect & rect )
*/
HB_FUNC_STATIC( QRUBBERBAND_SETGEOMETRY1 )
{
  QRubberBand * obj = (QRubberBand *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setGeometry ( *PQRECT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setGeometry ( int x, int y, int width, int height )
*/
HB_FUNC_STATIC( QRUBBERBAND_SETGEOMETRY2 )
{
  QRubberBand * obj = (QRubberBand *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
    {
      obj->setGeometry ( PINT(1), PINT(2), PINT(3), PINT(4) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setGeometry ( const QRect & rect )
//[2]void setGeometry ( int x, int y, int width, int height )

HB_FUNC_STATIC( QRUBBERBAND_SETGEOMETRY )
{
  if( ISNUMPAR(1) && ISQRECT(1) )
  {
    HB_FUNC_EXEC( QRUBBERBAND_SETGEOMETRY1 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QRUBBERBAND_SETGEOMETRY2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
Shape shape () const
*/
HB_FUNC_STATIC( QRUBBERBAND_SHAPE )
{
  QRubberBand * obj = (QRubberBand *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->shape () );
  }
}



#pragma ENDDUMP

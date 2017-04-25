/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
//#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINT
#endif

CLASS QLine

   DATA pointer
   //DATA class_id INIT Class_Id_QLine
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD p1
   METHOD p2
   METHOD x1
   METHOD x2
   METHOD y1
   METHOD y2
   METHOD dx
   METHOD dy
   METHOD isNull
   METHOD setP1
   METHOD setP2
   METHOD setLine
   METHOD setPoints
   METHOD translate
   METHOD translated

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QLine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QLine>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QLine>
#endif

/*
QLine()
*/
void Qline_new1 ()
{
  QLine * o = new QLine (  );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QLine(const QPoint & p1, const QPoint & p2)
*/
void Qline_new2 ()
{
  QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
  QPoint * par2 = (QPoint *) _qt5xhb_itemGetPtr(2);
  QLine * o = new QLine ( *par1, *par2 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QLine(int x1, int y1, int x2, int y2)
*/
void Qline_new3 ()
{
  int par1 = hb_parni(1);
  int par2 = hb_parni(2);
  int par3 = hb_parni(3);
  int par4 = hb_parni(4);
  QLine * o = new QLine ( par1, par2, par3, par4 );
  _qt5xhb_storePointerAndFlag( o, true );
}

//[1]QLine()
//[2]QLine(const QPoint & p1, const QPoint & p2)
//[3]QLine(int x1, int y1, int x2, int y2)

HB_FUNC_STATIC( QLINE_NEW )
{
  if( ISNUMPAR(0) )
  {
    Qline_new1();
  }
  else if( ISNUMPAR(2) && ISQPOINT(1) && ISQPOINT(2) )
  {
    Qline_new2();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    Qline_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QLINE_DELETE )
{
  QLine * obj = (QLine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QPoint p1() const
*/
HB_FUNC_STATIC( QLINE_P1 )
{
  QLine * obj = (QLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPoint * ptr = new QPoint( obj->p1 (  ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}

/*
QPoint p2() const
*/
HB_FUNC_STATIC( QLINE_P2 )
{
  QLine * obj = (QLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPoint * ptr = new QPoint( obj->p2 (  ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}

/*
int x1() const
*/
HB_FUNC_STATIC( QLINE_X1 )
{
  QLine * obj = (QLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->x1 (  ) );
  }
}

/*
int x2() const
*/
HB_FUNC_STATIC( QLINE_X2 )
{
  QLine * obj = (QLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->x2 (  ) );
  }
}

/*
int y1() const
*/
HB_FUNC_STATIC( QLINE_Y1 )
{
  QLine * obj = (QLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->y1 (  ) );
  }
}

/*
int y2() const
*/
HB_FUNC_STATIC( QLINE_Y2 )
{
  QLine * obj = (QLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->y2 (  ) );
  }
}

/*
int dx() const
*/
HB_FUNC_STATIC( QLINE_DX )
{
  QLine * obj = (QLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->dx (  ) );
  }
}

/*
int dy() const
*/
HB_FUNC_STATIC( QLINE_DY )
{
  QLine * obj = (QLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->dy (  ) );
  }
}

/*
bool isNull() const
*/
HB_FUNC_STATIC( QLINE_ISNULL )
{
  QLine * obj = (QLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isNull (  ) );
  }
}

/*
void setP1(const QPoint & p1)
*/
HB_FUNC_STATIC( QLINE_SETP1 )
{
  QLine * obj = (QLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPOINT(1) )
    {
      QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
      obj->setP1 ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setP2(const QPoint & p2)
*/
HB_FUNC_STATIC( QLINE_SETP2 )
{
  QLine * obj = (QLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPOINT(1) )
    {
      QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
      obj->setP2 ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setLine(int x1, int y1, int x2, int y2)
*/
HB_FUNC_STATIC( QLINE_SETLINE )
{
  QLine * obj = (QLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
    {
      obj->setLine ( (int) hb_parni(1), (int) hb_parni(2), (int) hb_parni(3), (int) hb_parni(4) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPoints(const QPoint & p1, const QPoint & p2)
*/
HB_FUNC_STATIC( QLINE_SETPOINTS )
{
  QLine * obj = (QLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPOINT(1) && ISQPOINT(2) )
    {
      QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
      QPoint * par2 = (QPoint *) _qt5xhb_itemGetPtr(2);
      obj->setPoints ( *par1, *par2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void translate(const QPoint & offset)
*/
void QLine_translate1 ()
{
  QLine * obj = (QLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
    obj->translate ( *par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void translate(int dx, int dy)
*/
void QLine_translate2 ()
{
  QLine * obj = (QLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->translate ( (int) hb_parni(1), (int) hb_parni(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void translate(const QPoint & offset)
//[2]void translate(int dx, int dy)

HB_FUNC_STATIC( QLINE_TRANSLATE )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QLine_translate1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QLine_translate2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QLine translated(const QPoint & offset) const
*/
void QLine_translated1 ()
{
  QLine * obj = (QLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
    QLine * ptr = new QLine( obj->translated ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QLINE", true );
  }
}

/*
QLine translated(int dx, int dy) const
*/
void QLine_translated2 ()
{
  QLine * obj = (QLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QLine * ptr = new QLine( obj->translated ( (int) hb_parni(1), (int) hb_parni(2) ) );
    _qt5xhb_createReturnClass ( ptr, "QLINE", true );
  }
}

//[1]QLine translated(const QPoint & offset) const
//[2]QLine translated(int dx, int dy) const

HB_FUNC_STATIC( QLINE_TRANSLATED )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QLine_translated1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QLine_translated2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QLINE_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QLINE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QLINE_NEWFROM );
}

HB_FUNC_STATIC( QLINE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QLINE_NEWFROM );
}

HB_FUNC_STATIC( QLINE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QLINE_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP

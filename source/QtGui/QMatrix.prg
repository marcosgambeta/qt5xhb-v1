/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QRECTF
REQUEST QPOINT
REQUEST QPOINTF
REQUEST QLINE
REQUEST QLINEF
REQUEST QPOLYGONF
REQUEST QPOLYGON
REQUEST QREGION
REQUEST QPAINTERPATH
#endif

CLASS QMatrix

   DATA pointer
   DATA class_id INIT Class_Id_QMatrix
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD setMatrix
   METHOD m11
   METHOD m12
   METHOD m21
   METHOD m22
   METHOD dx
   METHOD dy
   METHOD map1
   METHOD map2
   METHOD mapRect1
   METHOD mapRect2
   METHOD map3
   METHOD map4
   METHOD map5
   METHOD map6
   METHOD map7
   METHOD map8
   METHOD map9
   METHOD map10
   METHOD mapToPolygon
   METHOD reset
   METHOD isIdentity
   METHOD translate
   METHOD scale
   METHOD shear
   METHOD rotate
   METHOD isInvertible
   METHOD determinant
   METHOD inverted
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMatrix
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QMatrix>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QMatrix>
#endif

#include <QPainterPath>

/*
QMatrix(Qt::Initialization)
*/
HB_FUNC_STATIC( QMATRIX_NEW1 )
{
  int par1 = hb_parni(1);
  QMatrix * o = new QMatrix (  (Qt::Initialization) par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QMatrix *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}

/*
QMatrix()
*/
HB_FUNC_STATIC( QMATRIX_NEW2 )
{
  QMatrix * o = new QMatrix (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QMatrix *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}

/*
QMatrix(qreal m11, qreal m12, qreal m21, qreal m22,qreal dx, qreal dy)
*/
HB_FUNC_STATIC( QMATRIX_NEW3 )
{
  qreal par1 = hb_parnd(1);
  qreal par2 = hb_parnd(2);
  qreal par3 = hb_parnd(3);
  qreal par4 = hb_parnd(4);
  qreal par5 = hb_parnd(5);
  qreal par6 = hb_parnd(6);
  QMatrix * o = new QMatrix ( par1, par2, par3, par4, par5, par6 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QMatrix *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QMatrix(Qt::Initialization)
//[2]QMatrix()
//[3]QMatrix(qreal m11, qreal m12, qreal m21, qreal m22,qreal dx, qreal dy)
//[4]QMatrix(const QMatrix &matrix)

HB_FUNC_STATIC( QMATRIX_NEW )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QMATRIX_NEW1 );
  }
  else if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QMATRIX_NEW2 );
  }
  else if( ISNUMPAR(6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) )
  {
    HB_FUNC_EXEC( QMATRIX_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
  //else if( ISNUMPAR(1) && ISOBJECT(1) )
  //{
  //  HB_FUNC_EXEC( QMATRIX_NEW4 );
  //}
}

HB_FUNC_STATIC( QMATRIX_DELETE )
{
  QMatrix * obj = (QMatrix *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void setMatrix(qreal m11, qreal m12, qreal m21, qreal m22,qreal dx, qreal dy)
*/
HB_FUNC_STATIC( QMATRIX_SETMATRIX )
{
  QMatrix * obj = (QMatrix *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    qreal par3 = hb_parnd(3);
    qreal par4 = hb_parnd(4);
    qreal par5 = hb_parnd(5);
    qreal par6 = hb_parnd(6);
    obj->setMatrix ( par1, par2, par3, par4, par5, par6 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal m11() const
*/
HB_FUNC_STATIC( QMATRIX_M11 )
{
  QMatrix * obj = (QMatrix *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->m11 (  ) );
  }
}


/*
qreal m12() const
*/
HB_FUNC_STATIC( QMATRIX_M12 )
{
  QMatrix * obj = (QMatrix *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->m12 (  ) );
  }
}


/*
qreal m21() const
*/
HB_FUNC_STATIC( QMATRIX_M21 )
{
  QMatrix * obj = (QMatrix *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->m21 (  ) );
  }
}


/*
qreal m22() const
*/
HB_FUNC_STATIC( QMATRIX_M22 )
{
  QMatrix * obj = (QMatrix *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->m22 (  ) );
  }
}


/*
qreal dx() const
*/
HB_FUNC_STATIC( QMATRIX_DX )
{
  QMatrix * obj = (QMatrix *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->dx (  ) );
  }
}


/*
qreal dy() const
*/
HB_FUNC_STATIC( QMATRIX_DY )
{
  QMatrix * obj = (QMatrix *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->dy (  ) );
  }
}


/*
void map(int x, int y, int *tx, int *ty) const
*/
HB_FUNC_STATIC( QMATRIX_MAP1 )
{
  QMatrix * obj = (QMatrix *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par3;
    int par4;
    obj->map ( (int) hb_parni(1), (int) hb_parni(2), &par3, &par4 );
    hb_storni( par3, 3 );
    hb_storni( par4, 4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void map(qreal x, qreal y, qreal *tx, qreal *ty) const
*/
HB_FUNC_STATIC( QMATRIX_MAP2 )
{
  QMatrix * obj = (QMatrix *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    qreal par3;
    qreal par4;
    obj->map ( par1, par2, &par3, &par4 );
    hb_stornd( par3, 3 );
    hb_stornd( par4, 4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QRect mapRect(const QRect &) const
*/
HB_FUNC_STATIC( QMATRIX_MAPRECT1 )
{
  QMatrix * obj = (QMatrix *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * par1 = (QRect *) _qt5xhb_itemGetPtr(1);
    QRect * ptr = new QRect( obj->mapRect ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
QRectF mapRect(const QRectF &) const
*/
HB_FUNC_STATIC( QMATRIX_MAPRECT2 )
{
  QMatrix * obj = (QMatrix *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * par1 = (QRectF *) _qt5xhb_itemGetPtr(1);
    QRectF * ptr = new QRectF( obj->mapRect ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
QPoint map(const QPoint &p) const
*/
HB_FUNC_STATIC( QMATRIX_MAP3 )
{
  QMatrix * obj = (QMatrix *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
    QPoint * ptr = new QPoint( obj->map ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}


/*
QPointF map(const QPointF&p) const
*/
HB_FUNC_STATIC( QMATRIX_MAP4 )
{
  QMatrix * obj = (QMatrix *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
    QPointF * ptr = new QPointF( obj->map ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
QLine map(const QLine &l) const
*/
HB_FUNC_STATIC( QMATRIX_MAP5 )
{
  QMatrix * obj = (QMatrix *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QLine * par1 = (QLine *) _qt5xhb_itemGetPtr(1);
    QLine * ptr = new QLine( obj->map ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QLINE", true );
  }
}


/*
QLineF map(const QLineF &l) const
*/
HB_FUNC_STATIC( QMATRIX_MAP6 )
{
  QMatrix * obj = (QMatrix *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QLineF * par1 = (QLineF *) _qt5xhb_itemGetPtr(1);
    QLineF * ptr = new QLineF( obj->map ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QLINEF", true );
  }
}


/*
QPolygonF map(const QPolygonF &a) const
*/
HB_FUNC_STATIC( QMATRIX_MAP7 )
{
  QMatrix * obj = (QMatrix *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPolygonF * par1 = (QPolygonF *) _qt5xhb_itemGetPtr(1);
    QPolygonF * ptr = new QPolygonF( obj->map ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}


/*
QPolygon map(const QPolygon &a) const
*/
HB_FUNC_STATIC( QMATRIX_MAP8 )
{
  QMatrix * obj = (QMatrix *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPolygon * par1 = (QPolygon *) _qt5xhb_itemGetPtr(1);
    QPolygon * ptr = new QPolygon( obj->map ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QPOLYGON", true );
  }
}


/*
QRegion map(const QRegion &r) const
*/
HB_FUNC_STATIC( QMATRIX_MAP9 )
{
  QMatrix * obj = (QMatrix *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRegion * par1 = (QRegion *) _qt5xhb_itemGetPtr(1);
    QRegion * ptr = new QRegion( obj->map ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QREGION", true );
  }
}


/*
QPainterPath map(const QPainterPath &p) const
*/
HB_FUNC_STATIC( QMATRIX_MAP10 )
{
  QMatrix * obj = (QMatrix *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPainterPath * par1 = (QPainterPath *) _qt5xhb_itemGetPtr(1);
    QPainterPath * ptr = new QPainterPath( obj->map ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}


/*
QPolygon mapToPolygon(const QRect &r) const
*/
HB_FUNC_STATIC( QMATRIX_MAPTOPOLYGON )
{
  QMatrix * obj = (QMatrix *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * par1 = (QRect *) _qt5xhb_itemGetPtr(1);
    QPolygon * ptr = new QPolygon( obj->mapToPolygon ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QPOLYGON", true );
  }
}


/*
void reset()
*/
HB_FUNC_STATIC( QMATRIX_RESET )
{
  QMatrix * obj = (QMatrix *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->reset (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isIdentity() const
*/
HB_FUNC_STATIC( QMATRIX_ISIDENTITY )
{
  QMatrix * obj = (QMatrix *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isIdentity (  ) );
  }
}


/*
QMatrix &translate(qreal dx, qreal dy)
*/
HB_FUNC_STATIC( QMATRIX_TRANSLATE )
{
  QMatrix * obj = (QMatrix *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    QMatrix * ptr = &obj->translate ( par1, par2 );
    _qt5xhb_createReturnClass ( ptr, "QMATRIX" );
  }
}


/*
QMatrix &scale(qreal sx, qreal sy)
*/
HB_FUNC_STATIC( QMATRIX_SCALE )
{
  QMatrix * obj = (QMatrix *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    QMatrix * ptr = &obj->scale ( par1, par2 );
    _qt5xhb_createReturnClass ( ptr, "QMATRIX" );
  }
}


/*
QMatrix &shear(qreal sh, qreal sv)
*/
HB_FUNC_STATIC( QMATRIX_SHEAR )
{
  QMatrix * obj = (QMatrix *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    QMatrix * ptr = &obj->shear ( par1, par2 );
    _qt5xhb_createReturnClass ( ptr, "QMATRIX" );
  }
}


/*
QMatrix &rotate(qreal a)
*/
HB_FUNC_STATIC( QMATRIX_ROTATE )
{
  QMatrix * obj = (QMatrix *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    QMatrix * ptr = &obj->rotate ( par1 );
    _qt5xhb_createReturnClass ( ptr, "QMATRIX" );
  }
}


/*
bool isInvertible() const
*/
HB_FUNC_STATIC( QMATRIX_ISINVERTIBLE )
{
  QMatrix * obj = (QMatrix *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isInvertible (  ) );
  }
}


/*
qreal determinant() const
*/
HB_FUNC_STATIC( QMATRIX_DETERMINANT )
{
  QMatrix * obj = (QMatrix *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->determinant (  ) );
  }
}


/*
QMatrix inverted(bool *invertible = 0) const
*/
HB_FUNC_STATIC( QMATRIX_INVERTED )
{
  QMatrix * obj = (QMatrix *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    bool par1;
    QMatrix * ptr = new QMatrix( obj->inverted ( &par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QMATRIX" );
    hb_storl( par1, 1 );
  }
}



HB_FUNC_STATIC( QMATRIX_NEWFROM )
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

HB_FUNC_STATIC( QMATRIX_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QMATRIX_NEWFROM );
}

HB_FUNC_STATIC( QMATRIX_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QMATRIX_NEWFROM );
}

HB_FUNC_STATIC( QMATRIX_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QMATRIX_SETSELFDESTRUCTION )
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

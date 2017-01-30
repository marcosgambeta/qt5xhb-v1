/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QSIZE

CLASS QSizeF

   DATA pointer
   DATA class_id INIT Class_Id_QSizeF
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD isNull
   METHOD isEmpty
   METHOD isValid
   METHOD width
   METHOD height
   METHOD setWidth
   METHOD setHeight
   METHOD transpose
   METHOD transposed
   METHOD scale1
   METHOD scale2
   METHOD scale
   METHOD scaled1
   METHOD scaled2
   METHOD scaled
   METHOD expandedTo
   METHOD boundedTo
   METHOD toSize
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSizeF
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QSizeF>
#endif
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QSizeF>
#endif
#endif

/*
QSizeF()
*/
HB_FUNC_STATIC( QSIZEF_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QSizeF * o = new QSizeF (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSizeF *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QSizeF(const QSize &sz)
*/
HB_FUNC_STATIC( QSIZEF_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QSize * par1 = (QSize *) _qtxhb_itemGetPtr(1);
  QSizeF * o = new QSizeF ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSizeF *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QSizeF(qreal w, qreal h)
*/
HB_FUNC_STATIC( QSIZEF_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  qreal par1 = hb_parnd(1);
  qreal par2 = hb_parnd(2);
  QSizeF * o = new QSizeF ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSizeF *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}


//[1]QSizeF()
//[2]QSizeF(const QSize &sz)
//[3]QSizeF(qreal w, qreal h)

HB_FUNC_STATIC( QSIZEF_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSIZEF_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    HB_FUNC_EXEC( QSIZEF_NEW2 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QSIZEF_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSIZEF_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QSizeF * obj = (QSizeF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
#endif
}

/*
bool isNull() const
*/
HB_FUNC_STATIC( QSIZEF_ISNULL )
{
  QSizeF * obj = (QSizeF *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isNull (  ) );
  }
}


/*
bool isEmpty() const
*/
HB_FUNC_STATIC( QSIZEF_ISEMPTY )
{
  QSizeF * obj = (QSizeF *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isEmpty (  ) );
  }
}


/*
bool isValid() const
*/
HB_FUNC_STATIC( QSIZEF_ISVALID )
{
  QSizeF * obj = (QSizeF *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
qreal width() const
*/
HB_FUNC_STATIC( QSIZEF_WIDTH )
{
  QSizeF * obj = (QSizeF *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->width (  ) );
  }
}


/*
qreal height() const
*/
HB_FUNC_STATIC( QSIZEF_HEIGHT )
{
  QSizeF * obj = (QSizeF *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->height (  ) );
  }
}


/*
void setWidth(qreal w)
*/
HB_FUNC_STATIC( QSIZEF_SETWIDTH )
{
  QSizeF * obj = (QSizeF *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setWidth ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHeight(qreal h)
*/
HB_FUNC_STATIC( QSIZEF_SETHEIGHT )
{
  QSizeF * obj = (QSizeF *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setHeight ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void transpose()
*/
HB_FUNC_STATIC( QSIZEF_TRANSPOSE )
{
  QSizeF * obj = (QSizeF *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->transpose (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSizeF transposed() const
*/
HB_FUNC_STATIC( QSIZEF_TRANSPOSED )
{
  QSizeF * obj = (QSizeF *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSizeF * ptr = new QSizeF( obj->transposed (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}


/*
void scale(qreal w, qreal h, Qt::AspectRatioMode mode)
*/
HB_FUNC_STATIC( QSIZEF_SCALE1 )
{
  QSizeF * obj = (QSizeF *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    int par3 = hb_parni(3);
    obj->scale ( par1, par2,  (Qt::AspectRatioMode) par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void scale(const QSizeF &s, Qt::AspectRatioMode mode)
*/
HB_FUNC_STATIC( QSIZEF_SCALE2 )
{
  QSizeF * obj = (QSizeF *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSizeF * par1 = (QSizeF *) _qtxhb_itemGetPtr(1);
    int par2 = hb_parni(2);
    obj->scale ( *par1,  (Qt::AspectRatioMode) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void scale(qreal w, qreal h, Qt::AspectRatioMode mode)
//[2]void scale(const QSizeF &s, Qt::AspectRatioMode mode)

HB_FUNC_STATIC( QSIZEF_SCALE )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QSIZEF_SCALE1 );
  }
  else if( ISNUMPAR(2) && ISQSIZEF(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QSIZEF_SCALE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QSizeF scaled(qreal w, qreal h, Qt::AspectRatioMode mode) const
*/
HB_FUNC_STATIC( QSIZEF_SCALED1 )
{
  QSizeF * obj = (QSizeF *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    int par3 = hb_parni(3);
    QSizeF * ptr = new QSizeF( obj->scaled ( par1, par2,  (Qt::AspectRatioMode) par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}


/*
QSizeF scaled(const QSizeF &s, Qt::AspectRatioMode mode) const
*/
HB_FUNC_STATIC( QSIZEF_SCALED2 )
{
  QSizeF * obj = (QSizeF *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSizeF * par1 = (QSizeF *) _qtxhb_itemGetPtr(1);
    int par2 = hb_parni(2);
    QSizeF * ptr = new QSizeF( obj->scaled ( *par1,  (Qt::AspectRatioMode) par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}


//[1]QSizeF scaled(qreal w, qreal h, Qt::AspectRatioMode mode) const
//[2]QSizeF scaled(const QSizeF &s, Qt::AspectRatioMode mode) const

HB_FUNC_STATIC( QSIZEF_SCALED )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QSIZEF_SCALED1 );
  }
  else if( ISNUMPAR(2) && ISQSIZEF(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QSIZEF_SCALED2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QSizeF expandedTo(const QSizeF &) const
*/
HB_FUNC_STATIC( QSIZEF_EXPANDEDTO )
{
  QSizeF * obj = (QSizeF *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSizeF * par1 = (QSizeF *) _qtxhb_itemGetPtr(1);
    QSizeF * ptr = new QSizeF( obj->expandedTo ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}


/*
QSizeF boundedTo(const QSizeF &) const
*/
HB_FUNC_STATIC( QSIZEF_BOUNDEDTO )
{
  QSizeF * obj = (QSizeF *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSizeF * par1 = (QSizeF *) _qtxhb_itemGetPtr(1);
    QSizeF * ptr = new QSizeF( obj->boundedTo ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}




/*
QSize toSize() const
*/
HB_FUNC_STATIC( QSIZEF_TOSIZE )
{
  QSizeF * obj = (QSizeF *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->toSize (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}



HB_FUNC_STATIC( QSIZEF_NEWFROM )
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

HB_FUNC_STATIC( QSIZEF_NEWFROMOBJECT )
{
  //PHB_ITEM self = hb_stackSelfItem();
  //if( hb_pcount() == 1 && ISOBJECT(1) )
  //{
  //  PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
  //  hb_objSendMsg( self, "_pointer", 1, ptr );
  //  hb_itemRelease( ptr );
  //  PHB_ITEM des = hb_itemPutL( NULL, false );
  //  hb_objSendMsg( self, "_self_destruction", 1, des );
  //  hb_itemRelease( des );
  //}
  //hb_itemReturn( self );
  HB_FUNC_EXEC( QSIZEF_NEWFROM );
}

HB_FUNC_STATIC( QSIZEF_NEWFROMPOINTER )
{
  //PHB_ITEM self = hb_stackSelfItem();
  //if( hb_pcount() == 1 && ISPOINTER(1) )
  //{
  //  PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
  //  hb_objSendMsg( self, "_pointer", 1, ptr );
  //  hb_itemRelease( ptr );
  //  PHB_ITEM des = hb_itemPutL( NULL, false );
  //  hb_objSendMsg( self, "_self_destruction", 1, des );
  //  hb_itemRelease( des );
  //}
  //hb_itemReturn( self );
  HB_FUNC_EXEC( QSIZEF_NEWFROM );
}

HB_FUNC_STATIC( QSIZEF_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSIZEF_SETSELFDESTRUCTION )
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
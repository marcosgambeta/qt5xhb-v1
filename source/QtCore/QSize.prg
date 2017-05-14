/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QSize

   DATA pointer
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD boundedTo
   METHOD expandedTo
   METHOD height
   METHOD isEmpty
   METHOD isNull
   METHOD isValid
   METHOD scale
   METHOD setHeight
   METHOD setWidth
   METHOD transpose
   METHOD width

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSize
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QSize>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QSize>
#endif

/*
QSize ()
*/
void QSize_new1 ()
{
  QSize * o = new QSize (  );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QSize ( int width, int height )
*/
void QSize_new2 ()
{
  int par1 = hb_parni(1);
  int par2 = hb_parni(2);
  QSize * o = new QSize ( par1, par2 );
  _qt5xhb_storePointerAndFlag( o, true );
}

//[1]QSize ()
//[2]QSize ( int width, int height )

HB_FUNC_STATIC( QSIZE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QSize_new1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QSize_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSIZE_DELETE )
{
  QSize * obj = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QSize boundedTo ( const QSize & otherSize ) const
*/
HB_FUNC_STATIC( QSIZE_BOUNDEDTO )
{
  QSize * obj = (QSize *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQSIZE(1) )
    {
      QSize * par1 = (QSize *) _qt5xhb_itemGetPtr(1);
      QSize * ptr = new QSize( obj->boundedTo ( *par1 ) );
      _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QSize expandedTo ( const QSize & otherSize ) const
*/
HB_FUNC_STATIC( QSIZE_EXPANDEDTO )
{
  QSize * obj = (QSize *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQSIZE(1) )
    {
      QSize * par1 = (QSize *) _qt5xhb_itemGetPtr(1);
      QSize * ptr = new QSize( obj->expandedTo ( *par1 ) );
      _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int height () const
*/
HB_FUNC_STATIC( QSIZE_HEIGHT )
{
  QSize * obj = (QSize *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->height (  ) );
  }
}

/*
bool isEmpty () const
*/
HB_FUNC_STATIC( QSIZE_ISEMPTY )
{
  QSize * obj = (QSize *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isEmpty (  ) );
  }
}

/*
bool isNull () const
*/
HB_FUNC_STATIC( QSIZE_ISNULL )
{
  QSize * obj = (QSize *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isNull (  ) );
  }
}

/*
bool isValid () const
*/
HB_FUNC_STATIC( QSIZE_ISVALID )
{
  QSize * obj = (QSize *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}

/*
void scale ( int width, int height, Qt::AspectRatioMode mode )
*/
void QSize_scale1 ()
{
  QSize * obj = (QSize *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par3 = hb_parni(3);
    obj->scale ( PINT(1), PINT(2),  (Qt::AspectRatioMode) par3 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void scale ( const QSize & size, Qt::AspectRatioMode mode )
*/
void QSize_scale2 ()
{
  QSize * obj = (QSize *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * par1 = (QSize *) _qt5xhb_itemGetPtr(1);
    int par2 = hb_parni(2);
    obj->scale ( *par1,  (Qt::AspectRatioMode) par2 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void scale ( int width, int height, Qt::AspectRatioMode mode )
//[2]void scale ( const QSize & size, Qt::AspectRatioMode mode )

HB_FUNC_STATIC( QSIZE_SCALE )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    QSize_scale1();
  }
  else if( ISNUMPAR(2) && ISQSIZE(1) && ISNUM(2) )
  {
    QSize_scale2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setHeight ( int height )
*/
HB_FUNC_STATIC( QSIZE_SETHEIGHT )
{
  QSize * obj = (QSize *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setHeight ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWidth ( int width )
*/
HB_FUNC_STATIC( QSIZE_SETWIDTH )
{
  QSize * obj = (QSize *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setWidth ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void transpose ()
*/
HB_FUNC_STATIC( QSIZE_TRANSPOSE )
{
  QSize * obj = (QSize *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->transpose (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int width () const
*/
HB_FUNC_STATIC( QSIZE_WIDTH )
{
  QSize * obj = (QSize *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->width (  ) );
  }
}

HB_FUNC_STATIC( QSIZE_NEWFROM )
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

HB_FUNC_STATIC( QSIZE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSIZE_NEWFROM );
}

HB_FUNC_STATIC( QSIZE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSIZE_NEWFROM );
}

HB_FUNC_STATIC( QSIZE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSIZE_SETSELFDESTRUCTION )
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

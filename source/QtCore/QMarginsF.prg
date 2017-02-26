/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QMARGINS
#endif

CLASS QMarginsF

   DATA pointer
   DATA class_id INIT Class_Id_QMarginsF
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD isNull
   METHOD left
   METHOD top
   METHOD right
   METHOD bottom
   METHOD setLeft
   METHOD setTop
   METHOD setRight
   METHOD setBottom
   METHOD toMargins
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMarginsF
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QMarginsF>
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

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QMarginsF>
#endif
#endif

/*
QMarginsF()
*/
HB_FUNC_STATIC( QMARGINSF_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QMarginsF * o = new QMarginsF (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QMarginsF *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QMarginsF(qreal left, qreal top, qreal right, qreal bottom)
*/
HB_FUNC_STATIC( QMARGINSF_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  qreal par1 = hb_parnd(1);
  qreal par2 = hb_parnd(2);
  qreal par3 = hb_parnd(3);
  qreal par4 = hb_parnd(4);
  QMarginsF * o = new QMarginsF ( par1, par2, par3, par4 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QMarginsF *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QMarginsF(const QMargins &margins)
*/
HB_FUNC_STATIC( QMARGINSF_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QMargins * par1 = (QMargins *) _qtxhb_itemGetPtr(1);
  QMarginsF * o = new QMarginsF ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QMarginsF *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}


//[1]QMarginsF()
//[2]QMarginsF(qreal left, qreal top, qreal right, qreal bottom)
//[3]QMarginsF(const QMargins &margins)

HB_FUNC_STATIC( QMARGINSF_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QMARGINSF_NEW1 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QMARGINSF_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQMARGINSF(1) )
  {
    HB_FUNC_EXEC( QMARGINSF_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QMARGINSF_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QMarginsF * obj = (QMarginsF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC_STATIC( QMARGINSF_ISNULL )
{
  QMarginsF * obj = (QMarginsF *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isNull (  ) );
  }
}


/*
qreal left() const
*/
HB_FUNC_STATIC( QMARGINSF_LEFT )
{
  QMarginsF * obj = (QMarginsF *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->left (  ) );
  }
}


/*
qreal top() const
*/
HB_FUNC_STATIC( QMARGINSF_TOP )
{
  QMarginsF * obj = (QMarginsF *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->top (  ) );
  }
}


/*
qreal right() const
*/
HB_FUNC_STATIC( QMARGINSF_RIGHT )
{
  QMarginsF * obj = (QMarginsF *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->right (  ) );
  }
}


/*
qreal bottom() const
*/
HB_FUNC_STATIC( QMARGINSF_BOTTOM )
{
  QMarginsF * obj = (QMarginsF *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->bottom (  ) );
  }
}


/*
void setLeft(qreal left)
*/
HB_FUNC_STATIC( QMARGINSF_SETLEFT )
{
  QMarginsF * obj = (QMarginsF *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setLeft ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTop(qreal top)
*/
HB_FUNC_STATIC( QMARGINSF_SETTOP )
{
  QMarginsF * obj = (QMarginsF *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setTop ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRight(qreal right)
*/
HB_FUNC_STATIC( QMARGINSF_SETRIGHT )
{
  QMarginsF * obj = (QMarginsF *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setRight ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setBottom(qreal bottom)
*/
HB_FUNC_STATIC( QMARGINSF_SETBOTTOM )
{
  QMarginsF * obj = (QMarginsF *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setBottom ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QMargins toMargins() const
*/
HB_FUNC_STATIC( QMARGINSF_TOMARGINS )
{
  QMarginsF * obj = (QMarginsF *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMargins * ptr = new QMargins( obj->toMargins (  ) );
    _qt4xhb_createReturnClass ( ptr, "QMARGINS", true );
  }
}



HB_FUNC_STATIC( QMARGINSF_NEWFROM )
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

HB_FUNC_STATIC( QMARGINSF_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QMARGINSF_NEWFROM );
}

HB_FUNC_STATIC( QMARGINSF_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QMARGINSF_NEWFROM );
}

HB_FUNC_STATIC( QMARGINSF_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QMARGINSF_SETSELFDESTRUCTION )
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
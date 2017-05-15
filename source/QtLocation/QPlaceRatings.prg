/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QPlaceRatings

   DATA pointer
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD average
   METHOD setAverage
   METHOD count
   METHOD setCount
   METHOD maximum
   METHOD setMaximum
   METHOD isEmpty

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPlaceRatings
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QPlaceRatings>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QPlaceRatings>
#endif
#endif

/*
QPlaceRatings()
*/
void QPlaceRatings_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceRatings * o = new QPlaceRatings ();
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QPlaceRatings(const QPlaceRatings &other)
*/
void QPlaceRatings_new2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceRatings * par1 = (QPlaceRatings *) _qt5xhb_itemGetPtr(1);
  QPlaceRatings * o = new QPlaceRatings ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}


//[1]QPlaceRatings()
//[2]QPlaceRatings(const QPlaceRatings &other)

HB_FUNC_STATIC( QPLACERATINGS_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPlaceRatings_new1();
  }
  else if( ISNUMPAR(1) && ISQPLACERATINGS(1) )
  {
    QPlaceRatings_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPLACERATINGS_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceRatings * obj = (QPlaceRatings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
qreal average() const
*/
HB_FUNC_STATIC( QPLACERATINGS_AVERAGE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceRatings * obj = (QPlaceRatings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->average () );
  }
#endif
}

/*
void setAverage(qreal average)
*/
HB_FUNC_STATIC( QPLACERATINGS_SETAVERAGE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceRatings * obj = (QPlaceRatings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAverage ( (qreal) hb_parnd(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
int count() const
*/
HB_FUNC_STATIC( QPLACERATINGS_COUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceRatings * obj = (QPlaceRatings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->count () );
  }
#endif
}

/*
void setCount(int count)
*/
HB_FUNC_STATIC( QPLACERATINGS_SETCOUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceRatings * obj = (QPlaceRatings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCount ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
qreal maximum() const
*/
HB_FUNC_STATIC( QPLACERATINGS_MAXIMUM )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceRatings * obj = (QPlaceRatings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->maximum () );
  }
#endif
}

/*
void setMaximum(qreal max)
*/
HB_FUNC_STATIC( QPLACERATINGS_SETMAXIMUM )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceRatings * obj = (QPlaceRatings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMaximum ( (qreal) hb_parnd(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool isEmpty() const
*/
HB_FUNC_STATIC( QPLACERATINGS_ISEMPTY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceRatings * obj = (QPlaceRatings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isEmpty () );
  }
#endif
}



HB_FUNC_STATIC( QPLACERATINGS_NEWFROM )
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

HB_FUNC_STATIC( QPLACERATINGS_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QPLACERATINGS_NEWFROM );
}

HB_FUNC_STATIC( QPLACERATINGS_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QPLACERATINGS_NEWFROM );
}

HB_FUNC_STATIC( QPLACERATINGS_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QPLACERATINGS_SETSELFDESTRUCTION )
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

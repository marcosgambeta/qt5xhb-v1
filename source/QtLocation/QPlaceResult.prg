/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPLACE
#endif

CLASS QPlaceResult INHERIT QPlaceSearchResult

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD distance
   METHOD setDistance
   METHOD place
   METHOD setPlace
   METHOD isSponsored
   METHOD setSponsored

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPlaceResult
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QPlaceResult>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QPlaceResult>
#endif
#endif

/*
QPlaceResult()
*/
HB_FUNC_STATIC( QPLACERESULT_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceResult * o = new QPlaceResult ();
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}


HB_FUNC_STATIC( QPLACERESULT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceResult * obj = (QPlaceResult *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
qreal distance() const
*/
HB_FUNC_STATIC( QPLACERESULT_DISTANCE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceResult * obj = (QPlaceResult *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->distance () );
  }
#endif
}

/*
void setDistance(qreal distance)
*/
HB_FUNC_STATIC( QPLACERESULT_SETDISTANCE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceResult * obj = (QPlaceResult *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDistance ( (qreal) hb_parnd(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QPlace place() const
*/
HB_FUNC_STATIC( QPLACERESULT_PLACE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceResult * obj = (QPlaceResult *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlace * ptr = new QPlace( obj->place () );
    _qt5xhb_createReturnClass ( ptr, "QPLACE", true );
  }
#endif
}

/*
void setPlace(const QPlace &place)
*/
HB_FUNC_STATIC( QPLACERESULT_SETPLACE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceResult * obj = (QPlaceResult *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlace * par1 = (QPlace *) _qt5xhb_itemGetPtr(1);
    obj->setPlace ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool isSponsored() const
*/
HB_FUNC_STATIC( QPLACERESULT_ISSPONSORED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceResult * obj = (QPlaceResult *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isSponsored () );
  }
#endif
}

/*
void setSponsored(bool sponsored)
*/
HB_FUNC_STATIC( QPLACERESULT_SETSPONSORED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceResult * obj = (QPlaceResult *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSponsored ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



#pragma ENDDUMP

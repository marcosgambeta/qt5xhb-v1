/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDATETIME
REQUEST QGEOCOORDINATE
#endif

CLASS QGeoPositionInfo

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD isValid
   METHOD setTimestamp
   METHOD timestamp
   METHOD setCoordinate
   METHOD coordinate
   METHOD setAttribute
   METHOD attribute
   METHOD removeAttribute
   METHOD hasAttribute

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGeoPositionInfo
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QGeoPositionInfo>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QGeoPositionInfo>
#endif
#endif

/*
QGeoPositionInfo()
*/
HB_FUNC_STATIC( QGEOPOSITIONINFO_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoPositionInfo * o = new QGeoPositionInfo ();
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QGeoPositionInfo(const QGeoCoordinate &coordinate, const QDateTime &updateTime)
*/
HB_FUNC_STATIC( QGEOPOSITIONINFO_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoPositionInfo * o = new QGeoPositionInfo ( *PQGEOCOORDINATE(1), *PQDATETIME(2) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QGeoPositionInfo(const QGeoPositionInfo &other)
*/
HB_FUNC_STATIC( QGEOPOSITIONINFO_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoPositionInfo * o = new QGeoPositionInfo ( *PQGEOPOSITIONINFO(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}


//[1]QGeoPositionInfo()
//[2]QGeoPositionInfo(const QGeoCoordinate &coordinate, const QDateTime &updateTime)
//[3]QGeoPositionInfo(const QGeoPositionInfo &other)

HB_FUNC_STATIC( QGEOPOSITIONINFO_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QGEOPOSITIONINFO_NEW1 );
  }
  else if( ISNUMPAR(2) && ISQGEOCOORDINATE(1) && ISQDATETIME(2) )
  {
    HB_FUNC_EXEC( QGEOPOSITIONINFO_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQGEOPOSITIONINFO(1) )
  {
    HB_FUNC_EXEC( QGEOPOSITIONINFO_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGEOPOSITIONINFO_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoPositionInfo * obj = (QGeoPositionInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool isValid() const
*/
HB_FUNC_STATIC( QGEOPOSITIONINFO_ISVALID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoPositionInfo * obj = (QGeoPositionInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
#endif
}


/*
void setTimestamp(const QDateTime &timestamp)
*/
HB_FUNC_STATIC( QGEOPOSITIONINFO_SETTIMESTAMP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoPositionInfo * obj = (QGeoPositionInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setTimestamp ( *PQDATETIME(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QDateTime timestamp() const
*/
HB_FUNC_STATIC( QGEOPOSITIONINFO_TIMESTAMP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoPositionInfo * obj = (QGeoPositionInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDateTime * ptr = new QDateTime( obj->timestamp () );
    _qt5xhb_createReturnClass ( ptr, "QDATETIME", true );
  }
#endif
}


/*
void setCoordinate(const QGeoCoordinate &coordinate)
*/
HB_FUNC_STATIC( QGEOPOSITIONINFO_SETCOORDINATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoPositionInfo * obj = (QGeoPositionInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCoordinate ( *PQGEOCOORDINATE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QGeoCoordinate coordinate() const
*/
HB_FUNC_STATIC( QGEOPOSITIONINFO_COORDINATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoPositionInfo * obj = (QGeoPositionInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGeoCoordinate * ptr = new QGeoCoordinate( obj->coordinate () );
    _qt5xhb_createReturnClass ( ptr, "QGEOCOORDINATE", true );
  }
#endif
}


/*
void setAttribute(Attribute attribute, qreal value)
*/
HB_FUNC_STATIC( QGEOPOSITIONINFO_SETATTRIBUTE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoPositionInfo * obj = (QGeoPositionInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAttribute ( (QGeoPositionInfo::Attribute) hb_parni(1), PQREAL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
qreal attribute(Attribute attribute) const
*/
HB_FUNC_STATIC( QGEOPOSITIONINFO_ATTRIBUTE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoPositionInfo * obj = (QGeoPositionInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->attribute ( (QGeoPositionInfo::Attribute) hb_parni(1) ) );
  }
#endif
}


/*
void removeAttribute(Attribute attribute)
*/
HB_FUNC_STATIC( QGEOPOSITIONINFO_REMOVEATTRIBUTE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoPositionInfo * obj = (QGeoPositionInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->removeAttribute ( (QGeoPositionInfo::Attribute) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool hasAttribute(Attribute attribute) const
*/
HB_FUNC_STATIC( QGEOPOSITIONINFO_HASATTRIBUTE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoPositionInfo * obj = (QGeoPositionInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->hasAttribute ( (QGeoPositionInfo::Attribute) hb_parni(1) ) );
  }
#endif
}



HB_FUNC_STATIC( QGEOPOSITIONINFO_NEWFROM )
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

HB_FUNC_STATIC( QGEOPOSITIONINFO_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QGEOPOSITIONINFO_NEWFROM );
}

HB_FUNC_STATIC( QGEOPOSITIONINFO_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QGEOPOSITIONINFO_NEWFROM );
}

HB_FUNC_STATIC( QGEOPOSITIONINFO_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QGEOPOSITIONINFO_SETSELFDESTRUCTION )
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
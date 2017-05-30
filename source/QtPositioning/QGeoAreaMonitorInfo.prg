/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOSHAPE
REQUEST QDATETIME
#endif

CLASS QGeoAreaMonitorInfo

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD name
   METHOD setName
   METHOD identifier
   METHOD isValid
   METHOD area
   METHOD setArea
   METHOD expiration
   METHOD setExpiration
   METHOD isPersistent
   METHOD setPersistent

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGeoAreaMonitorInfo
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QGeoAreaMonitorInfo>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QGeoAreaMonitorInfo>
#endif
#endif

#include <QDateTime>

/*
QGeoAreaMonitorInfo(const QString &name = QString())
*/
HB_FUNC_STATIC( QGEOAREAMONITORINFO_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAreaMonitorInfo * o = new QGeoAreaMonitorInfo ( OPQSTRING(1,QString()) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QGeoAreaMonitorInfo(const QGeoAreaMonitorInfo &other)
*/
HB_FUNC_STATIC( QGEOAREAMONITORINFO_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAreaMonitorInfo * par1 = (QGeoAreaMonitorInfo *) _qt5xhb_itemGetPtr(1);
  QGeoAreaMonitorInfo * o = new QGeoAreaMonitorInfo ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}


//[1]QGeoAreaMonitorInfo(const QString &name = QString())
//[2]QGeoAreaMonitorInfo(const QGeoAreaMonitorInfo &other)

HB_FUNC_STATIC( QGEOAREAMONITORINFO_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTCHAR(1) )
  {
    HB_FUNC_EXEC( QGEOAREAMONITORINFO_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQGEOAREAMONITORINFO(1) )
  {
    HB_FUNC_EXEC( QGEOAREAMONITORINFO_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGEOAREAMONITORINFO_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAreaMonitorInfo * obj = (QGeoAreaMonitorInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString name() const
*/
HB_FUNC_STATIC( QGEOAREAMONITORINFO_NAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAreaMonitorInfo * obj = (QGeoAreaMonitorInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->name () ) );
  }
#endif
}


/*
void setName(const QString &name)
*/
HB_FUNC_STATIC( QGEOAREAMONITORINFO_SETNAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAreaMonitorInfo * obj = (QGeoAreaMonitorInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setName ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString identifier() const
*/
HB_FUNC_STATIC( QGEOAREAMONITORINFO_IDENTIFIER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAreaMonitorInfo * obj = (QGeoAreaMonitorInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->identifier () ) );
  }
#endif
}


/*
bool isValid() const
*/
HB_FUNC_STATIC( QGEOAREAMONITORINFO_ISVALID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAreaMonitorInfo * obj = (QGeoAreaMonitorInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid () );
  }
#endif
}


/*
QGeoShape area() const
*/
HB_FUNC_STATIC( QGEOAREAMONITORINFO_AREA )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAreaMonitorInfo * obj = (QGeoAreaMonitorInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGeoShape * ptr = new QGeoShape( obj->area () );
    _qt5xhb_createReturnClass ( ptr, "QGEOSHAPE", true );
  }
#endif
}


/*
void setArea(const QGeoShape &newShape)
*/
HB_FUNC_STATIC( QGEOAREAMONITORINFO_SETAREA )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAreaMonitorInfo * obj = (QGeoAreaMonitorInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGeoShape * par1 = (QGeoShape *) _qt5xhb_itemGetPtr(1);
    obj->setArea ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QDateTime expiration() const
*/
HB_FUNC_STATIC( QGEOAREAMONITORINFO_EXPIRATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAreaMonitorInfo * obj = (QGeoAreaMonitorInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDateTime * ptr = new QDateTime( obj->expiration () );
    _qt5xhb_createReturnClass ( ptr, "QDATETIME", true );
  }
#endif
}


/*
void setExpiration(const QDateTime &expiry)
*/
HB_FUNC_STATIC( QGEOAREAMONITORINFO_SETEXPIRATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAreaMonitorInfo * obj = (QGeoAreaMonitorInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDateTime * par1 = (QDateTime *) _qt5xhb_itemGetPtr(1);
    obj->setExpiration ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool isPersistent() const
*/
HB_FUNC_STATIC( QGEOAREAMONITORINFO_ISPERSISTENT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAreaMonitorInfo * obj = (QGeoAreaMonitorInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isPersistent () );
  }
#endif
}


/*
void setPersistent(bool isPersistent)
*/
HB_FUNC_STATIC( QGEOAREAMONITORINFO_SETPERSISTENT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAreaMonitorInfo * obj = (QGeoAreaMonitorInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPersistent ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}





HB_FUNC_STATIC( QGEOAREAMONITORINFO_NEWFROM )
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

HB_FUNC_STATIC( QGEOAREAMONITORINFO_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QGEOAREAMONITORINFO_NEWFROM );
}

HB_FUNC_STATIC( QGEOAREAMONITORINFO_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QGEOAREAMONITORINFO_NEWFROM );
}

HB_FUNC_STATIC( QGEOAREAMONITORINFO_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QGEOAREAMONITORINFO_SETSELFDESTRUCTION )
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
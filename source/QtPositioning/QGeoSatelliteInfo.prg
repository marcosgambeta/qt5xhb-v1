/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QGeoSatelliteInfo

   DATA pointer
   DATA class_id INIT Class_Id_QGeoSatelliteInfo
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD setSatelliteSystem
   METHOD satelliteSystem
   METHOD setSatelliteIdentifier
   METHOD satelliteIdentifier
   METHOD setSignalStrength
   METHOD signalStrength
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

PROCEDURE destroyObject () CLASS QGeoSatelliteInfo
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QGeoSatelliteInfo>
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QGeoSatelliteInfo>
#endif
#endif

/*
QGeoSatelliteInfo()
*/
HB_FUNC_STATIC( QGEOSATELLITEINFO_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoSatelliteInfo * o = new QGeoSatelliteInfo (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QGeoSatelliteInfo *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QGeoSatelliteInfo(const QGeoSatelliteInfo &other)
*/
HB_FUNC_STATIC( QGEOSATELLITEINFO_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoSatelliteInfo * par1 = (QGeoSatelliteInfo *) _qtxhb_itemGetPtr(1);
  QGeoSatelliteInfo * o = new QGeoSatelliteInfo ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QGeoSatelliteInfo *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}


//[1]QGeoSatelliteInfo()
//[2]QGeoSatelliteInfo(const QGeoSatelliteInfo &other)

HB_FUNC_STATIC( QGEOSATELLITEINFO_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QGEOSATELLITEINFO_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQGEOSATELLITEINFO(1) )
  {
    HB_FUNC_EXEC( QGEOSATELLITEINFO_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGEOSATELLITEINFO_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoSatelliteInfo * obj = (QGeoSatelliteInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void setSatelliteSystem(SatelliteSystem system)
*/
HB_FUNC_STATIC( QGEOSATELLITEINFO_SETSATELLITESYSTEM )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoSatelliteInfo * obj = (QGeoSatelliteInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setSatelliteSystem (  (QGeoSatelliteInfo::SatelliteSystem) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
SatelliteSystem satelliteSystem() const
*/
HB_FUNC_STATIC( QGEOSATELLITEINFO_SATELLITESYSTEM )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoSatelliteInfo * obj = (QGeoSatelliteInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->satelliteSystem (  );
    hb_retni( i );
  }
#endif
}


/*
void setSatelliteIdentifier(int satId)
*/
HB_FUNC_STATIC( QGEOSATELLITEINFO_SETSATELLITEIDENTIFIER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoSatelliteInfo * obj = (QGeoSatelliteInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSatelliteIdentifier ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
int satelliteIdentifier() const
*/
HB_FUNC_STATIC( QGEOSATELLITEINFO_SATELLITEIDENTIFIER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoSatelliteInfo * obj = (QGeoSatelliteInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->satelliteIdentifier (  ) );
  }
#endif
}


/*
void setSignalStrength(int signalStrength)
*/
HB_FUNC_STATIC( QGEOSATELLITEINFO_SETSIGNALSTRENGTH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoSatelliteInfo * obj = (QGeoSatelliteInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSignalStrength ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
int signalStrength() const
*/
HB_FUNC_STATIC( QGEOSATELLITEINFO_SIGNALSTRENGTH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoSatelliteInfo * obj = (QGeoSatelliteInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->signalStrength (  ) );
  }
#endif
}


/*
void setAttribute(Attribute attribute, qreal value)
*/
HB_FUNC_STATIC( QGEOSATELLITEINFO_SETATTRIBUTE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoSatelliteInfo * obj = (QGeoSatelliteInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    qreal par2 = hb_parnd(2);
    obj->setAttribute (  (QGeoSatelliteInfo::Attribute) par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
qreal attribute(Attribute attribute) const
*/
HB_FUNC_STATIC( QGEOSATELLITEINFO_ATTRIBUTE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoSatelliteInfo * obj = (QGeoSatelliteInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retnd( obj->attribute (  (QGeoSatelliteInfo::Attribute) par1 ) );
  }
#endif
}


/*
void removeAttribute(Attribute attribute)
*/
HB_FUNC_STATIC( QGEOSATELLITEINFO_REMOVEATTRIBUTE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoSatelliteInfo * obj = (QGeoSatelliteInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->removeAttribute (  (QGeoSatelliteInfo::Attribute) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool hasAttribute(Attribute attribute) const
*/
HB_FUNC_STATIC( QGEOSATELLITEINFO_HASATTRIBUTE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoSatelliteInfo * obj = (QGeoSatelliteInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->hasAttribute (  (QGeoSatelliteInfo::Attribute) par1 ) );
  }
#endif
}



HB_FUNC_STATIC( QGEOSATELLITEINFO_NEWFROM )
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

HB_FUNC_STATIC( QGEOSATELLITEINFO_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QGEOSATELLITEINFO_NEWFROM );
}

HB_FUNC_STATIC( QGEOSATELLITEINFO_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QGEOSATELLITEINFO_NEWFROM );
}

HB_FUNC_STATIC( QGEOSATELLITEINFO_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QGEOSATELLITEINFO_SETSELFDESTRUCTION )
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
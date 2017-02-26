/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"


CLASS QTouchDevice

   DATA pointer
   DATA class_id INIT Class_Id_QTouchDevice
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD name
   METHOD type
   METHOD capabilities
   METHOD setName
   METHOD setType
   METHOD setCapabilities
   METHOD devices
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTouchDevice
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QTouchDevice>
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
#include <QTouchDevice>
#endif
#endif

/*
QTouchDevice()
*/
HB_FUNC_STATIC( QTOUCHDEVICE_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QTouchDevice * o = new QTouchDevice (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTouchDevice *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QTOUCHDEVICE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QTouchDevice * obj = (QTouchDevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC_STATIC( QTOUCHDEVICE_NAME )
{
  QTouchDevice * obj = (QTouchDevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->name (  ).toLatin1().data() );
  }
}


/*
DeviceType type() const
*/
HB_FUNC_STATIC( QTOUCHDEVICE_TYPE )
{
  QTouchDevice * obj = (QTouchDevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->type (  ) );
  }
}


/*
Capabilities capabilities() const
*/
HB_FUNC_STATIC( QTOUCHDEVICE_CAPABILITIES )
{
  QTouchDevice * obj = (QTouchDevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->capabilities (  ) );
  }
}


/*
void setName(const QString &name)
*/
HB_FUNC_STATIC( QTOUCHDEVICE_SETNAME )
{
  QTouchDevice * obj = (QTouchDevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setName ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setType(DeviceType devType)
*/
HB_FUNC_STATIC( QTOUCHDEVICE_SETTYPE )
{
  QTouchDevice * obj = (QTouchDevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setType (  (QTouchDevice::DeviceType) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCapabilities(Capabilities caps)
*/
HB_FUNC_STATIC( QTOUCHDEVICE_SETCAPABILITIES )
{
  QTouchDevice * obj = (QTouchDevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setCapabilities (  (QTouchDevice::Capabilities) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static QList<const QTouchDevice *> devices()
*/
HB_FUNC_STATIC( QTOUCHDEVICE_DEVICES )
{
}



HB_FUNC_STATIC( QTOUCHDEVICE_NEWFROM )
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

HB_FUNC_STATIC( QTOUCHDEVICE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QTOUCHDEVICE_NEWFROM );
}

HB_FUNC_STATIC( QTOUCHDEVICE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QTOUCHDEVICE_NEWFROM );
}

HB_FUNC_STATIC( QTOUCHDEVICE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QTOUCHDEVICE_SETSELFDESTRUCTION )
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
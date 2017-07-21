$header

#include "hbclass.ch"

CLASS QTouchDevice

   DATA pointer
   DATA self_destruction INIT .F.

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

$destructor

#pragma BEGINDUMP

$includes

/*
QTouchDevice()
*/
HB_FUNC_STATIC( QTOUCHDEVICE_NEW )
{
  QTouchDevice * o = new QTouchDevice ();
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
QString name() const
*/
$method=|QString|name|

/*
DeviceType type() const
*/
HB_FUNC_STATIC( QTOUCHDEVICE_TYPE )
{
  QTouchDevice * obj = (QTouchDevice *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->type () );
  }
}


/*
Capabilities capabilities() const
*/
HB_FUNC_STATIC( QTOUCHDEVICE_CAPABILITIES )
{
  QTouchDevice * obj = (QTouchDevice *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->capabilities () );
  }
}


/*
void setName(const QString &name)
*/
HB_FUNC_STATIC( QTOUCHDEVICE_SETNAME )
{
  QTouchDevice * obj = (QTouchDevice *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setName ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setType(DeviceType devType)
*/
HB_FUNC_STATIC( QTOUCHDEVICE_SETTYPE )
{
  QTouchDevice * obj = (QTouchDevice *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setType ( (QTouchDevice::DeviceType) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCapabilities(Capabilities caps)
*/
HB_FUNC_STATIC( QTOUCHDEVICE_SETCAPABILITIES )
{
  QTouchDevice * obj = (QTouchDevice *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setCapabilities ( (QTouchDevice::Capabilities) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static QList<const QTouchDevice *> devices()
*/
HB_FUNC_STATIC( QTOUCHDEVICE_DEVICES )
{
}

$extraMethods

#pragma ENDDUMP

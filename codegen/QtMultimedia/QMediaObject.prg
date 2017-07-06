$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QMEDIASERVICE
#endif

CLASS QMediaObject INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD availability
   METHOD availableMetaData
   METHOD bind
   METHOD isAvailable
   METHOD isMetaDataAvailable
   METHOD metaData
   METHOD notifyInterval
   METHOD service
   METHOD setNotifyInterval
   METHOD unbind

   METHOD onAvailabilityChanged1
   METHOD onAvailabilityChanged2
   METHOD onMetaDataAvailableChanged
   METHOD onMetaDataChanged1
   METHOD onMetaDataChanged2
   METHOD onNotifyIntervalChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QVariant>

$deleteMethod

/*
virtual QMultimedia::AvailabilityStatus availability() const
*/
HB_FUNC_STATIC( QMEDIAOBJECT_AVAILABILITY )
{
  QMediaObject * obj = (QMediaObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->availability () );
  }
}


/*
QStringList availableMetaData() const
*/
HB_FUNC_STATIC( QMEDIAOBJECT_AVAILABLEMETADATA )
{
  QMediaObject * obj = (QMediaObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRINGLIST( obj->availableMetaData () );
  }
}


/*
virtual bool bind(QObject * object)
*/
HB_FUNC_STATIC( QMEDIAOBJECT_BIND )
{
  QMediaObject * obj = (QMediaObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->bind ( PQOBJECT(1) ) );
  }
}


/*
virtual bool isAvailable() const
*/
HB_FUNC_STATIC( QMEDIAOBJECT_ISAVAILABLE )
{
  QMediaObject * obj = (QMediaObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isAvailable () );
  }
}


/*
bool isMetaDataAvailable() const
*/
HB_FUNC_STATIC( QMEDIAOBJECT_ISMETADATAAVAILABLE )
{
  QMediaObject * obj = (QMediaObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isMetaDataAvailable () );
  }
}


/*
QVariant metaData(const QString & key) const
*/
HB_FUNC_STATIC( QMEDIAOBJECT_METADATA )
{
  QMediaObject * obj = (QMediaObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->metaData ( PQSTRING(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
int notifyInterval() const
*/
HB_FUNC_STATIC( QMEDIAOBJECT_NOTIFYINTERVAL )
{
  QMediaObject * obj = (QMediaObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->notifyInterval () );
  }
}


/*
virtual QMediaService * service() const
*/
HB_FUNC_STATIC( QMEDIAOBJECT_SERVICE )
{
  QMediaObject * obj = (QMediaObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaService * ptr = obj->service ();
    _qt5xhb_createReturnClass ( ptr, "QMEDIASERVICE" );
  }
}


/*
void setNotifyInterval(int milliSeconds)
*/
HB_FUNC_STATIC( QMEDIAOBJECT_SETNOTIFYINTERVAL )
{
  QMediaObject * obj = (QMediaObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setNotifyInterval ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void unbind(QObject * object)
*/
HB_FUNC_STATIC( QMEDIAOBJECT_UNBIND )
{
  QMediaObject * obj = (QMediaObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->unbind ( PQOBJECT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP

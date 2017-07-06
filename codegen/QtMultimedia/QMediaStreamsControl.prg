$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QMediaStreamsControl INHERIT QMediaControl

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD isActive
   METHOD metaData
   METHOD setActive
   METHOD streamCount
   METHOD streamType

   METHOD onActiveStreamsChanged
   METHOD onStreamsChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual bool isActive(int stream) = 0
*/
HB_FUNC_STATIC( QMEDIASTREAMSCONTROL_ISACTIVE )
{
  QMediaStreamsControl * obj = (QMediaStreamsControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isActive ( PINT(1) ) );
  }
}


/*
virtual QVariant metaData(int stream, const QString & key) = 0
*/
HB_FUNC_STATIC( QMEDIASTREAMSCONTROL_METADATA )
{
  QMediaStreamsControl * obj = (QMediaStreamsControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->metaData ( PINT(1), PQSTRING(2) ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
virtual void setActive(int stream, bool state) = 0
*/
HB_FUNC_STATIC( QMEDIASTREAMSCONTROL_SETACTIVE )
{
  QMediaStreamsControl * obj = (QMediaStreamsControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setActive ( PINT(1), PBOOL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual int streamCount() = 0
*/
HB_FUNC_STATIC( QMEDIASTREAMSCONTROL_STREAMCOUNT )
{
  QMediaStreamsControl * obj = (QMediaStreamsControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->streamCount () );
  }
}


/*
virtual StreamType streamType(int stream) = 0
*/
HB_FUNC_STATIC( QMEDIASTREAMSCONTROL_STREAMTYPE )
{
  QMediaStreamsControl * obj = (QMediaStreamsControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->streamType ( PINT(1) ) );
  }
}




#pragma ENDDUMP

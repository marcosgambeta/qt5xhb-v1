$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QSensorReading INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD timestamp
   METHOD setTimestamp
   METHOD valueCount
   METHOD value

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

/*
quint64 timestamp() const
*/
HB_FUNC_STATIC( QSENSORREADING_TIMESTAMP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorReading * obj = (QSensorReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQUINT64( obj->timestamp () );
  }
#endif
}


/*
void setTimestamp(quint64 timestamp)
*/
HB_FUNC_STATIC( QSENSORREADING_SETTIMESTAMP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorReading * obj = (QSensorReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setTimestamp ( PQUINT64(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
int valueCount() const
*/
HB_FUNC_STATIC( QSENSORREADING_VALUECOUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorReading * obj = (QSensorReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->valueCount () );
  }
#endif
}


/*
QVariant value(int index) const
*/
HB_FUNC_STATIC( QSENSORREADING_VALUE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorReading * obj = (QSensorReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->value ( PINT(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
#endif
}



#pragma ENDDUMP

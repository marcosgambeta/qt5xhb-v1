$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QTAPREADING
#endif

CLASS QTapSensor INHERIT QSensor

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD reading
   METHOD returnDoubleTapEvents
   METHOD setReturnDoubleTapEvents

   METHOD onReturnDoubleTapEventsChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

/*
QTapSensor(QObject *parent = 0)
*/
HB_FUNC_STATIC( QTAPSENSOR_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QTapSensor * o = new QTapSensor ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

$deleteMethod=5,1,0

/*
QTapReading *reading() const
*/
HB_FUNC_STATIC( QTAPSENSOR_READING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QTapSensor * obj = (QTapSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTapReading * ptr = obj->reading ();
    _qt5xhb_createReturnClass ( ptr, "QTAPREADING" );
  }
#endif
}


/*
bool returnDoubleTapEvents() const
*/
HB_FUNC_STATIC( QTAPSENSOR_RETURNDOUBLETAPEVENTS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QTapSensor * obj = (QTapSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->returnDoubleTapEvents () );
  }
#endif
}


/*
void setReturnDoubleTapEvents(bool returnDoubleTapEvents)
*/
HB_FUNC_STATIC( QTAPSENSOR_SETRETURNDOUBLETAPEVENTS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QTapSensor * obj = (QTapSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setReturnDoubleTapEvents ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}




#pragma ENDDUMP

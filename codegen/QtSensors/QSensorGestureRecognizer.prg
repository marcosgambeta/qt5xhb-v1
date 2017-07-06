$header

#include "hbclass.ch"

CLASS QSensorGestureRecognizer INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD id
   METHOD isActive
   METHOD startBackend
   METHOD stopBackend
   METHOD createBackend
   METHOD gestureSignals

   METHOD onDetected

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

/*
virtual QString id() const = 0
*/
HB_FUNC_STATIC( QSENSORGESTURERECOGNIZER_ID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorGestureRecognizer * obj = (QSensorGestureRecognizer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->id () );
  }
#endif
}


/*
virtual bool isActive() = 0
*/
HB_FUNC_STATIC( QSENSORGESTURERECOGNIZER_ISACTIVE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorGestureRecognizer * obj = (QSensorGestureRecognizer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isActive () );
  }
#endif
}


/*
void startBackend()
*/
HB_FUNC_STATIC( QSENSORGESTURERECOGNIZER_STARTBACKEND )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorGestureRecognizer * obj = (QSensorGestureRecognizer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->startBackend ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void stopBackend()
*/
HB_FUNC_STATIC( QSENSORGESTURERECOGNIZER_STOPBACKEND )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorGestureRecognizer * obj = (QSensorGestureRecognizer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->stopBackend ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void createBackend()
*/
HB_FUNC_STATIC( QSENSORGESTURERECOGNIZER_CREATEBACKEND )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorGestureRecognizer * obj = (QSensorGestureRecognizer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->createBackend ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QStringList gestureSignals() const
*/
HB_FUNC_STATIC( QSENSORGESTURERECOGNIZER_GESTURESIGNALS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorGestureRecognizer * obj = (QSensorGestureRecognizer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRINGLIST( obj->gestureSignals () );
  }
#endif
}




#pragma ENDDUMP

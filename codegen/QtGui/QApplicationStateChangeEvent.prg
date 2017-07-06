$header

#include "hbclass.ch"

CLASS QApplicationStateChangeEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD applicationState

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QApplicationStateChangeEvent(Qt::ApplicationState state)
*/
HB_FUNC_STATIC( QAPPLICATIONSTATECHANGEEVENT_NEW )
{
  QApplicationStateChangeEvent * o = new QApplicationStateChangeEvent ( (Qt::ApplicationState) hb_parni(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}



/*
Qt::ApplicationState applicationState() const
*/
HB_FUNC_STATIC( QAPPLICATIONSTATECHANGEEVENT_APPLICATIONSTATE )
{
  QApplicationStateChangeEvent * obj = (QApplicationStateChangeEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->applicationState () );
  }
}



#pragma ENDDUMP

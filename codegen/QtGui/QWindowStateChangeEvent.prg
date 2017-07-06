$header

#include "hbclass.ch"

CLASS QWindowStateChangeEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD oldState
   METHOD isOverride

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QWindowStateChangeEvent(Qt::WindowStates aOldState, bool isOverride = false)
*/
HB_FUNC_STATIC( QWINDOWSTATECHANGEEVENT_NEW )
{
  int par1 = hb_parni(1);
  QWindowStateChangeEvent * o = new QWindowStateChangeEvent ( (Qt::WindowStates) par1, OPBOOL(2,false) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
Qt::WindowStates oldState() const
*/
HB_FUNC_STATIC( QWINDOWSTATECHANGEEVENT_OLDSTATE )
{
  QWindowStateChangeEvent * obj = (QWindowStateChangeEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->oldState () );
  }
}


/*
bool isOverride() const
*/
HB_FUNC_STATIC( QWINDOWSTATECHANGEEVENT_ISOVERRIDE )
{
  QWindowStateChangeEvent * obj = (QWindowStateChangeEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isOverride () );
  }
}



#pragma ENDDUMP

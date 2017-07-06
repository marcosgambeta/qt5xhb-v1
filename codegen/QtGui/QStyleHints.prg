$header

#include "hbclass.ch"

CLASS QStyleHints INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD mouseDoubleClickInterval
   METHOD startDragDistance
   METHOD startDragTime
   METHOD startDragVelocity
   METHOD keyboardInputInterval
   METHOD keyboardAutoRepeatRate
   METHOD cursorFlashTime
   METHOD showIsFullScreen
   METHOD passwordMaskDelay
   METHOD fontSmoothingGamma
   METHOD useRtlExtensions

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
int mouseDoubleClickInterval() const
*/
HB_FUNC_STATIC( QSTYLEHINTS_MOUSEDOUBLECLICKINTERVAL )
{
  QStyleHints * obj = (QStyleHints *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->mouseDoubleClickInterval () );
  }
}


/*
int startDragDistance() const
*/
HB_FUNC_STATIC( QSTYLEHINTS_STARTDRAGDISTANCE )
{
  QStyleHints * obj = (QStyleHints *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->startDragDistance () );
  }
}


/*
int startDragTime() const
*/
HB_FUNC_STATIC( QSTYLEHINTS_STARTDRAGTIME )
{
  QStyleHints * obj = (QStyleHints *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->startDragTime () );
  }
}


/*
int startDragVelocity() const
*/
HB_FUNC_STATIC( QSTYLEHINTS_STARTDRAGVELOCITY )
{
  QStyleHints * obj = (QStyleHints *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->startDragVelocity () );
  }
}


/*
int keyboardInputInterval() const
*/
HB_FUNC_STATIC( QSTYLEHINTS_KEYBOARDINPUTINTERVAL )
{
  QStyleHints * obj = (QStyleHints *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->keyboardInputInterval () );
  }
}


/*
int keyboardAutoRepeatRate() const
*/
HB_FUNC_STATIC( QSTYLEHINTS_KEYBOARDAUTOREPEATRATE )
{
  QStyleHints * obj = (QStyleHints *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->keyboardAutoRepeatRate () );
  }
}


/*
int cursorFlashTime() const
*/
HB_FUNC_STATIC( QSTYLEHINTS_CURSORFLASHTIME )
{
  QStyleHints * obj = (QStyleHints *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->cursorFlashTime () );
  }
}


/*
bool showIsFullScreen() const
*/
HB_FUNC_STATIC( QSTYLEHINTS_SHOWISFULLSCREEN )
{
  QStyleHints * obj = (QStyleHints *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->showIsFullScreen () );
  }
}


/*
int passwordMaskDelay() const
*/
HB_FUNC_STATIC( QSTYLEHINTS_PASSWORDMASKDELAY )
{
  QStyleHints * obj = (QStyleHints *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->passwordMaskDelay () );
  }
}


/*
qreal fontSmoothingGamma() const
*/
HB_FUNC_STATIC( QSTYLEHINTS_FONTSMOOTHINGGAMMA )
{
  QStyleHints * obj = (QStyleHints *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->fontSmoothingGamma () );
  }
}


/*
bool useRtlExtensions() const
*/
HB_FUNC_STATIC( QSTYLEHINTS_USERTLEXTENSIONS )
{
  QStyleHints * obj = (QStyleHints *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->useRtlExtensions () );
  }
}



#pragma ENDDUMP

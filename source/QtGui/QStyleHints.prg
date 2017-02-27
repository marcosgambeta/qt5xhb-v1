/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"


CLASS QStyleHints INHERIT QObject

   DATA class_id INIT Class_Id_QStyleHints
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

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

PROCEDURE destroyObject () CLASS QStyleHints
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QStyleHints>
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
#include <QStyleHints>
#endif
#endif



/*
int mouseDoubleClickInterval() const
*/
HB_FUNC_STATIC( QSTYLEHINTS_MOUSEDOUBLECLICKINTERVAL )
{
  QStyleHints * obj = (QStyleHints *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->mouseDoubleClickInterval (  ) );
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
    hb_retni( obj->startDragDistance (  ) );
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
    hb_retni( obj->startDragTime (  ) );
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
    hb_retni( obj->startDragVelocity (  ) );
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
    hb_retni( obj->keyboardInputInterval (  ) );
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
    hb_retni( obj->keyboardAutoRepeatRate (  ) );
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
    hb_retni( obj->cursorFlashTime (  ) );
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
    hb_retl( obj->showIsFullScreen (  ) );
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
    hb_retni( obj->passwordMaskDelay (  ) );
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
    hb_retnd( obj->fontSmoothingGamma (  ) );
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
    hb_retl( obj->useRtlExtensions (  ) );
  }
}



#pragma ENDDUMP

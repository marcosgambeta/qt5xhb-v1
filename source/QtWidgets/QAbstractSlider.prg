/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

CLASS QAbstractSlider INHERIT QWidget

   DATA class_id INIT Class_Id_QAbstractSlider
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD maximum
   METHOD setMaximum
   METHOD minimum
   METHOD setMinimum
   METHOD orientation
   METHOD setOrientation
   METHOD pageStep
   METHOD setPageStep
   METHOD invertedAppearance
   METHOD setInvertedAppearance
   METHOD invertedControls
   METHOD setInvertedControls
   METHOD setRange
   METHOD isSliderDown
   METHOD setSliderDown
   METHOD singleStep
   METHOD setSingleStep
   METHOD sliderPosition
   METHOD setSliderPosition
   METHOD triggerAction
   METHOD value
   METHOD setValue
   METHOD hasTracking
   METHOD setTracking
   METHOD onActionTriggered
   METHOD onRangeChanged
   METHOD onSliderMoved
   METHOD onSliderPressed
   METHOD onSliderReleased
   METHOD onValueChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractSlider
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAbstractSlider>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAbstractSlider>
#endif

HB_FUNC_STATIC( QABSTRACTSLIDER_DELETE )
{
  QAbstractSlider * obj = (QAbstractSlider *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int maximum () const
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_MAXIMUM )
{
  QAbstractSlider * obj = (QAbstractSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->maximum (  ) );
  }
}

/*
void setMaximum ( int )
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_SETMAXIMUM )
{
  QAbstractSlider * obj = (QAbstractSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setMaximum ( (int) hb_parni(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int minimum () const
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_MINIMUM )
{
  QAbstractSlider * obj = (QAbstractSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->minimum (  ) );
  }
}

/*
void setMinimum ( int )
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_SETMINIMUM )
{
  QAbstractSlider * obj = (QAbstractSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setMinimum ( (int) hb_parni(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::Orientation orientation () const
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_ORIENTATION )
{
  QAbstractSlider * obj = (QAbstractSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->orientation (  ) );
  }
}

/*
void setOrientation ( Qt::Orientation )
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_SETORIENTATION )
{
  QAbstractSlider * obj = (QAbstractSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setOrientation (  (Qt::Orientation) par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int pageStep () const
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_PAGESTEP )
{
  QAbstractSlider * obj = (QAbstractSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->pageStep (  ) );
  }
}

/*
void setPageStep ( int )
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_SETPAGESTEP )
{
  QAbstractSlider * obj = (QAbstractSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setPageStep ( (int) hb_parni(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool invertedAppearance () const
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_INVERTEDAPPEARANCE )
{
  QAbstractSlider * obj = (QAbstractSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->invertedAppearance (  ) );
  }
}

/*
void setInvertedAppearance ( bool )
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_SETINVERTEDAPPEARANCE )
{
  QAbstractSlider * obj = (QAbstractSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setInvertedAppearance ( (bool) hb_parl(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool invertedControls () const
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_INVERTEDCONTROLS )
{
  QAbstractSlider * obj = (QAbstractSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->invertedControls (  ) );
  }
}

/*
void setInvertedControls ( bool )
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_SETINVERTEDCONTROLS )
{
  QAbstractSlider * obj = (QAbstractSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setInvertedControls ( (bool) hb_parl(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRange ( int min, int max )
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_SETRANGE )
{
  QAbstractSlider * obj = (QAbstractSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setRange ( (int) hb_parni(1), (int) hb_parni(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isSliderDown () const
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_ISSLIDERDOWN )
{
  QAbstractSlider * obj = (QAbstractSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isSliderDown (  ) );
  }
}

/*
void setSliderDown ( bool )
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_SETSLIDERDOWN )
{
  QAbstractSlider * obj = (QAbstractSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setSliderDown ( (bool) hb_parl(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int singleStep () const
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_SINGLESTEP )
{
  QAbstractSlider * obj = (QAbstractSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->singleStep (  ) );
  }
}

/*
void setSingleStep ( int )
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_SETSINGLESTEP )
{
  QAbstractSlider * obj = (QAbstractSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setSingleStep ( (int) hb_parni(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int sliderPosition () const
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_SLIDERPOSITION )
{
  QAbstractSlider * obj = (QAbstractSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->sliderPosition (  ) );
  }
}

/*
void setSliderPosition ( int )
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_SETSLIDERPOSITION )
{
  QAbstractSlider * obj = (QAbstractSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setSliderPosition ( (int) hb_parni(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void triggerAction ( SliderAction action )
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_TRIGGERACTION )
{
  QAbstractSlider * obj = (QAbstractSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par1 = hb_parni(1);
    obj->triggerAction (  (QAbstractSlider::SliderAction) par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int value () const
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_VALUE )
{
  QAbstractSlider * obj = (QAbstractSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->value (  ) );
  }
}

/*
void setValue ( int )
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_SETVALUE )
{
  QAbstractSlider * obj = (QAbstractSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setValue ( (int) hb_parni(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool hasTracking () const
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_HASTRACKING )
{
  QAbstractSlider * obj = (QAbstractSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->hasTracking (  ) );
  }
}

/*
void setTracking ( bool enable )
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_SETTRACKING )
{
  QAbstractSlider * obj = (QAbstractSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setTracking ( (bool) hb_parl(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP

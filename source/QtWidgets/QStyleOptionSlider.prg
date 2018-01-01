/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QStyleOptionSlider INHERIT QStyleOptionComplex

   METHOD new

   METHOD orientation
   METHOD minimum
   METHOD maximum
   METHOD tickPosition
   METHOD tickInterval
   METHOD upsideDown
   METHOD sliderPosition
   METHOD sliderValue
   METHOD singleStep
   METHOD pageStep
   METHOD notchTarget
   METHOD dialWrapping

   METHOD setOrientation
   METHOD setMinimum
   METHOD setMaximum
   METHOD setTickPosition
   METHOD setTickInterval
   METHOD setUpsideDown
   METHOD setSliderPosition
   METHOD setSliderValue
   METHOD setSingleStep
   METHOD setPageStep
   METHOD setNotchTarget
   METHOD setDialWrapping

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QStyleOptionSlider
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QStyleOptionSlider>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QStyleOptionSlider>
#endif

/*
QStyleOptionSlider()
*/
void QStyleOptionSlider_new1 ()
{
  QStyleOptionSlider * o = new QStyleOptionSlider ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QStyleOptionSlider(const QStyleOptionSlider &other)
*/
void QStyleOptionSlider_new2 ()
{
  QStyleOptionSlider * o = new QStyleOptionSlider ( *PQSTYLEOPTIONSLIDER(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QStyleOptionSlider(int version) (protected)
*/

//[1]QStyleOptionSlider()
//[2]QStyleOptionSlider(const QStyleOptionSlider &other)
//[3]QStyleOptionSlider(int version) (protected)

HB_FUNC_STATIC( QSTYLEOPTIONSLIDER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStyleOptionSlider_new1();
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONSLIDER(1) )
  {
    QStyleOptionSlider_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
Qt::Orientation orientation
*/
HB_FUNC_STATIC( QSTYLEOPTIONSLIDER_ORIENTATION )
{
  QStyleOptionSlider * obj = (QStyleOptionSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->orientation );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONSLIDER_SETORIENTATION )
{
  QStyleOptionSlider * obj = (QStyleOptionSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->orientation = (Qt::Orientation) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int minimum
*/
HB_FUNC_STATIC( QSTYLEOPTIONSLIDER_MINIMUM )
{
  QStyleOptionSlider * obj = (QStyleOptionSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->minimum );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONSLIDER_SETMINIMUM )
{
  QStyleOptionSlider * obj = (QStyleOptionSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->minimum = PINT(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int maximum
*/
HB_FUNC_STATIC( QSTYLEOPTIONSLIDER_MAXIMUM )
{
  QStyleOptionSlider * obj = (QStyleOptionSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->maximum );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONSLIDER_SETMAXIMUM )
{
  QStyleOptionSlider * obj = (QStyleOptionSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->maximum = PINT(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSlider::TickPosition tickPosition
*/
HB_FUNC_STATIC( QSTYLEOPTIONSLIDER_TICKPOSITION )
{
  QStyleOptionSlider * obj = (QStyleOptionSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->tickPosition );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONSLIDER_SETTICKPOSITION )
{
  QStyleOptionSlider * obj = (QStyleOptionSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->tickPosition = (QSlider::TickPosition) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int tickInterval
*/
HB_FUNC_STATIC( QSTYLEOPTIONSLIDER_TICKINTERVAL )
{
  QStyleOptionSlider * obj = (QStyleOptionSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->tickInterval );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONSLIDER_SETTICKINTERVAL )
{
  QStyleOptionSlider * obj = (QStyleOptionSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->tickInterval = PINT(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool upsideDown
*/
HB_FUNC_STATIC( QSTYLEOPTIONSLIDER_UPSIDEDOWN )
{
  QStyleOptionSlider * obj = (QStyleOptionSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->upsideDown );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONSLIDER_SETUPSIDEDOWN )
{
  QStyleOptionSlider * obj = (QStyleOptionSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->upsideDown = PBOOL(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int sliderPosition
*/
HB_FUNC_STATIC( QSTYLEOPTIONSLIDER_SLIDERPOSITION )
{
  QStyleOptionSlider * obj = (QStyleOptionSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->sliderPosition );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONSLIDER_SETSLIDERPOSITION )
{
  QStyleOptionSlider * obj = (QStyleOptionSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->sliderPosition = PINT(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int sliderValue
*/
HB_FUNC_STATIC( QSTYLEOPTIONSLIDER_SLIDERVALUE )
{
  QStyleOptionSlider * obj = (QStyleOptionSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->sliderValue );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONSLIDER_SETSLIDERVALUE )
{
  QStyleOptionSlider * obj = (QStyleOptionSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->sliderValue = PINT(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int singleStep
*/
HB_FUNC_STATIC( QSTYLEOPTIONSLIDER_SINGLESTEP )
{
  QStyleOptionSlider * obj = (QStyleOptionSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->singleStep );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONSLIDER_SETSINGLESTEP )
{
  QStyleOptionSlider * obj = (QStyleOptionSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->singleStep = PINT(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int pageStep
*/
HB_FUNC_STATIC( QSTYLEOPTIONSLIDER_PAGESTEP )
{
  QStyleOptionSlider * obj = (QStyleOptionSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->pageStep );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONSLIDER_SETPAGESTEP )
{
  QStyleOptionSlider * obj = (QStyleOptionSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->pageStep = PINT(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
qreal notchTarget
*/
HB_FUNC_STATIC( QSTYLEOPTIONSLIDER_NOTCHTARGET )
{
  QStyleOptionSlider * obj = (QStyleOptionSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->notchTarget );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONSLIDER_SETNOTCHTARGET )
{
  QStyleOptionSlider * obj = (QStyleOptionSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->notchTarget = PQREAL(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool dialWrapping
*/
HB_FUNC_STATIC( QSTYLEOPTIONSLIDER_DIALWRAPPING )
{
  QStyleOptionSlider * obj = (QStyleOptionSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->dialWrapping );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONSLIDER_SETDIALWRAPPING )
{
  QStyleOptionSlider * obj = (QStyleOptionSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->dialWrapping = PBOOL(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP

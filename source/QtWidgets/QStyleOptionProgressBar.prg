/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QStyleOptionProgressBar INHERIT QStyleOption

   METHOD new

   METHOD minimum
   METHOD maximum
   METHOD progress
   METHOD text
   METHOD textAlignment
   METHOD textVisible
   METHOD orientation
   METHOD invertedAppearance
   METHOD bottomToTop

   METHOD setMinimum
   METHOD setMaximum
   METHOD setProgress
   METHOD setText
   METHOD setTextAlignment
   METHOD setTextVisible
   METHOD setOrientation
   METHOD setInvertedAppearance
   METHOD setBottomToTop

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QStyleOptionProgressBar
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QStyleOptionProgressBar>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QStyleOptionProgressBar>
#endif

/*
QStyleOptionProgressBar()
*/
void QStyleOptionProgressBar_new1 ()
{
  QStyleOptionProgressBar * o = new QStyleOptionProgressBar ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QStyleOptionProgressBar(const QStyleOptionProgressBar &other)
*/
void QStyleOptionProgressBar_new2 ()
{
  QStyleOptionProgressBar * o = new QStyleOptionProgressBar ( *PQSTYLEOPTIONPROGRESSBAR(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QStyleOptionProgressBar(int version) (protected)
*/

//[1]QStyleOptionProgressBar()
//[2]QStyleOptionProgressBar(const QStyleOptionProgressBar &other)
//[3]QStyleOptionProgressBar(int version) (protected)

HB_FUNC_STATIC( QSTYLEOPTIONPROGRESSBAR_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStyleOptionProgressBar_new1();
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONPROGRESSBAR(1) )
  {
    QStyleOptionProgressBar_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int minimum
*/
HB_FUNC_STATIC( QSTYLEOPTIONPROGRESSBAR_MINIMUM )
{
  QStyleOptionProgressBar * obj = (QStyleOptionProgressBar *) _qt5xhb_itemGetPtrStackSelfItem();

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
HB_FUNC_STATIC( QSTYLEOPTIONPROGRESSBAR_SETMINIMUM )
{
  QStyleOptionProgressBar * obj = (QStyleOptionProgressBar *) _qt5xhb_itemGetPtrStackSelfItem();

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
HB_FUNC_STATIC( QSTYLEOPTIONPROGRESSBAR_MAXIMUM )
{
  QStyleOptionProgressBar * obj = (QStyleOptionProgressBar *) _qt5xhb_itemGetPtrStackSelfItem();

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
HB_FUNC_STATIC( QSTYLEOPTIONPROGRESSBAR_SETMAXIMUM )
{
  QStyleOptionProgressBar * obj = (QStyleOptionProgressBar *) _qt5xhb_itemGetPtrStackSelfItem();

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
int progress
*/
HB_FUNC_STATIC( QSTYLEOPTIONPROGRESSBAR_PROGRESS )
{
  QStyleOptionProgressBar * obj = (QStyleOptionProgressBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->progress );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONPROGRESSBAR_SETPROGRESS )
{
  QStyleOptionProgressBar * obj = (QStyleOptionProgressBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->progress = PINT(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString text
*/
HB_FUNC_STATIC( QSTYLEOPTIONPROGRESSBAR_TEXT )
{
  QStyleOptionProgressBar * obj = (QStyleOptionProgressBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->text );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONPROGRESSBAR_SETTEXT )
{
  QStyleOptionProgressBar * obj = (QStyleOptionProgressBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->text = PQSTRING(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::Alignment textAlignment
*/
HB_FUNC_STATIC( QSTYLEOPTIONPROGRESSBAR_TEXTALIGNMENT )
{
  QStyleOptionProgressBar * obj = (QStyleOptionProgressBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->textAlignment );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONPROGRESSBAR_SETTEXTALIGNMENT )
{
  QStyleOptionProgressBar * obj = (QStyleOptionProgressBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->textAlignment = (Qt::Alignment) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool textVisible
*/
HB_FUNC_STATIC( QSTYLEOPTIONPROGRESSBAR_TEXTVISIBLE )
{
  QStyleOptionProgressBar * obj = (QStyleOptionProgressBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->textVisible );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONPROGRESSBAR_SETTEXTVISIBLE )
{
  QStyleOptionProgressBar * obj = (QStyleOptionProgressBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->textVisible = PBOOL(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::Orientation orientation
*/
HB_FUNC_STATIC( QSTYLEOPTIONPROGRESSBAR_ORIENTATION )
{
  QStyleOptionProgressBar * obj = (QStyleOptionProgressBar *) _qt5xhb_itemGetPtrStackSelfItem();

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
HB_FUNC_STATIC( QSTYLEOPTIONPROGRESSBAR_SETORIENTATION )
{
  QStyleOptionProgressBar * obj = (QStyleOptionProgressBar *) _qt5xhb_itemGetPtrStackSelfItem();

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
bool invertedAppearance
*/
HB_FUNC_STATIC( QSTYLEOPTIONPROGRESSBAR_INVERTEDAPPEARANCE )
{
  QStyleOptionProgressBar * obj = (QStyleOptionProgressBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->invertedAppearance );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONPROGRESSBAR_SETINVERTEDAPPEARANCE )
{
  QStyleOptionProgressBar * obj = (QStyleOptionProgressBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->invertedAppearance = PBOOL(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool bottomToTop
*/
HB_FUNC_STATIC( QSTYLEOPTIONPROGRESSBAR_BOTTOMTOTOP )
{
  QStyleOptionProgressBar * obj = (QStyleOptionProgressBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->bottomToTop );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONPROGRESSBAR_SETBOTTOMTOTOP )
{
  QStyleOptionProgressBar * obj = (QStyleOptionProgressBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->bottomToTop = PBOOL(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP

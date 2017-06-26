/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QSpinBox INHERIT QAbstractSpinBox

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD cleanText
   METHOD maximum
   METHOD setMaximum
   METHOD minimum
   METHOD setMinimum
   METHOD prefix
   METHOD setPrefix
   METHOD setRange
   METHOD singleStep
   METHOD setSingleStep
   METHOD suffix
   METHOD setSuffix
   METHOD value
   METHOD setValue
   METHOD displayIntegerBase
   METHOD setDisplayIntegerBase

   METHOD onValueChanged1
   METHOD onValueChanged2

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSpinBox
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QSpinBox>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QSpinBox>
#endif

/*
explicit QSpinBox ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QSPINBOX_NEW )
{
  QSpinBox * o = new QSpinBox ( OPQWIDGET(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

HB_FUNC_STATIC( QSPINBOX_DELETE )
{
  QSpinBox * obj = (QSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QString cleanText () const
*/
HB_FUNC_STATIC( QSPINBOX_CLEANTEXT )
{
  QSpinBox * obj = (QSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->cleanText () );
  }
}

/*
int maximum () const
*/
HB_FUNC_STATIC( QSPINBOX_MAXIMUM )
{
  QSpinBox * obj = (QSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->maximum () );
  }
}

/*
void setMaximum ( int max )
*/
HB_FUNC_STATIC( QSPINBOX_SETMAXIMUM )
{
  QSpinBox * obj = (QSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setMaximum ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int minimum () const
*/
HB_FUNC_STATIC( QSPINBOX_MINIMUM )
{
  QSpinBox * obj = (QSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->minimum () );
  }
}

/*
void setMinimum ( int min )
*/
HB_FUNC_STATIC( QSPINBOX_SETMINIMUM )
{
  QSpinBox * obj = (QSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setMinimum ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString prefix () const
*/
HB_FUNC_STATIC( QSPINBOX_PREFIX )
{
  QSpinBox * obj = (QSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->prefix () );
  }
}

/*
void setPrefix ( const QString & prefix )
*/
HB_FUNC_STATIC( QSPINBOX_SETPREFIX )
{
  QSpinBox * obj = (QSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setPrefix ( PQSTRING(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRange ( int min, int max )
*/
HB_FUNC_STATIC( QSPINBOX_SETRANGE )
{
  QSpinBox * obj = (QSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) )
    {
      obj->setRange ( PINT(1), PINT(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int singleStep () const
*/
HB_FUNC_STATIC( QSPINBOX_SINGLESTEP )
{
  QSpinBox * obj = (QSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->singleStep () );
  }
}

/*
void setSingleStep ( int val )
*/
HB_FUNC_STATIC( QSPINBOX_SETSINGLESTEP )
{
  QSpinBox * obj = (QSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setSingleStep ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString suffix () const
*/
HB_FUNC_STATIC( QSPINBOX_SUFFIX )
{
  QSpinBox * obj = (QSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->suffix () );
  }
}

/*
void setSuffix ( const QString & suffix )
*/
HB_FUNC_STATIC( QSPINBOX_SETSUFFIX )
{
  QSpinBox * obj = (QSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setSuffix ( PQSTRING(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int value () const
*/
HB_FUNC_STATIC( QSPINBOX_VALUE )
{
  QSpinBox * obj = (QSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->value () );
  }
}

/*
void setValue ( int val )
*/
HB_FUNC_STATIC( QSPINBOX_SETVALUE )
{
  QSpinBox * obj = (QSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setValue ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int displayIntegerBase() const
*/
HB_FUNC_STATIC( QSPINBOX_DISPLAYINTEGERBASE )
{
  QSpinBox * obj = (QSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->displayIntegerBase () );
  }
}

/*
void setDisplayIntegerBase(int base)
*/
HB_FUNC_STATIC( QSPINBOX_SETDISPLAYINTEGERBASE )
{
  QSpinBox * obj = (QSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setDisplayIntegerBase ( PINT(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP

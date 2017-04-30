/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QEASINGCURVE
#endif

CLASS QVariantAnimation INHERIT QAbstractAnimation

   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD currentValue
   METHOD easingCurve
   METHOD endValue
   METHOD keyValueAt
   METHOD setDuration
   METHOD setEasingCurve
   METHOD setEndValue
   METHOD setKeyValueAt
   METHOD setStartValue
   METHOD startValue

   METHOD onValueChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QVariantAnimation
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QVariantAnimation>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QVariantAnimation>
#endif

HB_FUNC_STATIC( QVARIANTANIMATION_DELETE )
{
  QVariantAnimation * obj = (QVariantAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QVariant currentValue () const
*/
HB_FUNC_STATIC( QVARIANTANIMATION_CURRENTVALUE )
{
  QVariantAnimation * obj = (QVariantAnimation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QVariant * ptr = new QVariant( obj->currentValue (  ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

/*
QEasingCurve easingCurve () const
*/
HB_FUNC_STATIC( QVARIANTANIMATION_EASINGCURVE )
{
  QVariantAnimation * obj = (QVariantAnimation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QEasingCurve * ptr = new QEasingCurve( obj->easingCurve (  ) );
    _qt5xhb_createReturnClass ( ptr, "QEASINGCURVE" );
  }
}

/*
QVariant endValue () const
*/
HB_FUNC_STATIC( QVARIANTANIMATION_ENDVALUE )
{
  QVariantAnimation * obj = (QVariantAnimation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QVariant * ptr = new QVariant( obj->endValue (  ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

/*
QVariant keyValueAt ( qreal step ) const
*/
HB_FUNC_STATIC( QVARIANTANIMATION_KEYVALUEAT )
{
  QVariantAnimation * obj = (QVariantAnimation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QVariant * ptr = new QVariant( obj->keyValueAt ( PQREAL(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setDuration ( int msecs )
*/
HB_FUNC_STATIC( QVARIANTANIMATION_SETDURATION )
{
  QVariantAnimation * obj = (QVariantAnimation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setDuration ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setEasingCurve ( const QEasingCurve & easing )
*/
HB_FUNC_STATIC( QVARIANTANIMATION_SETEASINGCURVE )
{
  QVariantAnimation * obj = (QVariantAnimation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQEASINGCURVE(1) )
    {
      QEasingCurve * par1 = (QEasingCurve *) _qt5xhb_itemGetPtr(1);
      obj->setEasingCurve ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setEndValue ( const QVariant & value )
*/
HB_FUNC_STATIC( QVARIANTANIMATION_SETENDVALUE )
{
  QVariantAnimation * obj = (QVariantAnimation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQVARIANT(1) )
    {
      QVariant * par1 = (QVariant *) _qt5xhb_itemGetPtr(1);
      obj->setEndValue ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setKeyValueAt ( qreal step, const QVariant & value )
*/
HB_FUNC_STATIC( QVARIANTANIMATION_SETKEYVALUEAT )
{
  QVariantAnimation * obj = (QVariantAnimation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISQVARIANT(2) )
    {
      QVariant * par2 = (QVariant *) _qt5xhb_itemGetPtr(2);
      obj->setKeyValueAt ( PQREAL(1), *par2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setStartValue ( const QVariant & value )
*/
HB_FUNC_STATIC( QVARIANTANIMATION_SETSTARTVALUE )
{
  QVariantAnimation * obj = (QVariantAnimation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQVARIANT(1) )
    {
      QVariant * par1 = (QVariant *) _qt5xhb_itemGetPtr(1);
      obj->setStartValue ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QVariant startValue () const
*/
HB_FUNC_STATIC( QVARIANTANIMATION_STARTVALUE )
{
  QVariantAnimation * obj = (QVariantAnimation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QVariant * ptr = new QVariant( obj->startValue (  ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

#pragma ENDDUMP

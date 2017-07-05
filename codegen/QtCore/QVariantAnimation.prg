$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QEASINGCURVE
#endif

CLASS QVariantAnimation INHERIT QAbstractAnimation

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

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
QVariant currentValue () const
*/
HB_FUNC_STATIC( QVARIANTANIMATION_CURRENTVALUE )
{
  QVariantAnimation * obj = (QVariantAnimation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QVariant * ptr = new QVariant( obj->currentValue () );
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
    QEasingCurve * ptr = new QEasingCurve( obj->easingCurve () );
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
    QVariant * ptr = new QVariant( obj->endValue () );
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
      obj->setEasingCurve ( *PQEASINGCURVE(1) );
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
      obj->setEndValue ( *PQVARIANT(1) );
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
      obj->setKeyValueAt ( PQREAL(1), *PQVARIANT(2) );
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
      obj->setStartValue ( *PQVARIANT(1) );
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
    QVariant * ptr = new QVariant( obj->startValue () );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

#pragma ENDDUMP

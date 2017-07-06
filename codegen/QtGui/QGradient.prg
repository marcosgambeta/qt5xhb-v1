$header

#include "hbclass.ch"

CLASS QGradient

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD coordinateMode
   METHOD setColorAt
   METHOD setCoordinateMode
   METHOD setSpread
   METHOD spread
   METHOD type

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
CoordinateMode coordinateMode () const
*/
HB_FUNC_STATIC( QGRADIENT_COORDINATEMODE )
{
  QGradient * obj = (QGradient *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->coordinateMode () );
  }
}

/*
void setColorAt ( qreal position, const QColor & color )
*/
HB_FUNC_STATIC( QGRADIENT_SETCOLORAT )
{
  QGradient * obj = (QGradient *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && (ISQCOLOR(2)||ISCHAR(2)) )
    {
      QColor par2 = ISOBJECT(2)? *(QColor *) _qt5xhb_itemGetPtr(2) : QColor(hb_parc(2));
      obj->setColorAt ( PQREAL(1), par2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCoordinateMode ( CoordinateMode mode )
*/
HB_FUNC_STATIC( QGRADIENT_SETCOORDINATEMODE )
{
  QGradient * obj = (QGradient *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setCoordinateMode ( (QGradient::CoordinateMode) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSpread ( Spread method )
*/
HB_FUNC_STATIC( QGRADIENT_SETSPREAD )
{
  QGradient * obj = (QGradient *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setSpread ( (QGradient::Spread) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Spread spread () const
*/
HB_FUNC_STATIC( QGRADIENT_SPREAD )
{
  QGradient * obj = (QGradient *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->spread () );
  }
}

/*
Type type () const
*/
HB_FUNC_STATIC( QGRADIENT_TYPE )
{
  QGradient * obj = (QGradient *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->type () );
  }
}

$extraMethods

#pragma ENDDUMP

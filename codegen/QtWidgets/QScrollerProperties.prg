$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QScrollerProperties

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD scrollMetric
   METHOD setScrollMetric
   METHOD setDefaultScrollerProperties
   METHOD unsetDefaultScrollerProperties

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

/*
QScrollerProperties()
*/
void QScrollerProperties_new1 ()
{
  QScrollerProperties * o = new QScrollerProperties ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QScrollerProperties(const QScrollerProperties & sp)
*/
void QScrollerProperties_new2 ()
{
  QScrollerProperties * o = new QScrollerProperties ( *PQSCROLLERPROPERTIES(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QScrollerProperties()
//[2]QScrollerProperties(const QScrollerProperties & sp)

HB_FUNC_STATIC( QSCROLLERPROPERTIES_NEW )
{
  if( ISNUMPAR(0) )
  {
    QScrollerProperties_new1();
  }
  else if( ISNUMPAR(1) && ISQSCROLLERPROPERTIES(1) )
  {
    QScrollerProperties_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QVariant scrollMetric(ScrollMetric metric) const
*/
HB_FUNC_STATIC( QSCROLLERPROPERTIES_SCROLLMETRIC )
{
  QScrollerProperties * obj = (QScrollerProperties *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QVariant * ptr = new QVariant( obj->scrollMetric ( (QScrollerProperties::ScrollMetric) hb_parni(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setScrollMetric(ScrollMetric metric, const QVariant & value)
*/
HB_FUNC_STATIC( QSCROLLERPROPERTIES_SETSCROLLMETRIC )
{
  QScrollerProperties * obj = (QScrollerProperties *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISQVARIANT(2) )
    {
      obj->setScrollMetric ( (QScrollerProperties::ScrollMetric) hb_parni(1), *PQVARIANT(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDefaultScrollerProperties(const QScrollerProperties & sp)
*/
HB_FUNC_STATIC( QSCROLLERPROPERTIES_SETDEFAULTSCROLLERPROPERTIES )
{
  QScrollerProperties * obj = (QScrollerProperties *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQSCROLLERPROPERTIES(1) )
    {
      obj->setDefaultScrollerProperties ( *PQSCROLLERPROPERTIES(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void unsetDefaultScrollerProperties()
*/
HB_FUNC_STATIC( QSCROLLERPROPERTIES_UNSETDEFAULTSCROLLERPROPERTIES )
{
  QScrollerProperties * obj = (QScrollerProperties *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->unsetDefaultScrollerProperties ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

$extraMethods

#pragma ENDDUMP

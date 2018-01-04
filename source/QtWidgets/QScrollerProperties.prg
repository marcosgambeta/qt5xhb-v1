/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

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

PROCEDURE destroyObject () CLASS QScrollerProperties
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QScrollerProperties>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QScrollerProperties>
#endif

/*
QScrollerProperties()
*/
void QScrollerProperties_new1 ()
{
  QScrollerProperties * o = new QScrollerProperties ();
  _qt5xhb_returnNewObject( o, false );
}

/*
QScrollerProperties(const QScrollerProperties & sp)
*/
void QScrollerProperties_new2 ()
{
  QScrollerProperties * o = new QScrollerProperties ( *PQSCROLLERPROPERTIES(1) );
  _qt5xhb_returnNewObject( o, false );
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

HB_FUNC_STATIC( QSCROLLERPROPERTIES_DELETE )
{
  QScrollerProperties * obj = (QScrollerProperties *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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

HB_FUNC_STATIC( QSCROLLERPROPERTIES_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QSCROLLERPROPERTIES_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSCROLLERPROPERTIES_NEWFROM );
}

HB_FUNC_STATIC( QSCROLLERPROPERTIES_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSCROLLERPROPERTIES_NEWFROM );
}

HB_FUNC_STATIC( QSCROLLERPROPERTIES_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSCROLLERPROPERTIES_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP

/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QPlaceContactDetail

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD label
   METHOD setLabel
   METHOD value
   METHOD setValue
   METHOD clear

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPlaceContactDetail
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QPlaceContactDetail>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QPlaceContactDetail>
#endif
#endif

/*
QPlaceContactDetail()
*/
void QPlaceContactDetail_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContactDetail * o = new QPlaceContactDetail ();
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QPlaceContactDetail(const QPlaceContactDetail &other)
*/
void QPlaceContactDetail_new2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContactDetail * par1 = (QPlaceContactDetail *) _qt5xhb_itemGetPtr(1);
  QPlaceContactDetail * o = new QPlaceContactDetail ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}


//[1]QPlaceContactDetail()
//[2]QPlaceContactDetail(const QPlaceContactDetail &other)

HB_FUNC_STATIC( QPLACECONTACTDETAIL_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPlaceContactDetail_new1();
  }
  else if( ISNUMPAR(1) && ISQPLACECONTACTDETAIL(1) )
  {
    QPlaceContactDetail_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPLACECONTACTDETAIL_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContactDetail * obj = (QPlaceContactDetail *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
#endif
}





/*
QString label() const
*/
HB_FUNC_STATIC( QPLACECONTACTDETAIL_LABEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContactDetail * obj = (QPlaceContactDetail *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->label () ) );
  }
#endif
}

/*
void setLabel(const QString &label)
*/
HB_FUNC_STATIC( QPLACECONTACTDETAIL_SETLABEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContactDetail * obj = (QPlaceContactDetail *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setLabel ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString value() const
*/
HB_FUNC_STATIC( QPLACECONTACTDETAIL_VALUE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContactDetail * obj = (QPlaceContactDetail *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->value () ) );
  }
#endif
}

/*
void setValue(const QString &value)
*/
HB_FUNC_STATIC( QPLACECONTACTDETAIL_SETVALUE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContactDetail * obj = (QPlaceContactDetail *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setValue ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void clear()
*/
HB_FUNC_STATIC( QPLACECONTACTDETAIL_CLEAR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContactDetail * obj = (QPlaceContactDetail *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



HB_FUNC_STATIC( QPLACECONTACTDETAIL_NEWFROM )
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

HB_FUNC_STATIC( QPLACECONTACTDETAIL_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QPLACECONTACTDETAIL_NEWFROM );
}

HB_FUNC_STATIC( QPLACECONTACTDETAIL_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QPLACECONTACTDETAIL_NEWFROM );
}

HB_FUNC_STATIC( QPLACECONTACTDETAIL_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QPLACECONTACTDETAIL_SETSELFDESTRUCTION )
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

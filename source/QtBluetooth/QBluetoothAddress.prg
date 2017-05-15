/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QBluetoothAddress

   DATA pointer
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isNull
   METHOD clear
   METHOD toUInt64
   METHOD toString

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QBluetoothAddress
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QBluetoothAddress>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QBluetoothAddress>
#endif
#endif

/*
QBluetoothAddress()
*/
void QBluetoothAddress_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothAddress * o = new QBluetoothAddress ();
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

/*
QBluetoothAddress(quint64 address)
*/
void QBluetoothAddress_new2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  quint64 par1 = hb_parni(1);
  QBluetoothAddress * o = new QBluetoothAddress ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

/*
QBluetoothAddress(const QString &address)
*/
void QBluetoothAddress_new3 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothAddress * o = new QBluetoothAddress ( PQSTRING(1) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

/*
QBluetoothAddress(const QBluetoothAddress &other)
*/
void QBluetoothAddress_new4 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothAddress * par1 = (QBluetoothAddress *) _qt5xhb_itemGetPtr(1);
  QBluetoothAddress * o = new QBluetoothAddress ( *par1 );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

//[1]QBluetoothAddress()
//[2]QBluetoothAddress(quint64 address)
//[3]QBluetoothAddress(const QString &address)
//[4]QBluetoothAddress(const QBluetoothAddress &other)

HB_FUNC_STATIC( QBLUETOOTHADDRESS_NEW )
{
  if( ISNUMPAR(0) )
  {
    QBluetoothAddress_new1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QBluetoothAddress_new2();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QBluetoothAddress_new3();
  }
  else if( ISNUMPAR(1) && ISQBLUETOOTHADDRESS(1) )
  {
    QBluetoothAddress_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QBLUETOOTHADDRESS_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothAddress * obj = (QBluetoothAddress *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
bool isNull() const
*/
HB_FUNC_STATIC( QBLUETOOTHADDRESS_ISNULL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothAddress * obj = (QBluetoothAddress *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isNull () );
  }
#endif
}

/*
void clear()
*/
HB_FUNC_STATIC( QBLUETOOTHADDRESS_CLEAR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothAddress * obj = (QBluetoothAddress *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->clear ();
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
quint64 toUInt64() const
*/
HB_FUNC_STATIC( QBLUETOOTHADDRESS_TOUINT64 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothAddress * obj = (QBluetoothAddress *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->toUInt64 () );
  }
#endif
}

/*
QString toString() const
*/
HB_FUNC_STATIC( QBLUETOOTHADDRESS_TOSTRING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothAddress * obj = (QBluetoothAddress *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( RQSTRING( obj->toString () ) );
  }
#endif
}

HB_FUNC_STATIC( QBLUETOOTHADDRESS_NEWFROM )
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

HB_FUNC_STATIC( QBLUETOOTHADDRESS_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QBLUETOOTHADDRESS_NEWFROM );
}

HB_FUNC_STATIC( QBLUETOOTHADDRESS_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QBLUETOOTHADDRESS_NEWFROM );
}

HB_FUNC_STATIC( QBLUETOOTHADDRESS_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QBLUETOOTHADDRESS_SETSELFDESTRUCTION )
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

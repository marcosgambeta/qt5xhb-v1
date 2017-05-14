/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QBluetoothUuid INHERIT QUuid

   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new6
   METHOD new
   METHOD delete
   METHOD minimumSize
   METHOD toUInt16
   METHOD toUInt32

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QBluetoothUuid
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QBluetoothUuid>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QBluetoothUuid>
#endif
#endif

/*
QBluetoothUuid()
*/
void QBluetoothUuid_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothUuid * o = new QBluetoothUuid (  );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

/*
QBluetoothUuid(ProtocolUuid uuid)
*/
HB_FUNC_STATIC( QBLUETOOTHUUID_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  int par1 = hb_parni(1);
  QBluetoothUuid * o = new QBluetoothUuid (  (QBluetoothUuid::ProtocolUuid) par1 );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

/*
QBluetoothUuid(ServiceClassUuid uuid)
*/
HB_FUNC_STATIC( QBLUETOOTHUUID_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  int par1 = hb_parni(1);
  QBluetoothUuid * o = new QBluetoothUuid (  (QBluetoothUuid::ServiceClassUuid) par1 );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

/*
QBluetoothUuid(quint16 uuid)
*/
HB_FUNC_STATIC( QBLUETOOTHUUID_NEW4 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  quint16 par1 = hb_parni(1);
  QBluetoothUuid * o = new QBluetoothUuid ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

/*
QBluetoothUuid(quint32 uuid)
*/
HB_FUNC_STATIC( QBLUETOOTHUUID_NEW5 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  quint32 par1 = hb_parni(1);
  QBluetoothUuid * o = new QBluetoothUuid ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

/*
QBluetoothUuid(quint128 uuid)
*/
HB_FUNC_STATIC( QBLUETOOTHUUID_NEW6 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothUuid * o = new QBluetoothUuid (  );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

/*
QBluetoothUuid(const QString &uuid)
*/
void QBluetoothUuid_new7 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothUuid * o = new QBluetoothUuid ( PQSTRING(1) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

/*
QBluetoothUuid(const QBluetoothUuid &uuid)
*/
void QBluetoothUuid_new8 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothUuid * par1 = (QBluetoothUuid *) _qt5xhb_itemGetPtr(1);
  QBluetoothUuid * o = new QBluetoothUuid ( *par1 );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

/*
QBluetoothUuid(const QUuid &uuid)
*/
void QBluetoothUuid_new9 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QUuid * par1 = (QUuid *) _qt5xhb_itemGetPtr(1);
  QBluetoothUuid * o = new QBluetoothUuid ( *par1 );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

//[1]QBluetoothUuid()
//[2]QBluetoothUuid(ProtocolUuid uuid)
//[3]QBluetoothUuid(ServiceClassUuid uuid)
//[4]QBluetoothUuid(quint16 uuid)
//[5]QBluetoothUuid(quint32 uuid)
//[6]QBluetoothUuid(quint128 uuid)
//[7]QBluetoothUuid(const QString &uuid)
//[8]QBluetoothUuid(const QBluetoothUuid &uuid)
//[9]QBluetoothUuid(const QUuid &uuid)

HB_FUNC_STATIC( QBLUETOOTHUUID_NEW ) // TODO: resolver conflitos
{
  if( ISNUMPAR(0) )
  {
    QBluetoothUuid_new1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QBLUETOOTHUUID_NEW2 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QBLUETOOTHUUID_NEW3 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QBLUETOOTHUUID_NEW4 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QBLUETOOTHUUID_NEW5 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QBLUETOOTHUUID_NEW6 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QBluetoothUuid_new7();
  }
  else if( ISNUMPAR(1) && ISQBLUETOOTHUUID(1) )
  {
    QBluetoothUuid_new8();
  }
  else if( ISNUMPAR(1) && ISQUUID(1) )
  {
    QBluetoothUuid_new9();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QBLUETOOTHUUID_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothUuid * obj = (QBluetoothUuid *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
int minimumSize() const
*/
HB_FUNC_STATIC( QBLUETOOTHUUID_MINIMUMSIZE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothUuid * obj = (QBluetoothUuid *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->minimumSize (  ) );
  }
#endif
}

/*
quint16 toUInt16(bool *ok = 0) const
*/
HB_FUNC_STATIC( QBLUETOOTHUUID_TOUINT16 ) // TODO: revisar e implementar parametro opcional
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothUuid * obj = (QBluetoothUuid *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTLOG(1) )
    {
      bool par1;
      hb_retni( obj->toUInt16 ( &par1 ) );
      hb_storl( par1, 1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
quint32 toUInt32(bool *ok = 0) const
*/
HB_FUNC_STATIC( QBLUETOOTHUUID_TOUINT32 ) // TODO: revisar e implementar parametro opcional
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothUuid * obj = (QBluetoothUuid *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTLOG(1) )
    {
      bool par1;
      hb_retni( obj->toUInt32 ( &par1 ) );
      hb_storl( par1, 1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

#pragma ENDDUMP

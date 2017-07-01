$header

#include "hbclass.ch"

CLASS QBluetoothAddress

   DATA pointer
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
  QBluetoothAddress * o = new QBluetoothAddress ( PQUINT64(1) );
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
  QBluetoothAddress * o = new QBluetoothAddress ( *PQBLUETOOTHADDRESS(1) );
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

$deleteMethod=5,2,0

/*
bool isNull() const
*/
$method=5,2,0|bool|isNull|

/*
void clear()
*/
$method=5,2,0|void|clear|

/*
quint64 toUInt64() const
*/
$method=5,2,0|quint64|toUInt64|

/*
QString toString() const
*/
$method=5,2,0|QString|toString|

$extraMethods

#pragma ENDDUMP

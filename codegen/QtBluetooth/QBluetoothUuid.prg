$header

#include "hbclass.ch"

CLASS QBluetoothUuid INHERIT QUuid

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

$includes=5,2,0

/*
QBluetoothUuid()
*/
void QBluetoothUuid_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothUuid * o = new QBluetoothUuid ();
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

/*
QBluetoothUuid(ProtocolUuid uuid)
*/
HB_FUNC_STATIC( QBLUETOOTHUUID_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothUuid * o = new QBluetoothUuid ( (QBluetoothUuid::ProtocolUuid) hb_parni(1) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

/*
QBluetoothUuid(ServiceClassUuid uuid)
*/
HB_FUNC_STATIC( QBLUETOOTHUUID_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothUuid * o = new QBluetoothUuid ( (QBluetoothUuid::ServiceClassUuid) hb_parni(1) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

/*
QBluetoothUuid(quint16 uuid)
*/
HB_FUNC_STATIC( QBLUETOOTHUUID_NEW4 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothUuid * o = new QBluetoothUuid ( PQUINT16(1) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

/*
QBluetoothUuid(quint32 uuid)
*/
HB_FUNC_STATIC( QBLUETOOTHUUID_NEW5 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothUuid * o = new QBluetoothUuid ( PQUINT32(1) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

/*
QBluetoothUuid(quint128 uuid)
*/
HB_FUNC_STATIC( QBLUETOOTHUUID_NEW6 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothUuid * o = new QBluetoothUuid ();
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
  QBluetoothUuid * o = new QBluetoothUuid ( *PQBLUETOOTHUUID(1) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

/*
QBluetoothUuid(const QUuid &uuid)
*/
void QBluetoothUuid_new9 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothUuid * o = new QBluetoothUuid ( *PQUUID(1) );
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

$deleteMethod=5,2,0

/*
int minimumSize() const
*/
$method=5,2,0|int|minimumSize|

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
      RQUINT16( obj->toUInt16 ( &par1 ) );
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
      RQUINT32( obj->toUInt32 ( &par1 ) );
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
  convert QList<QBluetoothUuid> to array
*/
void _qt5xhb_convert_qlist_qbluetoothuuid_to_array ( const QList<QBluetoothUuid> & list )
{
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QBLUETOOTHUUID" );
  #else
  pDynSym = hb_dynsymFindName( "QBLUETOOTHUUID" );
  #endif

  PHB_ITEM pArray = hb_itemArrayNew(0);

  int i;

  for(i=0; i<list.count(); i++)
  {
    if( pDynSym )
    {
      #ifdef __XHARBOUR__
      hb_vmPushSymbol( pDynSym->pSymbol );
      #else
      hb_vmPushDynSym( pDynSym );
      #endif
      hb_vmPushNil();
      hb_vmDo( 0 );
      PHB_ITEM pObject = hb_itemNew( NULL );
      hb_itemCopy( pObject, hb_stackReturnItem() );
      PHB_ITEM pItem = hb_itemNew( NULL );
      hb_itemPutPtr( pItem, (QBluetoothUuid *) new QBluetoothUuid ( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_itemRelease( pItem );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
    }
  }

  hb_itemReturnRelease(pArray);
}

#pragma ENDDUMP

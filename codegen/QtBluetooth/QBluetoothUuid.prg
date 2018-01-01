%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

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

$destructor

#pragma BEGINDUMP

$includes=5,2,0

$prototype=QBluetoothUuid()
$internalConstructor=5,2,0|new1|

$prototype=QBluetoothUuid(ProtocolUuid uuid)
$constructor=5,2,0|new2|QBluetoothUuid::ProtocolUuid

$prototype=QBluetoothUuid(ServiceClassUuid uuid)
$constructor=5,2,0|new3|QBluetoothUuid::ServiceClassUuid

$prototype=QBluetoothUuid(quint16 uuid)
$constructor=5,2,0|new4|quint16

$prototype=QBluetoothUuid(quint32 uuid)
$constructor=5,2,0|new5|quint32

$prototype=QBluetoothUuid(quint128 uuid)
$constructor=5,2,0|new6|quint128

$prototype=QBluetoothUuid(const QString &uuid)
$internalConstructor=5,2,0|new7|const QString &

$prototype=QBluetoothUuid(const QBluetoothUuid &uuid)
$internalConstructor=5,2,0|new8|const QBluetoothUuid &

$prototype=QBluetoothUuid(const QUuid &uuid)
$internalConstructor=5,2,0|new9|const QUuid &

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

$prototype=int minimumSize() const
$method=5,2,0|int|minimumSize|

$prototype=quint16 toUInt16(bool *ok = 0) const
%% TODO: revisar e implementar parametro opcional
$method=5,2,0|quint16|toUInt16|bool *=0

$prototype=quint32 toUInt32(bool *ok = 0) const
%% TODO: revisar e implementar parametro opcional
$method=5,2,0|quint32|toUInt32|bool *=0

/*
  convert QList<QBluetoothUuid> to array
*/
void _qt5xhb_convert_qlist_qbluetoothuuid_to_array ( const QList<QBluetoothUuid> & list )
{
  PHB_DYNS pDynSym = hb_dynsymFindName( "QBLUETOOTHUUID" );

  PHB_ITEM pArray = hb_itemArrayNew(0);

  int i;

  for(i=0; i<list.count(); i++)
  {
    if( pDynSym )
    {
      hb_vmPushDynSym( pDynSym );
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

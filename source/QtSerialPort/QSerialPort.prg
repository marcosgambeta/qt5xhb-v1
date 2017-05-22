/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QSerialPort INHERIT QIODevice

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD setPortName
   METHOD portName
   METHOD setPort
   METHOD open
   METHOD close
   METHOD setSettingsRestoredOnClose
   METHOD settingsRestoredOnClose
   METHOD setBaudRate
   METHOD baudRate
   METHOD setDataBits
   METHOD dataBits
   METHOD setParity
   METHOD parity
   METHOD setStopBits
   METHOD stopBits
   METHOD setFlowControl
   METHOD flowControl
   METHOD setDataTerminalReady
   METHOD isDataTerminalReady
   METHOD setRequestToSend
   METHOD isRequestToSend
   METHOD pinoutSignals
   METHOD flush
   METHOD clear
   METHOD atEnd
   METHOD setDataErrorPolicy
   METHOD dataErrorPolicy
   METHOD error
   METHOD clearError
   METHOD readBufferSize
   METHOD setReadBufferSize
   METHOD isSequential
   METHOD bytesAvailable
   METHOD bytesToWrite
   METHOD canReadLine
   METHOD waitForReadyRead
   METHOD waitForBytesWritten
   METHOD sendBreak
   METHOD setBreakEnabled

   METHOD onBaudRateChanged
   METHOD onDataBitsChanged
   METHOD onParityChanged
   METHOD onStopBitsChanged
   METHOD onFlowControlChanged
   METHOD onDataErrorPolicyChanged
   METHOD onDataTerminalReadyChanged
   METHOD onRequestToSendChanged
   METHOD onError
   METHOD onSettingsRestoredOnCloseChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSerialPort
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QSerialPort>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QSerialPort>
#endif
#endif

/*
QSerialPort(QObject *parent = 0)
*/
HB_FUNC_STATIC( QSERIALPORT_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
  QSerialPort * o = new QSerialPort ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

/*
QSerialPort(const QString &name, QObject *parent = 0)
*/
HB_FUNC_STATIC( QSERIALPORT_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QObject * par2 = ISNIL(2)? 0 : (QObject *) _qt5xhb_itemGetPtr(2);
  QSerialPort * o = new QSerialPort ( PQSTRING(1), par2 );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

/*
QSerialPort(const QSerialPortInfo &info, QObject *parent = 0)
*/
HB_FUNC_STATIC( QSERIALPORT_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPortInfo * par1 = (QSerialPortInfo *) _qt5xhb_itemGetPtr(1);
  QObject * par2 = ISNIL(2)? 0 : (QObject *) _qt5xhb_itemGetPtr(2);
  QSerialPort * o = new QSerialPort ( *par1, par2 );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}


//[1]QSerialPort(QObject *parent = 0)
//[2]QSerialPort(const QString &name, QObject *parent = 0)
//[3]QSerialPort(const QSerialPortInfo &info, QObject *parent = 0)

// TODO: resolver conflito entre [1] e [2] quando for 1 parâmetro do tipo O

HB_FUNC_STATIC( QSERIALPORT_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    HB_FUNC_EXEC( QSERIALPORT_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQOBJECT(2) )
  {
    HB_FUNC_EXEC( QSERIALPORT_NEW2 );
  }
  else if( ISBETWEEN(1,2) && ISQSERIALPORTINFO(1) && ISOPTQOBJECT(2) )
  {
    HB_FUNC_EXEC( QSERIALPORT_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

HB_FUNC_STATIC( QSERIALPORT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void setPortName(const QString &name)
*/
HB_FUNC_STATIC( QSERIALPORT_SETPORTNAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPortName ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString portName() const
*/
HB_FUNC_STATIC( QSERIALPORT_PORTNAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->portName () ) );
  }
#endif
}


/*
void setPort(const QSerialPortInfo &info)
*/
HB_FUNC_STATIC( QSERIALPORT_SETPORT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSerialPortInfo * par1 = (QSerialPortInfo *) _qt5xhb_itemGetPtr(1);
    obj->setPort ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool open(OpenMode mode) Q_DECL_OVERRIDE
*/
HB_FUNC_STATIC( QSERIALPORT_OPEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->open (  (QIODevice::OpenMode) par1 ) );
  }
#endif
}


/*
void close() Q_DECL_OVERRIDE
*/
HB_FUNC_STATIC( QSERIALPORT_CLOSE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->close ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void setSettingsRestoredOnClose(bool restore)
*/
HB_FUNC_STATIC( QSERIALPORT_SETSETTINGSRESTOREDONCLOSE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSettingsRestoredOnClose ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool settingsRestoredOnClose() const
*/
HB_FUNC_STATIC( QSERIALPORT_SETTINGSRESTOREDONCLOSE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->settingsRestoredOnClose () );
  }
#endif
}


/*
bool setBaudRate(qint32 baudRate, Directions dir = AllDirections)
*/
HB_FUNC_STATIC( QSERIALPORT_SETBAUDRATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = ISNIL(2)? (int) QSerialPort::AllDirections : hb_parni(2);
    hb_retl( obj->setBaudRate ( (qint32) hb_parni(1),  (QSerialPort::Directions) par2 ) );
  }
#endif
}


/*
qint32 baudRate(Directions dir = AllDirections) const
*/
HB_FUNC_STATIC( QSERIALPORT_BAUDRATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QSerialPort::AllDirections : hb_parni(1);
    hb_retni( obj->baudRate (  (QSerialPort::Directions) par1 ) );
  }
#endif
}


/*
bool setDataBits(DataBits dataBits)
*/
HB_FUNC_STATIC( QSERIALPORT_SETDATABITS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->setDataBits (  (QSerialPort::DataBits) par1 ) );
  }
#endif
}


/*
DataBits dataBits() const
*/
HB_FUNC_STATIC( QSERIALPORT_DATABITS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->dataBits () );
  }
#endif
}


/*
bool setParity(Parity parity)
*/
HB_FUNC_STATIC( QSERIALPORT_SETPARITY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->setParity (  (QSerialPort::Parity) par1 ) );
  }
#endif
}


/*
Parity parity() const
*/
HB_FUNC_STATIC( QSERIALPORT_PARITY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->parity () );
  }
#endif
}


/*
bool setStopBits(StopBits stopBits)
*/
HB_FUNC_STATIC( QSERIALPORT_SETSTOPBITS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->setStopBits (  (QSerialPort::StopBits) par1 ) );
  }
#endif
}


/*
StopBits stopBits() const
*/
HB_FUNC_STATIC( QSERIALPORT_STOPBITS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->stopBits () );
  }
#endif
}


/*
bool setFlowControl(FlowControl flow)
*/
HB_FUNC_STATIC( QSERIALPORT_SETFLOWCONTROL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->setFlowControl (  (QSerialPort::FlowControl) par1 ) );
  }
#endif
}


/*
FlowControl flowControl() const
*/
HB_FUNC_STATIC( QSERIALPORT_FLOWCONTROL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->flowControl () );
  }
#endif
}


/*
bool setDataTerminalReady(bool set)
*/
HB_FUNC_STATIC( QSERIALPORT_SETDATATERMINALREADY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->setDataTerminalReady ( PBOOL(1) ) );
  }
#endif
}


/*
bool isDataTerminalReady()
*/
HB_FUNC_STATIC( QSERIALPORT_ISDATATERMINALREADY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isDataTerminalReady () );
  }
#endif
}


/*
bool setRequestToSend(bool set)
*/
HB_FUNC_STATIC( QSERIALPORT_SETREQUESTTOSEND )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->setRequestToSend ( PBOOL(1) ) );
  }
#endif
}


/*
bool isRequestToSend()
*/
HB_FUNC_STATIC( QSERIALPORT_ISREQUESTTOSEND )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isRequestToSend () );
  }
#endif
}


/*
PinoutSignals pinoutSignals()
*/
HB_FUNC_STATIC( QSERIALPORT_PINOUTSIGNALS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->pinoutSignals () );
  }
#endif
}


/*
bool flush()
*/
HB_FUNC_STATIC( QSERIALPORT_FLUSH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->flush () );
  }
#endif
}


/*
bool clear(Directions dir = AllDirections)
*/
HB_FUNC_STATIC( QSERIALPORT_CLEAR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QSerialPort::AllDirections : hb_parni(1);
    hb_retl( obj->clear (  (QSerialPort::Directions) par1 ) );
  }
#endif
}


/*
bool atEnd() const Q_DECL_OVERRIDE
*/
HB_FUNC_STATIC( QSERIALPORT_ATEND )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->atEnd () );
  }
#endif
}


/*
bool setDataErrorPolicy(DataErrorPolicy policy = IgnorePolicy)
*/
HB_FUNC_STATIC( QSERIALPORT_SETDATAERRORPOLICY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QSerialPort::IgnorePolicy : hb_parni(1);
    hb_retl( obj->setDataErrorPolicy (  (QSerialPort::DataErrorPolicy) par1 ) );
  }
#endif
}


/*
DataErrorPolicy dataErrorPolicy() const
*/
HB_FUNC_STATIC( QSERIALPORT_DATAERRORPOLICY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->dataErrorPolicy () );
  }
#endif
}


/*
SerialPortError error() const
*/
HB_FUNC_STATIC( QSERIALPORT_ERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->error () );
  }
#endif
}


/*
void clearError()
*/
HB_FUNC_STATIC( QSERIALPORT_CLEARERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clearError ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
qint64 readBufferSize() const
*/
HB_FUNC_STATIC( QSERIALPORT_READBUFFERSIZE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->readBufferSize () );
  }
#endif
}


/*
void setReadBufferSize(qint64 size)
*/
HB_FUNC_STATIC( QSERIALPORT_SETREADBUFFERSIZE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setReadBufferSize ( (qint64) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool isSequential() const Q_DECL_OVERRIDE
*/
HB_FUNC_STATIC( QSERIALPORT_ISSEQUENTIAL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isSequential () );
  }
#endif
}


/*
qint64 bytesAvailable() const Q_DECL_OVERRIDE
*/
HB_FUNC_STATIC( QSERIALPORT_BYTESAVAILABLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->bytesAvailable () );
  }
#endif
}


/*
qint64 bytesToWrite() const Q_DECL_OVERRIDE
*/
HB_FUNC_STATIC( QSERIALPORT_BYTESTOWRITE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->bytesToWrite () );
  }
#endif
}


/*
bool canReadLine() const Q_DECL_OVERRIDE
*/
HB_FUNC_STATIC( QSERIALPORT_CANREADLINE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->canReadLine () );
  }
#endif
}


/*
bool waitForReadyRead(int msecs) Q_DECL_OVERRIDE
*/
HB_FUNC_STATIC( QSERIALPORT_WAITFORREADYREAD )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->waitForReadyRead ( PINT(1) ) );
  }
#endif
}


/*
bool waitForBytesWritten(int msecs) Q_DECL_OVERRIDE
*/
HB_FUNC_STATIC( QSERIALPORT_WAITFORBYTESWRITTEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->waitForBytesWritten ( PINT(1) ) );
  }
#endif
}


/*
bool sendBreak(int duration = 0)
*/
HB_FUNC_STATIC( QSERIALPORT_SENDBREAK )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->sendBreak ( (int) ISNIL(1)? 0 : hb_parni(1) ) );
  }
#endif
}


/*
bool setBreakEnabled(bool set = true)
*/
HB_FUNC_STATIC( QSERIALPORT_SETBREAKENABLED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->setBreakEnabled ( (bool) ISNIL(1)? true : hb_parl(1) ) );
  }
#endif
}




#pragma ENDDUMP

/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QIODevice INHERIT QObject

   METHOD delete
   METHOD atEnd
   METHOD bytesAvailable
   METHOD bytesToWrite
   METHOD canReadLine
   METHOD close
   METHOD errorString
   METHOD getChar
   METHOD isOpen
   METHOD isReadable
   METHOD isSequential
   METHOD isTextModeEnabled
   METHOD isWritable
   METHOD open
   METHOD openMode
   METHOD peek
   METHOD pos
   METHOD putChar
   METHOD read
   METHOD readAll
   METHOD readLine
   METHOD reset
   METHOD seek
   METHOD setTextModeEnabled
   METHOD size
   METHOD ungetChar
   METHOD waitForBytesWritten
   METHOD waitForReadyRead
   METHOD write

   METHOD onAboutToClose
   METHOD onBytesWritten
   METHOD onReadChannelFinished
   METHOD onReadyRead

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QIODevice
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QIODevice>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QIODevice>
#endif

//[1]QIODevice ()
//[2]QIODevice ( QObject * parent )

//HB_FUNC_STATIC( QIODEVICE_NEW )
//{
//  if( ISNUMPAR(0) )
//  {
//    HB_FUNC_EXEC( QIODEVICE_NEW1 );
//  }
//  else if( ISNUMPAR(1) && ISOBJECT(1) )
//  {
//    HB_FUNC_EXEC( QIODEVICE_NEW2 );
//  }
//}

HB_FUNC_STATIC( QIODEVICE_DELETE )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
virtual bool atEnd () const
*/
HB_FUNC_STATIC( QIODEVICE_ATEND )
{
  QIODevice * obj = (QIODevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->atEnd () );
  }
}

/*
virtual qint64 bytesAvailable () const
*/
HB_FUNC_STATIC( QIODEVICE_BYTESAVAILABLE )
{
  QIODevice * obj = (QIODevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQINT64( obj->bytesAvailable () );
  }
}

/*
virtual qint64 bytesToWrite () const
*/
HB_FUNC_STATIC( QIODEVICE_BYTESTOWRITE )
{
  QIODevice * obj = (QIODevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQINT64( obj->bytesToWrite () );
  }
}

/*
virtual bool canReadLine () const
*/
HB_FUNC_STATIC( QIODEVICE_CANREADLINE )
{
  QIODevice * obj = (QIODevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->canReadLine () );
  }
}

/*
virtual void close ()
*/
HB_FUNC_STATIC( QIODEVICE_CLOSE )
{
  QIODevice * obj = (QIODevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->close ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString errorString () const
*/
HB_FUNC_STATIC( QIODEVICE_ERRORSTRING )
{
  QIODevice * obj = (QIODevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->errorString () );
  }
}

/*
bool getChar ( char * c ) // TODO: revisar e implementar corretamente(?)
*/
HB_FUNC_STATIC( QIODEVICE_GETCHAR )
{
  QIODevice * obj = (QIODevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    char * par1 = (char *) _qt5xhb_itemGetPtr(1);
    RBOOL( obj->getChar ( par1 ) );
  }
}

/*
bool isOpen () const
*/
HB_FUNC_STATIC( QIODEVICE_ISOPEN )
{
  QIODevice * obj = (QIODevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isOpen () );
  }
}

/*
bool isReadable () const
*/
HB_FUNC_STATIC( QIODEVICE_ISREADABLE )
{
  QIODevice * obj = (QIODevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isReadable () );
  }
}

/*
virtual bool isSequential () const
*/
HB_FUNC_STATIC( QIODEVICE_ISSEQUENTIAL )
{
  QIODevice * obj = (QIODevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isSequential () );
  }
}

/*
bool isTextModeEnabled () const
*/
HB_FUNC_STATIC( QIODEVICE_ISTEXTMODEENABLED )
{
  QIODevice * obj = (QIODevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isTextModeEnabled () );
  }
}

/*
bool isWritable () const
*/
HB_FUNC_STATIC( QIODEVICE_ISWRITABLE )
{
  QIODevice * obj = (QIODevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isWritable () );
  }
}

/*
virtual bool open ( OpenMode mode )
*/
HB_FUNC_STATIC( QIODEVICE_OPEN )
{
  QIODevice * obj = (QIODevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RBOOL( obj->open ( (QIODevice::OpenMode) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
OpenMode openMode () const
*/
HB_FUNC_STATIC( QIODEVICE_OPENMODE )
{
  QIODevice * obj = (QIODevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->openMode () );
  }
}

/*
qint64 peek ( char * data, qint64 maxSize )
*/
void QIODevice_peek1 ()
{
  QIODevice * obj = (QIODevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    char * par1 = (char *) _qt5xhb_itemGetPtr(1);
    RQINT64( obj->peek ( par1, PQINT64(2) ) );
  }
}

/*
QByteArray peek ( qint64 maxSize )
*/
void QIODevice_peek2 ()
{
  QIODevice * obj = (QIODevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->peek ( PQINT64(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}

//[1]qint64 peek ( char * data, qint64 maxSize )
//[2]QByteArray peek ( qint64 maxSize )

HB_FUNC_STATIC( QIODEVICE_PEEK )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QIODevice_peek1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QIODevice_peek2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual qint64 pos () const
*/
HB_FUNC_STATIC( QIODEVICE_POS )
{
  QIODevice * obj = (QIODevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQINT64( obj->pos () );
  }
}

/*
bool putChar ( char c )
*/
HB_FUNC_STATIC( QIODEVICE_PUTCHAR )
{
  QIODevice * obj = (QIODevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( (ISNUM(1)||ISCHAR(1)) )
    {
      char par1 = ISCHAR(1)? (char) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
      RBOOL( obj->putChar ( par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qint64 read ( char * data, qint64 maxSize )
*/
void QIODevice_read1 ()
{
  QIODevice * obj = (QIODevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    char * par1 = (char *) _qt5xhb_itemGetPtr(1);
    RQINT64( obj->read ( par1, PQINT64(2) ) );
  }
}

/*
QByteArray read ( qint64 maxSize )
*/
void QIODevice_read2 ()
{
  QIODevice * obj = (QIODevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->read ( PQINT64(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}

//[1]qint64 read ( char * data, qint64 maxSize )
//[2]QByteArray read ( qint64 maxSize )

HB_FUNC_STATIC( QIODEVICE_READ )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QIODevice_read1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QIODevice_read2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QByteArray readAll ()
*/
HB_FUNC_STATIC( QIODEVICE_READALL )
{
  QIODevice * obj = (QIODevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->readAll () );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}

/*
qint64 readLine ( char * data, qint64 maxSize )
*/
void QIODevice_readLine1 ()
{
  QIODevice * obj = (QIODevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    char * par1 = (char *) _qt5xhb_itemGetPtr(1);
    RQINT64( obj->readLine ( par1, PQINT64(2) ) );
  }
}

/*
QByteArray readLine ( qint64 maxSize = 0 )
*/
void QIODevice_readLine2 ()
{
  QIODevice * obj = (QIODevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->readLine ( OPQINT64(1,0) ) );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}

//[1]qint64 readLine ( char * data, qint64 maxSize )
//[2]QByteArray readLine ( qint64 maxSize = 0 )

HB_FUNC_STATIC( QIODEVICE_READLINE )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QIODevice_readLine1();
  }
  else if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QIODevice_readLine2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual bool reset ()
*/
HB_FUNC_STATIC( QIODEVICE_RESET )
{
  QIODevice * obj = (QIODevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->reset () );
  }
}

/*
virtual bool seek ( qint64 pos )
*/
HB_FUNC_STATIC( QIODEVICE_SEEK )
{
  QIODevice * obj = (QIODevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RBOOL( obj->seek ( PQINT64(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setTextModeEnabled ( bool enabled )
*/
HB_FUNC_STATIC( QIODEVICE_SETTEXTMODEENABLED )
{
  QIODevice * obj = (QIODevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setTextModeEnabled ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual qint64 size () const
*/
HB_FUNC_STATIC( QIODEVICE_SIZE )
{
  QIODevice * obj = (QIODevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQINT64( obj->size () );
  }
}

/*
void ungetChar ( char c )
*/
HB_FUNC_STATIC( QIODEVICE_UNGETCHAR )
{
  QIODevice * obj = (QIODevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( (ISNUM(1)||ISCHAR(1)) )
    {
      char par1 = ISCHAR(1)? (char) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
      obj->ungetChar ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual bool waitForBytesWritten ( int msecs )
*/
HB_FUNC_STATIC( QIODEVICE_WAITFORBYTESWRITTEN )
{
  QIODevice * obj = (QIODevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RBOOL( obj->waitForBytesWritten ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool waitForReadyRead ( int msecs )
*/
HB_FUNC_STATIC( QIODEVICE_WAITFORREADYREAD )
{
  QIODevice * obj = (QIODevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RBOOL( obj->waitForReadyRead ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qint64 write ( const char * data, qint64 maxSize )
*/
void QIODevice_write1 ()
{
  QIODevice * obj = (QIODevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISNUM(2) )
    {
      RQINT64( obj->write ( PCONSTCHAR(1), PQINT64(2) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qint64 write ( const char * data )
*/
void QIODevice_write2 ()
{
  QIODevice * obj = (QIODevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQINT64( obj->write ( PCONSTCHAR(1) ) );
  }
}

/*
qint64 write ( const QByteArray & byteArray )
*/
void QIODevice_write3 ()
{
  QIODevice * obj = (QIODevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQINT64( obj->write ( *PQBYTEARRAY(1) ) );
  }
}

//[1]qint64 write ( const char * data, qint64 maxSize )
//[2]qint64 write ( const char * data )
//[3]qint64 write ( const QByteArray & byteArray )

HB_FUNC_STATIC( QIODEVICE_WRITE )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QIODevice_write1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QIODevice_write2();
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QIODevice_write3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP

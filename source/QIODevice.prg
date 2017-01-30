/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QBYTEARRAY

CLASS QIODevice INHERIT QObject

   DATA class_id INIT Class_Id_QIODevice
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

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
   METHOD peek1
   METHOD peek2
   METHOD peek
   METHOD pos
   METHOD putChar
   METHOD read1
   METHOD read2
   METHOD read
   METHOD readAll
   METHOD readLine1
   METHOD readLine2
   METHOD readLine
   METHOD reset
   METHOD seek
   METHOD setTextModeEnabled
   METHOD size
   METHOD ungetChar
   METHOD waitForBytesWritten
   METHOD waitForReadyRead
   METHOD write1
   METHOD write2
   METHOD write3
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

/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QIODevice>
#endif
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QIODevice>
#endif
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

/*
virtual bool atEnd () const
*/
HB_FUNC_STATIC( QIODEVICE_ATEND )
{
  QIODevice * obj = (QIODevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->atEnd (  ) );
  }
}


/*
virtual qint64 bytesAvailable () const
*/
HB_FUNC_STATIC( QIODEVICE_BYTESAVAILABLE )
{
  QIODevice * obj = (QIODevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->bytesAvailable (  ) );
  }
}


/*
virtual qint64 bytesToWrite () const
*/
HB_FUNC_STATIC( QIODEVICE_BYTESTOWRITE )
{
  QIODevice * obj = (QIODevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->bytesToWrite (  ) );
  }
}


/*
virtual bool canReadLine () const
*/
HB_FUNC_STATIC( QIODEVICE_CANREADLINE )
{
  QIODevice * obj = (QIODevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->canReadLine (  ) );
  }
}


/*
virtual void close ()
*/
HB_FUNC_STATIC( QIODEVICE_CLOSE )
{
  QIODevice * obj = (QIODevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->close (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString errorString () const
*/
HB_FUNC_STATIC( QIODEVICE_ERRORSTRING )
{
  QIODevice * obj = (QIODevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->errorString (  ).toLatin1().data() );
  }
}


/*
bool getChar ( char * c )
*/
HB_FUNC_STATIC( QIODEVICE_GETCHAR )
{
  QIODevice * obj = (QIODevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    char * par1 = (char *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->getChar ( par1 ) );
  }
}


/*
bool isOpen () const
*/
HB_FUNC_STATIC( QIODEVICE_ISOPEN )
{
  QIODevice * obj = (QIODevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isOpen (  ) );
  }
}


/*
bool isReadable () const
*/
HB_FUNC_STATIC( QIODEVICE_ISREADABLE )
{
  QIODevice * obj = (QIODevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isReadable (  ) );
  }
}


/*
virtual bool isSequential () const
*/
HB_FUNC_STATIC( QIODEVICE_ISSEQUENTIAL )
{
  QIODevice * obj = (QIODevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isSequential (  ) );
  }
}


/*
bool isTextModeEnabled () const
*/
HB_FUNC_STATIC( QIODEVICE_ISTEXTMODEENABLED )
{
  QIODevice * obj = (QIODevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isTextModeEnabled (  ) );
  }
}


/*
bool isWritable () const
*/
HB_FUNC_STATIC( QIODEVICE_ISWRITABLE )
{
  QIODevice * obj = (QIODevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isWritable (  ) );
  }
}


/*
virtual bool open ( OpenMode mode )
*/
HB_FUNC_STATIC( QIODEVICE_OPEN )
{
  QIODevice * obj = (QIODevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->open (  (QIODevice::OpenMode) par1 ) );
  }
}


/*
OpenMode openMode () const
*/
HB_FUNC_STATIC( QIODEVICE_OPENMODE )
{
  QIODevice * obj = (QIODevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->openMode (  );
    hb_retni( i );
  }
}


/*
qint64 peek ( char * data, qint64 maxSize )
*/
HB_FUNC_STATIC( QIODEVICE_PEEK1 )
{
  QIODevice * obj = (QIODevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    char * par1 = (char *) _qtxhb_itemGetPtr(1);
    hb_retni( obj->peek ( par1, (qint64) hb_parni(2) ) );
  }
}


/*
QByteArray peek ( qint64 maxSize )
*/
HB_FUNC_STATIC( QIODEVICE_PEEK2 )
{
  QIODevice * obj = (QIODevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->peek ( (qint64) hb_parni(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


//[1]qint64 peek ( char * data, qint64 maxSize )
//[2]QByteArray peek ( qint64 maxSize )

HB_FUNC_STATIC( QIODEVICE_PEEK )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QIODEVICE_PEEK1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QIODEVICE_PEEK2 );
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
  QIODevice * obj = (QIODevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->pos (  ) );
  }
}


/*
bool putChar ( char c )
*/
HB_FUNC_STATIC( QIODEVICE_PUTCHAR )
{
  QIODevice * obj = (QIODevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    char par1 = ISCHAR(1)? (char) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
    hb_retl( obj->putChar ( par1 ) );
  }
}


/*
qint64 read ( char * data, qint64 maxSize )
*/
HB_FUNC_STATIC( QIODEVICE_READ1 )
{
  QIODevice * obj = (QIODevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    char * par1 = (char *) _qtxhb_itemGetPtr(1);
    hb_retni( obj->read ( par1, (qint64) hb_parni(2) ) );
  }
}


/*
QByteArray read ( qint64 maxSize )
*/
HB_FUNC_STATIC( QIODEVICE_READ2 )
{
  QIODevice * obj = (QIODevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->read ( (qint64) hb_parni(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


//[1]qint64 read ( char * data, qint64 maxSize )
//[2]QByteArray read ( qint64 maxSize )

HB_FUNC_STATIC( QIODEVICE_READ )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QIODEVICE_READ1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QIODEVICE_READ2 );
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
  QIODevice * obj = (QIODevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->readAll (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
qint64 readLine ( char * data, qint64 maxSize )
*/
HB_FUNC_STATIC( QIODEVICE_READLINE1 )
{
  QIODevice * obj = (QIODevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    char * par1 = (char *) _qtxhb_itemGetPtr(1);
    hb_retni( obj->readLine ( par1, (qint64) hb_parni(2) ) );
  }
}


/*
QByteArray readLine ( qint64 maxSize = 0 )
*/
HB_FUNC_STATIC( QIODEVICE_READLINE2 )
{
  QIODevice * obj = (QIODevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->readLine ( (qint64) ISNIL(1)? 0 : hb_parni(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


//[1]qint64 readLine ( char * data, qint64 maxSize )
//[2]QByteArray readLine ( qint64 maxSize = 0 )

HB_FUNC_STATIC( QIODEVICE_READLINE )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QIODEVICE_READLINE1 );
  }
  else if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QIODEVICE_READLINE2 );
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
  QIODevice * obj = (QIODevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->reset (  ) );
  }
}


/*
virtual bool seek ( qint64 pos )
*/
HB_FUNC_STATIC( QIODEVICE_SEEK )
{
  QIODevice * obj = (QIODevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->seek ( (qint64) hb_parni(1) ) );
  }
}


/*
void setTextModeEnabled ( bool enabled )
*/
HB_FUNC_STATIC( QIODEVICE_SETTEXTMODEENABLED )
{
  QIODevice * obj = (QIODevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setTextModeEnabled ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual qint64 size () const
*/
HB_FUNC_STATIC( QIODEVICE_SIZE )
{
  QIODevice * obj = (QIODevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->size (  ) );
  }
}


/*
void ungetChar ( char c )
*/
HB_FUNC_STATIC( QIODEVICE_UNGETCHAR )
{
  QIODevice * obj = (QIODevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    char par1 = ISCHAR(1)? (char) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
    obj->ungetChar ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool waitForBytesWritten ( int msecs )
*/
HB_FUNC_STATIC( QIODEVICE_WAITFORBYTESWRITTEN )
{
  QIODevice * obj = (QIODevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->waitForBytesWritten ( (int) hb_parni(1) ) );
  }
}


/*
virtual bool waitForReadyRead ( int msecs )
*/
HB_FUNC_STATIC( QIODEVICE_WAITFORREADYREAD )
{
  QIODevice * obj = (QIODevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->waitForReadyRead ( (int) hb_parni(1) ) );
  }
}


/*
qint64 write ( const char * data, qint64 maxSize )
*/
HB_FUNC_STATIC( QIODEVICE_WRITE1 )
{
  QIODevice * obj = (QIODevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const char * par1 = hb_parc(1);
    hb_retni( obj->write (  (const char *) par1, (qint64) hb_parni(2) ) );
  }
}


/*
qint64 write ( const char * data )
*/
HB_FUNC_STATIC( QIODEVICE_WRITE2 )
{
  QIODevice * obj = (QIODevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const char * par1 = hb_parc(1);
    hb_retni( obj->write (  (const char *) par1 ) );
  }
}


/*
qint64 write ( const QByteArray & byteArray )
*/
HB_FUNC_STATIC( QIODEVICE_WRITE3 )
{
  QIODevice * obj = (QIODevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) _qtxhb_itemGetPtr(1);
    hb_retni( obj->write ( *par1 ) );
  }
}


//[1]qint64 write ( const char * data, qint64 maxSize )
//[2]qint64 write ( const char * data )
//[3]qint64 write ( const QByteArray & byteArray )

HB_FUNC_STATIC( QIODEVICE_WRITE )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QIODEVICE_WRITE1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QIODEVICE_WRITE2 );
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QIODEVICE_WRITE3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

//Signals



#pragma ENDDUMP

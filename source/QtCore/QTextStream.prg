/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QTEXTCODEC
REQUEST QLOCALE
REQUEST QIODEVICE
REQUEST QSTRING
REQUEST QCHAR
#endif

CLASS QTextStream

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD setCodec
   METHOD codec
   METHOD setAutoDetectUnicode
   METHOD autoDetectUnicode
   METHOD setGenerateByteOrderMark
   METHOD generateByteOrderMark
   METHOD setLocale
   METHOD locale
   METHOD setDevice
   METHOD device
   METHOD setString
   METHOD string
   METHOD status
   METHOD setStatus
   METHOD resetStatus
   METHOD atEnd
   METHOD reset
   METHOD flush
   METHOD seek
   METHOD pos
   METHOD skipWhiteSpace
   METHOD readLine
   METHOD readAll
   METHOD read
   METHOD setFieldAlignment
   METHOD fieldAlignment
   METHOD setPadChar
   METHOD padChar
   METHOD setFieldWidth
   METHOD fieldWidth
   METHOD setNumberFlags
   METHOD numberFlags
   METHOD setIntegerBase
   METHOD integerBase
   METHOD setRealNumberNotation
   METHOD realNumberNotation
   METHOD setRealNumberPrecision
   METHOD realNumberPrecision

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTextStream
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QTextStream>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QTextStream>
#endif

/*
QTextStream()
*/
void QTextStream_new1 ()
{
  QTextStream * o = new QTextStream ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QTextStream(QIODevice *device)
*/
void QTextStream_new2 ()
{
  QTextStream * o = new QTextStream ( PQIODEVICE(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QTextStream(FILE *fileHandle, QIODevice::OpenMode openMode = QIODevice::ReadWrite)
*/
void QTextStream_new3 ()
{
  FILE * par1 = (FILE *) _qt5xhb_itemGetPtr(1);
  int par2 = ISNIL(2)? (int) QIODevice::ReadWrite : hb_parni(2);
  QTextStream * o = new QTextStream ( par1, (QIODevice::OpenMode) par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QTextStream(QString *string, QIODevice::OpenMode openMode = QIODevice::ReadWrite)
*/
void QTextStream_new4 ()
{
  QString * par1 = NULL;
  int par2 = ISNIL(2)? (int) QIODevice::ReadWrite : hb_parni(2);
  QTextStream * o = new QTextStream ( par1, (QIODevice::OpenMode) par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QTextStream(QByteArray *array, QIODevice::OpenMode openMode = QIODevice::ReadWrite)
*/
void QTextStream_new5 ()
{
  QByteArray * par1 = (QByteArray *) _qt5xhb_itemGetPtr(1);
  int par2 = ISNIL(2)? (int) QIODevice::ReadWrite : hb_parni(2);
  QTextStream * o = new QTextStream ( par1, (QIODevice::OpenMode) par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QTextStream(const QByteArray &array, QIODevice::OpenMode openMode = QIODevice::ReadOnly)
*/
void QTextStream_new6 ()
{
  int par2 = ISNIL(2)? (int) QIODevice::ReadOnly : hb_parni(2);
  QTextStream * o = new QTextStream ( *PQBYTEARRAY(1), (QIODevice::OpenMode) par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QTextStream()
//[2]QTextStream(QIODevice *device)
//[3]QTextStream(FILE *fileHandle, QIODevice::OpenMode openMode = QIODevice::ReadWrite)
//[4]QTextStream(QString *string, QIODevice::OpenMode openMode = QIODevice::ReadWrite) // TODO: revisar implementacao
//[5]QTextStream(QByteArray *array, QIODevice::OpenMode openMode = QIODevice::ReadWrite)
//[6]QTextStream(const QByteArray &array, QIODevice::OpenMode openMode = QIODevice::ReadOnly)

HB_FUNC_STATIC( QTEXTSTREAM_NEW ) // TODO: revisar casos [5] e [6]
{
  if( ISNUMPAR(0) )
  {
    QTextStream_new1();
  }
  else if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    QTextStream_new2();
  }
  else if( ISBETWEEN(1,2) && ISPOINTER(1) && ISOPTNUM(2) )
  {
    QTextStream_new3();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
  {
    QTextStream_new4();
  }
  //else if( ISBETWEEN(1,2) && ISQBYTEARRAY(1) && ISOPTNUM(2) )
  //{
  //  QTextStream_new5();
  //}
  else if( ISBETWEEN(1,2) && ISQBYTEARRAY(1) && ISOPTNUM(2) )
  {
    QTextStream_new6();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTEXTSTREAM_DELETE )
{
  QTextStream * obj = (QTextStream *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
void setCodec(QTextCodec *codec)
*/
void QTextStream_setCodec1 ()
{
  QTextStream * obj = (QTextStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QTextCodec * par1 = (QTextCodec *) _qt5xhb_itemGetPtr(1);
    obj->setCodec ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCodec(const char *codecName)
*/
void QTextStream_setCodec2 ()
{
  QTextStream * obj = (QTextStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setCodec ( PCONSTCHAR(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setCodec(QTextCodec *codec)
//[2]void setCodec(const char *codecName)

HB_FUNC_STATIC( QTEXTSTREAM_SETCODEC )
{
  if( ISNUMPAR(1) && ISQTEXTCODEC(1) )
  {
    QTextStream_setCodec1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QTextStream_setCodec2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QTextCodec *codec() const
*/
HB_FUNC_STATIC( QTEXTSTREAM_CODEC )
{
  QTextStream * obj = (QTextStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QTextCodec * ptr = obj->codec ();
    _qt5xhb_createReturnClass ( ptr, "QTEXTCODEC" );
  }
}

/*
void setAutoDetectUnicode(bool enabled)
*/
HB_FUNC_STATIC( QTEXTSTREAM_SETAUTODETECTUNICODE )
{
  QTextStream * obj = (QTextStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setAutoDetectUnicode ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool autoDetectUnicode() const
*/
HB_FUNC_STATIC( QTEXTSTREAM_AUTODETECTUNICODE )
{
  QTextStream * obj = (QTextStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->autoDetectUnicode () );
  }
}

/*
void setGenerateByteOrderMark(bool generate)
*/
HB_FUNC_STATIC( QTEXTSTREAM_SETGENERATEBYTEORDERMARK )
{
  QTextStream * obj = (QTextStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setGenerateByteOrderMark ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool generateByteOrderMark() const
*/
HB_FUNC_STATIC( QTEXTSTREAM_GENERATEBYTEORDERMARK )
{
  QTextStream * obj = (QTextStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->generateByteOrderMark () );
  }
}

/*
void setLocale(const QLocale &locale)
*/
HB_FUNC_STATIC( QTEXTSTREAM_SETLOCALE )
{
  QTextStream * obj = (QTextStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQLOCALE(1) )
    {
      obj->setLocale ( *PQLOCALE(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QLocale locale() const
*/
HB_FUNC_STATIC( QTEXTSTREAM_LOCALE )
{
  QTextStream * obj = (QTextStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QLocale * ptr = new QLocale( obj->locale () );
    _qt5xhb_createReturnClass ( ptr, "QLOCALE" );
  }
}

/*
void setDevice(QIODevice *device)
*/
HB_FUNC_STATIC( QTEXTSTREAM_SETDEVICE )
{
  QTextStream * obj = (QTextStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQIODEVICE(1) )
    {
      obj->setDevice ( PQIODEVICE(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QIODevice *device() const
*/
HB_FUNC_STATIC( QTEXTSTREAM_DEVICE )
{
  QTextStream * obj = (QTextStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QIODevice * ptr = obj->device ();
    _qt5xhb_createReturnClass ( ptr, "QIODEVICE" );
  }
}

/*
void setString(QString *string, QIODevice::OpenMode openMode = QIODevice::ReadWrite)
*/
HB_FUNC_STATIC( QTEXTSTREAM_SETSTRING )
{
  QTextStream * obj = (QTextStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISOPTNUM(2) )
    {
      QString par1 = hb_parc(1);
      int par2 = ISNIL(2)? (int) QIODevice::ReadWrite : hb_parni(2);
      obj->setString ( &par1, (QIODevice::OpenMode) par2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString *string() const
*/
HB_FUNC_STATIC( QTEXTSTREAM_STRING )
{
  QTextStream * obj = (QTextStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QString * ptr = obj->string ();
    _qt5xhb_createReturnClass ( ptr, "QSTRING" );
  }
}

/*
Status status() const
*/
HB_FUNC_STATIC( QTEXTSTREAM_STATUS )
{
  QTextStream * obj = (QTextStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->status () );
  }
}

/*
void setStatus(Status status)
*/
HB_FUNC_STATIC( QTEXTSTREAM_SETSTATUS )
{
  QTextStream * obj = (QTextStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setStatus ( (QTextStream::Status) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void resetStatus()
*/
HB_FUNC_STATIC( QTEXTSTREAM_RESETSTATUS )
{
  QTextStream * obj = (QTextStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->resetStatus ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool atEnd() const
*/
HB_FUNC_STATIC( QTEXTSTREAM_ATEND )
{
  QTextStream * obj = (QTextStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->atEnd () );
  }
}

/*
void reset()
*/
HB_FUNC_STATIC( QTEXTSTREAM_RESET )
{
  QTextStream * obj = (QTextStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->reset ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void flush()
*/
HB_FUNC_STATIC( QTEXTSTREAM_FLUSH )
{
  QTextStream * obj = (QTextStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->flush ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool seek(qint64 pos)
*/
HB_FUNC_STATIC( QTEXTSTREAM_SEEK )
{
  QTextStream * obj = (QTextStream *) _qt5xhb_itemGetPtrStackSelfItem();

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
qint64 pos() const
*/
HB_FUNC_STATIC( QTEXTSTREAM_POS )
{
  QTextStream * obj = (QTextStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQINT64( obj->pos () );
  }
}

/*
void skipWhiteSpace()
*/
HB_FUNC_STATIC( QTEXTSTREAM_SKIPWHITESPACE )
{
  QTextStream * obj = (QTextStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->skipWhiteSpace ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString readLine(qint64 maxlen = 0)
*/
HB_FUNC_STATIC( QTEXTSTREAM_READLINE )
{
  QTextStream * obj = (QTextStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTNUM(1) )
    {
      RQSTRING( obj->readLine ( OPQINT64(1,0) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString readAll()
*/
HB_FUNC_STATIC( QTEXTSTREAM_READALL )
{
  QTextStream * obj = (QTextStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->readAll () );
  }
}

/*
QString read(qint64 maxlen)
*/
HB_FUNC_STATIC( QTEXTSTREAM_READ )
{
  QTextStream * obj = (QTextStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RQSTRING( obj->read ( PQINT64(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setFieldAlignment(FieldAlignment alignment)
*/
HB_FUNC_STATIC( QTEXTSTREAM_SETFIELDALIGNMENT )
{
  QTextStream * obj = (QTextStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setFieldAlignment ( (QTextStream::FieldAlignment) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
FieldAlignment fieldAlignment() const
*/
HB_FUNC_STATIC( QTEXTSTREAM_FIELDALIGNMENT )
{
  QTextStream * obj = (QTextStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->fieldAlignment () );
  }
}

/*
void setPadChar(QChar ch)
*/
HB_FUNC_STATIC( QTEXTSTREAM_SETPADCHAR )
{
  QTextStream * obj = (QTextStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQCHAR(1) )
    {
      QChar * par1 = (QChar *) _qt5xhb_itemGetPtr(1);
      obj->setPadChar ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QChar padChar() const
*/
HB_FUNC_STATIC( QTEXTSTREAM_PADCHAR )
{
  QTextStream * obj = (QTextStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QChar * ptr = new QChar( obj->padChar () );
    _qt5xhb_createReturnClass ( ptr, "QCHAR" );
  }
}

/*
void setFieldWidth(int width)
*/
HB_FUNC_STATIC( QTEXTSTREAM_SETFIELDWIDTH )
{
  QTextStream * obj = (QTextStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setFieldWidth ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int fieldWidth() const
*/
HB_FUNC_STATIC( QTEXTSTREAM_FIELDWIDTH )
{
  QTextStream * obj = (QTextStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->fieldWidth () );
  }
}

/*
void setNumberFlags(NumberFlags flags)
*/
HB_FUNC_STATIC( QTEXTSTREAM_SETNUMBERFLAGS )
{
  QTextStream * obj = (QTextStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setNumberFlags ( (QTextStream::NumberFlags) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
NumberFlags numberFlags() const
*/
HB_FUNC_STATIC( QTEXTSTREAM_NUMBERFLAGS )
{
  QTextStream * obj = (QTextStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->numberFlags () );
  }
}

/*
void setIntegerBase(int base)
*/
HB_FUNC_STATIC( QTEXTSTREAM_SETINTEGERBASE )
{
  QTextStream * obj = (QTextStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setIntegerBase ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int integerBase() const
*/
HB_FUNC_STATIC( QTEXTSTREAM_INTEGERBASE )
{
  QTextStream * obj = (QTextStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->integerBase () );
  }
}

/*
void setRealNumberNotation(RealNumberNotation notation)
*/
HB_FUNC_STATIC( QTEXTSTREAM_SETREALNUMBERNOTATION )
{
  QTextStream * obj = (QTextStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setRealNumberNotation ( (QTextStream::RealNumberNotation) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
RealNumberNotation realNumberNotation() const
*/
HB_FUNC_STATIC( QTEXTSTREAM_REALNUMBERNOTATION )
{
  QTextStream * obj = (QTextStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->realNumberNotation () );
  }
}

/*
void setRealNumberPrecision(int precision)
*/
HB_FUNC_STATIC( QTEXTSTREAM_SETREALNUMBERPRECISION )
{
  QTextStream * obj = (QTextStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setRealNumberPrecision ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int realNumberPrecision() const
*/
HB_FUNC_STATIC( QTEXTSTREAM_REALNUMBERPRECISION )
{
  QTextStream * obj = (QTextStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->realNumberPrecision () );
  }
}

HB_FUNC_STATIC( QTEXTSTREAM_NEWFROM )
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

HB_FUNC_STATIC( QTEXTSTREAM_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QTEXTSTREAM_NEWFROM );
}

HB_FUNC_STATIC( QTEXTSTREAM_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QTEXTSTREAM_NEWFROM );
}

HB_FUNC_STATIC( QTEXTSTREAM_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QTEXTSTREAM_SETSELFDESTRUCTION )
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

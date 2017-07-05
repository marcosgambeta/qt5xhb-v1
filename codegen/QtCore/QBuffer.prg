$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QBuffer INHERIT QIODevice

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD buffer1
   METHOD buffer2
   METHOD buffer
   METHOD data
   METHOD setBuffer
   METHOD setData
   METHOD atEnd
   METHOD canReadLine
   METHOD close
   METHOD open
   METHOD pos
   METHOD seek
   METHOD size

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QBuffer ( QObject * parent = 0 )
*/
void QBuffer_new1 ()
{
  QBuffer * o = new QBuffer ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QBuffer ( QByteArray * byteArray, QObject * parent = 0 )
*/
void QBuffer_new2 ()
{
  QByteArray * par1 = (QByteArray *) _qt5xhb_itemGetPtr(1);
  QBuffer * o = new QBuffer ( par1, OPQOBJECT(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QBuffer ( QObject * parent = 0 )
//[2]QBuffer ( QByteArray * byteArray, QObject * parent = 0 )

HB_FUNC_STATIC( QBUFFER_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QBuffer_new1();
  }
  else if( ISBETWEEN(1,2) && ISQBYTEARRAY(1) && ISOPTQOBJECT(2) )
  {
    QBuffer_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QByteArray & buffer ()
*/
HB_FUNC_STATIC( QBUFFER_BUFFER1 )
{
  QBuffer * obj = (QBuffer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QByteArray * ptr = &obj->buffer ();
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}

/*
const QByteArray & buffer () const
*/
HB_FUNC_STATIC( QBUFFER_BUFFER2 )
{
  QBuffer * obj = (QBuffer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QByteArray * ptr = &obj->buffer ();
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}

//[1]QByteArray & buffer ()
//[2]const QByteArray & buffer () const

// TODO: verificar se [2] é realmente necessário

HB_FUNC_STATIC( QBUFFER_BUFFER )
{
  HB_FUNC_EXEC( QBUFFER_BUFFER1 );
}

/*
const QByteArray & data () const
*/
HB_FUNC_STATIC( QBUFFER_DATA )
{
  QBuffer * obj = (QBuffer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QByteArray * ptr = &obj->data ();
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}

/*
void setBuffer ( QByteArray * byteArray )
*/
$method=|void|setBuffer|QByteArray *

/*
void setData ( const QByteArray & data )
*/
$internalMethod=|void|setData,setData1|const QByteArray &

/*
void setData ( const char * data, int size )
*/
$internalMethod=|void|setData,setData2|const char *,int

//[1]void setData ( const QByteArray & data )
//[2]void setData ( const char * data, int size )

HB_FUNC_STATIC( QBUFFER_SETDATA )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QBuffer_setData1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QBuffer_setData2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual bool atEnd () const
*/
$method=|bool|atEnd|

/*
virtual bool canReadLine () const
*/
$method=|bool|canReadLine|

/*
virtual void close ()
*/
$method=|void|close|

/*
virtual bool open ( OpenMode flags )
*/
$method=|bool|open|QBuffer::OpenMode

/*
virtual qint64 pos () const
*/
$method=|qint64|pos|

/*
virtual bool seek ( qint64 pos )
*/
$method=|bool|seek|qint64

/*
virtual qint64 size () const
*/
$method=|qint64|size|

#pragma ENDDUMP

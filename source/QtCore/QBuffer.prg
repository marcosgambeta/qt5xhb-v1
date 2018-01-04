/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QBuffer INHERIT QIODevice

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

PROCEDURE destroyObject () CLASS QBuffer
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QBuffer>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QBuffer>
#endif

/*
QBuffer ( QObject * parent = 0 )
*/
void QBuffer_new1 ()
{
  QBuffer * o = new QBuffer ( OPQOBJECT(1,0) );
  _qt5xhb_returnNewObject( o, false );
}

/*
QBuffer ( QByteArray * byteArray, QObject * parent = 0 )
*/
void QBuffer_new2 ()
{
  QByteArray * par1 = (QByteArray *) _qt5xhb_itemGetPtr(1);
  QBuffer * o = new QBuffer ( par1, OPQOBJECT(2,0) );
  _qt5xhb_returnNewObject( o, false );
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

HB_FUNC_STATIC( QBUFFER_DELETE )
{
  QBuffer * obj = (QBuffer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
HB_FUNC_STATIC( QBUFFER_SETBUFFER )
{
  QBuffer * obj = (QBuffer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQBYTEARRAY(1) )
    {
      QByteArray * par1 = (QByteArray *) _qt5xhb_itemGetPtr(1);
      obj->setBuffer ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setData ( const QByteArray & data )
*/
void QBuffer_setData1 ()
{
  QBuffer * obj = (QBuffer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setData ( *PQBYTEARRAY(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setData ( const char * data, int size )
*/
void QBuffer_setData2 ()
{
  QBuffer * obj = (QBuffer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setData ( PCONSTCHAR(1), PINT(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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
HB_FUNC_STATIC( QBUFFER_ATEND )
{
  QBuffer * obj = (QBuffer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->atEnd () );
  }
}

/*
virtual bool canReadLine () const
*/
HB_FUNC_STATIC( QBUFFER_CANREADLINE )
{
  QBuffer * obj = (QBuffer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->canReadLine () );
  }
}

/*
virtual void close ()
*/
HB_FUNC_STATIC( QBUFFER_CLOSE )
{
  QBuffer * obj = (QBuffer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->close ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual bool open ( OpenMode flags )
*/
HB_FUNC_STATIC( QBUFFER_OPEN )
{
  QBuffer * obj = (QBuffer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RBOOL( obj->open ( (QBuffer::OpenMode) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual qint64 pos () const
*/
HB_FUNC_STATIC( QBUFFER_POS )
{
  QBuffer * obj = (QBuffer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQINT64( obj->pos () );
  }
}

/*
virtual bool seek ( qint64 pos )
*/
HB_FUNC_STATIC( QBUFFER_SEEK )
{
  QBuffer * obj = (QBuffer *) _qt5xhb_itemGetPtrStackSelfItem();

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
virtual qint64 size () const
*/
HB_FUNC_STATIC( QBUFFER_SIZE )
{
  QBuffer * obj = (QBuffer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQINT64( obj->size () );
  }
}

#pragma ENDDUMP

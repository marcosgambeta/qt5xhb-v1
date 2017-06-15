/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QAUDIOFORMAT
#endif

CLASS QAudioBuffer

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD byteCount
   METHOD data
   METHOD duration
   METHOD format
   METHOD frameCount
   METHOD isValid
   METHOD sampleCount
   METHOD startTime

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAudioBuffer
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAudioBuffer>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAudioBuffer>
#endif

/*
QAudioBuffer()
*/
HB_FUNC_STATIC( QAUDIOBUFFER_NEW1 )
{
  QAudioBuffer * o = new QAudioBuffer ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QAudioBuffer(const QAudioBuffer & other)
*/
HB_FUNC_STATIC( QAUDIOBUFFER_NEW2 )
{
  QAudioBuffer * o = new QAudioBuffer ( *PQAUDIOBUFFER(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QAudioBuffer(const QByteArray & data, const QAudioFormat & format, qint64 startTime = -1)
*/
HB_FUNC_STATIC( QAUDIOBUFFER_NEW3 )
{
  QAudioBuffer * o = new QAudioBuffer ( *PQBYTEARRAY(1), *PQAUDIOFORMAT(2), OPQINT64(3,-1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QAudioBuffer(int numFrames, const QAudioFormat & format, qint64 startTime = -1)
*/
HB_FUNC_STATIC( QAUDIOBUFFER_NEW4 )
{
  QAudioBuffer * o = new QAudioBuffer ( PINT(1), *PQAUDIOFORMAT(2), OPQINT64(3,-1) );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QAudioBuffer()
//[2]QAudioBuffer(const QAudioBuffer & other)
//[3]QAudioBuffer(const QByteArray & data, const QAudioFormat & format, qint64 startTime = -1)
//[4]QAudioBuffer(int numFrames, const QAudioFormat & format, qint64 startTime = -1)

HB_FUNC_STATIC( QAUDIOBUFFER_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QAUDIOBUFFER_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQAUDIOBUFFER(1) )
  {
    HB_FUNC_EXEC( QAUDIOBUFFER_NEW2 );
  }
  else if( ISBETWEEN(2,3) && ISQBYTEARRAY(1) && ISQAUDIOFORMAT(2) && ISOPTNUM(3) )
  {
    HB_FUNC_EXEC( QAUDIOBUFFER_NEW3 );
  }
  else if( ISBETWEEN(2,3) && ISNUM(1) && ISQAUDIOFORMAT(2) && ISOPTNUM(3) )
  {
    HB_FUNC_EXEC( QAUDIOBUFFER_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QAUDIOBUFFER_DELETE )
{
  QAudioBuffer * obj = (QAudioBuffer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
int byteCount() const
*/
HB_FUNC_STATIC( QAUDIOBUFFER_BYTECOUNT )
{
  QAudioBuffer * obj = (QAudioBuffer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->byteCount () );
  }
}





/*
void * data()
*/
HB_FUNC_STATIC( QAUDIOBUFFER_DATA )
{
  QAudioBuffer * obj = (QAudioBuffer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retptr( (void *) obj->data () );
  }
}




/*
qint64 duration() const
*/
HB_FUNC_STATIC( QAUDIOBUFFER_DURATION )
{
  QAudioBuffer * obj = (QAudioBuffer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQINT64( obj->duration () );
  }
}


/*
QAudioFormat format() const
*/
HB_FUNC_STATIC( QAUDIOBUFFER_FORMAT )
{
  QAudioBuffer * obj = (QAudioBuffer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAudioFormat * ptr = new QAudioFormat( obj->format () );
    _qt5xhb_createReturnClass ( ptr, "QAUDIOFORMAT" );
  }
}


/*
int frameCount() const
*/
HB_FUNC_STATIC( QAUDIOBUFFER_FRAMECOUNT )
{
  QAudioBuffer * obj = (QAudioBuffer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->frameCount () );
  }
}


/*
bool isValid() const
*/
HB_FUNC_STATIC( QAUDIOBUFFER_ISVALID )
{
  QAudioBuffer * obj = (QAudioBuffer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}


/*
int sampleCount() const
*/
HB_FUNC_STATIC( QAUDIOBUFFER_SAMPLECOUNT )
{
  QAudioBuffer * obj = (QAudioBuffer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->sampleCount () );
  }
}


/*
qint64 startTime() const
*/
HB_FUNC_STATIC( QAUDIOBUFFER_STARTTIME )
{
  QAudioBuffer * obj = (QAudioBuffer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQINT64( obj->startTime () );
  }
}



HB_FUNC_STATIC( QAUDIOBUFFER_NEWFROM )
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

HB_FUNC_STATIC( QAUDIOBUFFER_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QAUDIOBUFFER_NEWFROM );
}

HB_FUNC_STATIC( QAUDIOBUFFER_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QAUDIOBUFFER_NEWFROM );
}

HB_FUNC_STATIC( QAUDIOBUFFER_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QAUDIOBUFFER_SETSELFDESTRUCTION )
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

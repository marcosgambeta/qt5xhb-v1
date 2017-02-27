/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QAUDIOFORMAT
#endif

CLASS QAudioBuffer

   DATA pointer
   DATA class_id INIT Class_Id_QAudioBuffer
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QAudioBuffer>
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

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QAudioBuffer>
#endif
#endif

/*
QAudioBuffer()
*/
HB_FUNC_STATIC( QAUDIOBUFFER_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QAudioBuffer * o = new QAudioBuffer (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QAudioBuffer *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QAudioBuffer(const QAudioBuffer & other)
*/
HB_FUNC_STATIC( QAUDIOBUFFER_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QAudioBuffer * par1 = (QAudioBuffer *) _qt5xhb_itemGetPtr(1);
  QAudioBuffer * o = new QAudioBuffer ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QAudioBuffer *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QAudioBuffer(const QByteArray & data, const QAudioFormat & format, qint64 startTime = -1)
*/
HB_FUNC_STATIC( QAUDIOBUFFER_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QByteArray * par1 = (QByteArray *) _qt5xhb_itemGetPtr(1);
  QAudioFormat * par2 = (QAudioFormat *) _qt5xhb_itemGetPtr(2);
  qint64 par3 = ISNIL(3)? -1 : hb_parni(3);
  QAudioBuffer * o = new QAudioBuffer ( *par1, *par2, par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QAudioBuffer *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QAudioBuffer(int numFrames, const QAudioFormat & format, qint64 startTime = -1)
*/
HB_FUNC_STATIC( QAUDIOBUFFER_NEW4 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  int par1 = hb_parni(1);
  QAudioFormat * par2 = (QAudioFormat *) _qt5xhb_itemGetPtr(2);
  qint64 par3 = ISNIL(3)? -1 : hb_parni(3);
  QAudioBuffer * o = new QAudioBuffer ( par1, *par2, par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QAudioBuffer *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
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
  else if( ISBETWEEN(2,3) && ISQBYTEARRAY(1) && ISQAUDIOFORMAT(2) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QAUDIOBUFFER_NEW3 );
  }
  else if( ISBETWEEN(2,3) && ISNUM(1) && ISQAUDIOFORMAT(2) && (ISNUM(3)||ISNIL(3)) )
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

/*
int byteCount() const
*/
HB_FUNC_STATIC( QAUDIOBUFFER_BYTECOUNT )
{
  QAudioBuffer * obj = (QAudioBuffer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->byteCount (  ) );
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
    hb_retptr( (void *) obj->data (  ) );
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
    hb_retni( obj->duration (  ) );
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
    QAudioFormat * ptr = new QAudioFormat( obj->format (  ) );
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
    hb_retni( obj->frameCount (  ) );
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
    hb_retl( obj->isValid (  ) );
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
    hb_retni( obj->sampleCount (  ) );
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
    hb_retni( obj->startTime (  ) );
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
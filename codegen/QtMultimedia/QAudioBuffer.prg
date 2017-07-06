$header

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

$destructor

#pragma BEGINDUMP

$includes

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

$deleteMethod

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



$extraMethods

#pragma ENDDUMP

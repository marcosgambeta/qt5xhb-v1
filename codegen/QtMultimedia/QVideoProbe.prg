$header

#include "hbclass.ch"

CLASS QVideoProbe INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isActive
   METHOD setSource1
   METHOD setSource2
   METHOD setSource

   METHOD onFlush
   METHOD onVideoFrameProbed

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QVideoProbe(QObject * parent = 0)
*/
HB_FUNC_STATIC( QVIDEOPROBE_NEW )
{
  QVideoProbe * o = new QVideoProbe ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
bool isActive() const
*/
HB_FUNC_STATIC( QVIDEOPROBE_ISACTIVE )
{
  QVideoProbe * obj = (QVideoProbe *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isActive () );
  }
}


/*
bool setSource(QMediaObject * source)
*/
HB_FUNC_STATIC( QVIDEOPROBE_SETSOURCE1 )
{
  QVideoProbe * obj = (QVideoProbe *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->setSource ( PQMEDIAOBJECT(1) ) );
  }
}


/*
bool setSource(QMediaRecorder * mediaRecorder)
*/
HB_FUNC_STATIC( QVIDEOPROBE_SETSOURCE2 )
{
  QVideoProbe * obj = (QVideoProbe *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->setSource ( PQMEDIARECORDER(1) ) );
  }
}


//[1]bool setSource(QMediaObject * source)
//[2]bool setSource(QMediaRecorder * mediaRecorder)

HB_FUNC_STATIC( QVIDEOPROBE_SETSOURCE )
{
  if( ISNUMPAR(1) && ISQMEDIAOBJECT(1) )
  {
    HB_FUNC_EXEC( QVIDEOPROBE_SETSOURCE1 );
  }
  else if( ISNUMPAR(1) && ISQMEDIARECORDER(1) )
  {
    HB_FUNC_EXEC( QVIDEOPROBE_SETSOURCE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}



#pragma ENDDUMP

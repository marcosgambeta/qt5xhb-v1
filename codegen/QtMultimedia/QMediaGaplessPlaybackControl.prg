$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMEDIACONTENT
#endif

CLASS QMediaGaplessPlaybackControl INHERIT QMediaControl

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD crossfadeTime
   METHOD isCrossfadeSupported
   METHOD nextMedia
   METHOD setCrossfadeTime
   METHOD setNextMedia

   METHOD onAdvancedToNextMedia
   METHOD onCrossfadeTimeChanged
   METHOD onNextMediaChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual qreal crossfadeTime() const = 0
*/
HB_FUNC_STATIC( QMEDIAGAPLESSPLAYBACKCONTROL_CROSSFADETIME )
{
  QMediaGaplessPlaybackControl * obj = (QMediaGaplessPlaybackControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->crossfadeTime () );
  }
}


/*
virtual bool isCrossfadeSupported() const = 0
*/
HB_FUNC_STATIC( QMEDIAGAPLESSPLAYBACKCONTROL_ISCROSSFADESUPPORTED )
{
  QMediaGaplessPlaybackControl * obj = (QMediaGaplessPlaybackControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isCrossfadeSupported () );
  }
}


/*
virtual QMediaContent nextMedia() const = 0
*/
HB_FUNC_STATIC( QMEDIAGAPLESSPLAYBACKCONTROL_NEXTMEDIA )
{
  QMediaGaplessPlaybackControl * obj = (QMediaGaplessPlaybackControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaContent * ptr = new QMediaContent( obj->nextMedia () );
    _qt5xhb_createReturnClass ( ptr, "QMEDIACONTENT" );
  }
}


/*
virtual void setCrossfadeTime(qreal crossfadeTime) = 0
*/
HB_FUNC_STATIC( QMEDIAGAPLESSPLAYBACKCONTROL_SETCROSSFADETIME )
{
  QMediaGaplessPlaybackControl * obj = (QMediaGaplessPlaybackControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCrossfadeTime ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setNextMedia(const QMediaContent & media) = 0
*/
HB_FUNC_STATIC( QMEDIAGAPLESSPLAYBACKCONTROL_SETNEXTMEDIA )
{
  QMediaGaplessPlaybackControl * obj = (QMediaGaplessPlaybackControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setNextMedia ( *PQMEDIACONTENT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP

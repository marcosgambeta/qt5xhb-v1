$header

#include "hbclass.ch"

CLASS QAudioRecorder INHERIT QMediaRecorder

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD audioInput
   METHOD audioInputDescription
   METHOD audioInputs
   METHOD defaultAudioInput
   METHOD setAudioInput

   METHOD onAudioInputChanged
   METHOD onAvailableAudioInputsChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QAudioRecorder(QObject * parent = 0)
*/
HB_FUNC_STATIC( QAUDIORECORDER_NEW )
{
  QAudioRecorder * o = new QAudioRecorder ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
QString audioInput() const
*/
HB_FUNC_STATIC( QAUDIORECORDER_AUDIOINPUT )
{
  QAudioRecorder * obj = (QAudioRecorder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->audioInput () );
  }
}


/*
QString audioInputDescription(const QString & name) const
*/
HB_FUNC_STATIC( QAUDIORECORDER_AUDIOINPUTDESCRIPTION )
{
  QAudioRecorder * obj = (QAudioRecorder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->audioInputDescription ( PQSTRING(1) ) );
  }
}


/*
QStringList audioInputs() const
*/
HB_FUNC_STATIC( QAUDIORECORDER_AUDIOINPUTS )
{
  QAudioRecorder * obj = (QAudioRecorder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRINGLIST( obj->audioInputs () );
  }
}


/*
QString defaultAudioInput() const
*/
HB_FUNC_STATIC( QAUDIORECORDER_DEFAULTAUDIOINPUT )
{
  QAudioRecorder * obj = (QAudioRecorder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->defaultAudioInput () );
  }
}


/*
void setAudioInput(const QString & name)
*/
HB_FUNC_STATIC( QAUDIORECORDER_SETAUDIOINPUT )
{
  QAudioRecorder * obj = (QAudioRecorder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAudioInput ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP

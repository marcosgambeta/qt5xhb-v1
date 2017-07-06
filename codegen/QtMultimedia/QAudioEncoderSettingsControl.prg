$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QAUDIOENCODERSETTINGS
#endif

CLASS QAudioEncoderSettingsControl INHERIT QMediaControl

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD audioSettings
   METHOD codecDescription
   METHOD setAudioSettings
   METHOD supportedAudioCodecs
   METHOD supportedSampleRates

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual QAudioEncoderSettings audioSettings() const = 0
*/
HB_FUNC_STATIC( QAUDIOENCODERSETTINGSCONTROL_AUDIOSETTINGS )
{
  QAudioEncoderSettingsControl * obj = (QAudioEncoderSettingsControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAudioEncoderSettings * ptr = new QAudioEncoderSettings( obj->audioSettings () );
    _qt5xhb_createReturnClass ( ptr, "QAUDIOENCODERSETTINGS" );
  }
}


/*
virtual QString codecDescription(const QString & codec) const = 0
*/
HB_FUNC_STATIC( QAUDIOENCODERSETTINGSCONTROL_CODECDESCRIPTION )
{
  QAudioEncoderSettingsControl * obj = (QAudioEncoderSettingsControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->codecDescription ( PQSTRING(1) ) );
  }
}


/*
virtual void setAudioSettings(const QAudioEncoderSettings & settings) = 0
*/
HB_FUNC_STATIC( QAUDIOENCODERSETTINGSCONTROL_SETAUDIOSETTINGS )
{
  QAudioEncoderSettingsControl * obj = (QAudioEncoderSettingsControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAudioSettings ( *PQAUDIOENCODERSETTINGS(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QStringList supportedAudioCodecs() const = 0
*/
HB_FUNC_STATIC( QAUDIOENCODERSETTINGSCONTROL_SUPPORTEDAUDIOCODECS )
{
  QAudioEncoderSettingsControl * obj = (QAudioEncoderSettingsControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRINGLIST( obj->supportedAudioCodecs () );
  }
}


/*
virtual QList<int> supportedSampleRates(const QAudioEncoderSettings & settings, bool * continuous = 0) const = 0
*/
HB_FUNC_STATIC( QAUDIOENCODERSETTINGSCONTROL_SUPPORTEDSAMPLERATES )
{
  QAudioEncoderSettingsControl * obj = (QAudioEncoderSettingsControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    bool par2;
    QList<int> list = obj->supportedSampleRates ( *PQAUDIOENCODERSETTINGS(1), &par2 );
    _qt5xhb_convert_qlist_int_to_array ( list );
    hb_storl( par2, 2 );
  }
}



#pragma ENDDUMP

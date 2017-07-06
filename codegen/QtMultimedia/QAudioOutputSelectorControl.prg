$header

#include "hbclass.ch"

CLASS QAudioOutputSelectorControl INHERIT QMediaControl

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD activeOutput
   METHOD availableOutputs
   METHOD defaultOutput
   METHOD outputDescription
   METHOD setActiveOutput

   METHOD onActiveOutputChanged
   METHOD onAvailableOutputsChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual QString activeOutput() const = 0
*/
HB_FUNC_STATIC( QAUDIOOUTPUTSELECTORCONTROL_ACTIVEOUTPUT )
{
  QAudioOutputSelectorControl * obj = (QAudioOutputSelectorControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->activeOutput () );
  }
}


/*
virtual QList<QString> availableOutputs() const = 0
*/
HB_FUNC_STATIC( QAUDIOOUTPUTSELECTORCONTROL_AVAILABLEOUTPUTS )
{
  QAudioOutputSelectorControl * obj = (QAudioOutputSelectorControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRINGLIST( obj->availableOutputs () );
  }
}


/*
virtual QString defaultOutput() const = 0
*/
HB_FUNC_STATIC( QAUDIOOUTPUTSELECTORCONTROL_DEFAULTOUTPUT )
{
  QAudioOutputSelectorControl * obj = (QAudioOutputSelectorControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->defaultOutput () );
  }
}


/*
virtual QString outputDescription(const QString & name) const = 0
*/
HB_FUNC_STATIC( QAUDIOOUTPUTSELECTORCONTROL_OUTPUTDESCRIPTION )
{
  QAudioOutputSelectorControl * obj = (QAudioOutputSelectorControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->outputDescription ( PQSTRING(1) ) );
  }
}


/*
virtual void setActiveOutput(const QString & name) = 0
*/
HB_FUNC_STATIC( QAUDIOOUTPUTSELECTORCONTROL_SETACTIVEOUTPUT )
{
  QAudioOutputSelectorControl * obj = (QAudioOutputSelectorControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setActiveOutput ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP

$header

#include "hbclass.ch"

CLASS QAudioInputSelectorControl INHERIT QMediaControl

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD activeInput
   METHOD availableInputs
   METHOD defaultInput
   METHOD inputDescription
   METHOD setActiveInput

   METHOD onActiveInputChanged
   METHOD onAvailableInputsChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual QString activeInput() const = 0
*/
HB_FUNC_STATIC( QAUDIOINPUTSELECTORCONTROL_ACTIVEINPUT )
{
  QAudioInputSelectorControl * obj = (QAudioInputSelectorControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->activeInput () );
  }
}


/*
virtual QList<QString> availableInputs() const = 0
*/
HB_FUNC_STATIC( QAUDIOINPUTSELECTORCONTROL_AVAILABLEINPUTS )
{
  QAudioInputSelectorControl * obj = (QAudioInputSelectorControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRINGLIST( obj->availableInputs () );
  }
}


/*
virtual QString defaultInput() const = 0
*/
HB_FUNC_STATIC( QAUDIOINPUTSELECTORCONTROL_DEFAULTINPUT )
{
  QAudioInputSelectorControl * obj = (QAudioInputSelectorControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->defaultInput () );
  }
}


/*
virtual QString inputDescription(const QString & name) const = 0
*/
HB_FUNC_STATIC( QAUDIOINPUTSELECTORCONTROL_INPUTDESCRIPTION )
{
  QAudioInputSelectorControl * obj = (QAudioInputSelectorControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->inputDescription ( PQSTRING(1) ) );
  }
}


/*
virtual void setActiveInput(const QString & name) = 0
*/
HB_FUNC_STATIC( QAUDIOINPUTSELECTORCONTROL_SETACTIVEINPUT )
{
  QAudioInputSelectorControl * obj = (QAudioInputSelectorControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setActiveInput ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP

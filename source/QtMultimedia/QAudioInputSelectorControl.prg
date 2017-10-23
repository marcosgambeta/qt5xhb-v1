/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

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

PROCEDURE destroyObject () CLASS QAudioInputSelectorControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAudioInputSelectorControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAudioInputSelectorControl>
#endif


HB_FUNC_STATIC( QAUDIOINPUTSELECTORCONTROL_DELETE )
{
  QAudioInputSelectorControl * obj = (QAudioInputSelectorControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

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

PROCEDURE destroyObject () CLASS QAudioRecorder
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAudioRecorder>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAudioRecorder>
#endif

/*
QAudioRecorder(QObject * parent = 0)
*/
HB_FUNC_STATIC( QAUDIORECORDER_NEW )
{
  QAudioRecorder * o = new QAudioRecorder ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QAUDIORECORDER_DELETE )
{
  QAudioRecorder * obj = (QAudioRecorder *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
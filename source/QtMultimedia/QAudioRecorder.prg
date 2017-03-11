/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"


CLASS QAudioRecorder INHERIT QMediaRecorder

   DATA class_id INIT Class_Id_QAudioRecorder
   DATA class_flags INIT 0
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
#include <QAudioRecorder>
#endif

/*
QAudioRecorder(QObject * parent = 0)
*/
HB_FUNC_STATIC( QAUDIORECORDER_NEW )
{
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
  QAudioRecorder * o = new QAudioRecorder ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QAudioRecorder *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
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
    hb_retc( (const char *) obj->audioInput (  ).toLatin1().data() );
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
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retc( (const char *) obj->audioInputDescription ( par1 ).toLatin1().data() );
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
    QStringList strl = obj->audioInputs (  );
    _qt5xhb_convert_qstringlist_to_array ( strl );
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
    hb_retc( (const char *) obj->defaultAudioInput (  ).toLatin1().data() );
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
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setAudioInput ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP

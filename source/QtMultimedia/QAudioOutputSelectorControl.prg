/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

CLASS QAudioOutputSelectorControl INHERIT QMediaControl

   DATA class_id INIT Class_Id_QAudioOutputSelectorControl
   DATA class_flags INIT 0
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

PROCEDURE destroyObject () CLASS QAudioOutputSelectorControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAudioOutputSelectorControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAudioOutputSelectorControl>
#endif


HB_FUNC_STATIC( QAUDIOOUTPUTSELECTORCONTROL_DELETE )
{
  QAudioOutputSelectorControl * obj = (QAudioOutputSelectorControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QString activeOutput() const = 0
*/
HB_FUNC_STATIC( QAUDIOOUTPUTSELECTORCONTROL_ACTIVEOUTPUT )
{
  QAudioOutputSelectorControl * obj = (QAudioOutputSelectorControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->activeOutput (  ).toLatin1().data() );
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
    QList<QString> strl = obj->availableOutputs (  );
    _qt5xhb_convert_qstringlist_to_array ( strl );
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
    hb_retc( (const char *) obj->defaultOutput (  ).toLatin1().data() );
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
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retc( (const char *) obj->outputDescription ( par1 ).toLatin1().data() );
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
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setActiveOutput ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP

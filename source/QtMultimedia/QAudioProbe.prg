/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QAudioProbe INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isActive
   METHOD setSource1
   METHOD setSource2
   METHOD setSource

   METHOD onAudioBufferProbed
   METHOD onFlush

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAudioProbe
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAudioProbe>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAudioProbe>
#endif

/*
QAudioProbe(QObject * parent = 0)
*/
HB_FUNC_STATIC( QAUDIOPROBE_NEW )
{
  QAudioProbe * o = new QAudioProbe ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QAUDIOPROBE_DELETE )
{
  QAudioProbe * obj = (QAudioProbe *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool isActive() const
*/
HB_FUNC_STATIC( QAUDIOPROBE_ISACTIVE )
{
  QAudioProbe * obj = (QAudioProbe *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isActive () );
  }
}


/*
bool setSource(QMediaObject * source)
*/
HB_FUNC_STATIC( QAUDIOPROBE_SETSOURCE1 )
{
  QAudioProbe * obj = (QAudioProbe *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaObject * par1 = (QMediaObject *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->setSource ( par1 ) );
  }
}


/*
bool setSource(QMediaRecorder * mediaRecorder)
*/
HB_FUNC_STATIC( QAUDIOPROBE_SETSOURCE2 )
{
  QAudioProbe * obj = (QAudioProbe *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaRecorder * par1 = (QMediaRecorder *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->setSource ( par1 ) );
  }
}


//[1]bool setSource(QMediaObject * source)
//[2]bool setSource(QMediaRecorder * mediaRecorder)

HB_FUNC_STATIC( QAUDIOPROBE_SETSOURCE )
{
  if( ISNUMPAR(1) && ISQMEDIAOBJECT(1) )
  {
    HB_FUNC_EXEC( QAUDIOPROBE_SETSOURCE1 );
  }
  else if( ISNUMPAR(1) && ISQMEDIARECORDER(1) )
  {
    HB_FUNC_EXEC( QAUDIOPROBE_SETSOURCE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}



#pragma ENDDUMP

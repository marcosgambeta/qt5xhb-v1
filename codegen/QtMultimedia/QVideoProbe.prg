/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QVideoProbe INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isActive
   METHOD setSource1
   METHOD setSource2
   METHOD setSource

   METHOD onFlush
   METHOD onVideoFrameProbed

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QVideoProbe
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QVideoProbe>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QVideoProbe>
#endif

/*
QVideoProbe(QObject * parent = 0)
*/
HB_FUNC_STATIC( QVIDEOPROBE_NEW )
{
  QVideoProbe * o = new QVideoProbe ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QVIDEOPROBE_DELETE )
{
  QVideoProbe * obj = (QVideoProbe *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC_STATIC( QVIDEOPROBE_ISACTIVE )
{
  QVideoProbe * obj = (QVideoProbe *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isActive () );
  }
}


/*
bool setSource(QMediaObject * source)
*/
HB_FUNC_STATIC( QVIDEOPROBE_SETSOURCE1 )
{
  QVideoProbe * obj = (QVideoProbe *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->setSource ( PQMEDIAOBJECT(1) ) );
  }
}


/*
bool setSource(QMediaRecorder * mediaRecorder)
*/
HB_FUNC_STATIC( QVIDEOPROBE_SETSOURCE2 )
{
  QVideoProbe * obj = (QVideoProbe *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->setSource ( PQMEDIARECORDER(1) ) );
  }
}


//[1]bool setSource(QMediaObject * source)
//[2]bool setSource(QMediaRecorder * mediaRecorder)

HB_FUNC_STATIC( QVIDEOPROBE_SETSOURCE )
{
  if( ISNUMPAR(1) && ISQMEDIAOBJECT(1) )
  {
    HB_FUNC_EXEC( QVIDEOPROBE_SETSOURCE1 );
  }
  else if( ISNUMPAR(1) && ISQMEDIARECORDER(1) )
  {
    HB_FUNC_EXEC( QVIDEOPROBE_SETSOURCE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}



#pragma ENDDUMP

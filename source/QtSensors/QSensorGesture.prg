/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QSensorGesture INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isActive
   METHOD validIds
   METHOD invalidIds
   METHOD gestureSignals
   METHOD startDetection
   METHOD stopDetection

   METHOD onDetected

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSensorGesture
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QSensorGesture>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QSensorGesture>
#endif
#endif

/*
QSensorGesture(const QStringList &ids, QObject *parent = 0)
*/
HB_FUNC_STATIC( QSENSORGESTURE_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorGesture * o = new QSensorGesture ( PQSTRINGLIST(1), OPQOBJECT(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}


HB_FUNC_STATIC( QSENSORGESTURE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorGesture * obj = (QSensorGesture *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
#endif
}

/*
bool isActive()
*/
HB_FUNC_STATIC( QSENSORGESTURE_ISACTIVE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorGesture * obj = (QSensorGesture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isActive () );
  }
#endif
}


/*
QStringList validIds() const
*/
HB_FUNC_STATIC( QSENSORGESTURE_VALIDIDS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorGesture * obj = (QSensorGesture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->validIds ();
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
#endif
}


/*
QStringList invalidIds() const
*/
HB_FUNC_STATIC( QSENSORGESTURE_INVALIDIDS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorGesture * obj = (QSensorGesture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->invalidIds ();
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
#endif
}


/*
QStringList gestureSignals() const
*/
HB_FUNC_STATIC( QSENSORGESTURE_GESTURESIGNALS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorGesture * obj = (QSensorGesture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->gestureSignals ();
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
#endif
}


/*
void startDetection()
*/
HB_FUNC_STATIC( QSENSORGESTURE_STARTDETECTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorGesture * obj = (QSensorGesture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->startDetection ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void stopDetection()
*/
HB_FUNC_STATIC( QSENSORGESTURE_STOPDETECTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorGesture * obj = (QSensorGesture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->stopDetection ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}




#pragma ENDDUMP

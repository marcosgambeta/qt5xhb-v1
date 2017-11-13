/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QMetaDataWriterControl INHERIT QMediaControl

   METHOD isWritable
   METHOD isMetaDataAvailable
   METHOD metaData
   METHOD setMetaData
   METHOD availableMetaData

   METHOD onMetaDataChanged1
   METHOD onMetaDataChanged2
   METHOD onWritableChanged
   METHOD onMetaDataAvailableChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMetaDataWriterControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QMetaDataWriterControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QMetaDataWriterControl>
#endif


/*
virtual bool isWritable() const = 0
*/
HB_FUNC_STATIC( QMETADATAWRITERCONTROL_ISWRITABLE )
{
  QMetaDataWriterControl * obj = (QMetaDataWriterControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isWritable () );
  }
}


/*
virtual bool isMetaDataAvailable() const = 0
*/
HB_FUNC_STATIC( QMETADATAWRITERCONTROL_ISMETADATAAVAILABLE )
{
  QMetaDataWriterControl * obj = (QMetaDataWriterControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isMetaDataAvailable () );
  }
}


/*
virtual QVariant metaData(const QString &key) const = 0
*/
HB_FUNC_STATIC( QMETADATAWRITERCONTROL_METADATA )
{
  QMetaDataWriterControl * obj = (QMetaDataWriterControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->metaData ( PQSTRING(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
virtual void setMetaData(const QString &key, const QVariant &value) = 0
*/
HB_FUNC_STATIC( QMETADATAWRITERCONTROL_SETMETADATA )
{
  QMetaDataWriterControl * obj = (QMetaDataWriterControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMetaData ( PQSTRING(1), *PQVARIANT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QStringList availableMetaData() const = 0
*/
HB_FUNC_STATIC( QMETADATAWRITERCONTROL_AVAILABLEMETADATA )
{
  QMetaDataWriterControl * obj = (QMetaDataWriterControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRINGLIST( obj->availableMetaData () );
  }
}




#pragma ENDDUMP

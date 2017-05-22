/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QMetaDataWriterControl INHERIT QMediaControl

   DATA self_destruction INIT .F.

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
    hb_retl( obj->isWritable () );
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
    hb_retl( obj->isMetaDataAvailable () );
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
    QVariant * par2 = (QVariant *) _qt5xhb_itemGetPtr(2);
    obj->setMetaData ( PQSTRING(1), *par2 );
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
    QStringList strl = obj->availableMetaData ();
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
}




#pragma ENDDUMP

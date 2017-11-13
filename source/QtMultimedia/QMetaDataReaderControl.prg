/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QMetaDataReaderControl INHERIT QMediaControl

   METHOD delete
   METHOD isMetaDataAvailable
   METHOD metaData
   METHOD availableMetaData

   METHOD onMetaDataChanged1
   METHOD onMetaDataChanged2
   METHOD onMetaDataAvailableChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMetaDataReaderControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QMetaDataReaderControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QMetaDataReaderControl>
#endif


HB_FUNC_STATIC( QMETADATAREADERCONTROL_DELETE )
{
  QMetaDataReaderControl * obj = (QMetaDataReaderControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual bool isMetaDataAvailable() const = 0
*/
HB_FUNC_STATIC( QMETADATAREADERCONTROL_ISMETADATAAVAILABLE )
{
  QMetaDataReaderControl * obj = (QMetaDataReaderControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isMetaDataAvailable () );
  }
}


/*
virtual QVariant metaData(const QString &key) const = 0
*/
HB_FUNC_STATIC( QMETADATAREADERCONTROL_METADATA )
{
  QMetaDataReaderControl * obj = (QMetaDataReaderControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->metaData ( PQSTRING(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
virtual QStringList availableMetaData() const = 0
*/
HB_FUNC_STATIC( QMETADATAREADERCONTROL_AVAILABLEMETADATA )
{
  QMetaDataReaderControl * obj = (QMetaDataReaderControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRINGLIST( obj->availableMetaData () );
  }
}




#pragma ENDDUMP

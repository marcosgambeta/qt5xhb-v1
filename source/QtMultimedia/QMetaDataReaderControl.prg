/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QMetaDataReaderControl INHERIT QMediaControl

   DATA class_id INIT Class_Id_QMetaDataReaderControl
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

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
#include "qt5xhb_clsid.h"
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
    hb_retl( obj->isMetaDataAvailable (  ) );
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
    QString par1 = QLatin1String( hb_parc(1) );
    QVariant * ptr = new QVariant( obj->metaData ( par1 ) );
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
    QStringList strl = obj->availableMetaData (  );
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
}




#pragma ENDDUMP

/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDESIGNERFORMEDITORINTERFACE
REQUEST QOBJECT
#endif

CLASS QDesignerPropertyEditorInterface INHERIT QWidget

   DATA class_id INIT Class_Id_QDesignerPropertyEditorInterface
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD core
   METHOD currentPropertyName
   METHOD isReadOnly
   METHOD object
   METHOD setObject
   METHOD setPropertyValue
   METHOD setReadOnly
   METHOD onPropertyChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDesignerPropertyEditorInterface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDesignerPropertyEditorInterface>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDesignerPropertyEditorInterface>
#endif


HB_FUNC_STATIC( QDESIGNERPROPERTYEDITORINTERFACE_DELETE )
{
  QDesignerPropertyEditorInterface * obj = (QDesignerPropertyEditorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QDesignerFormEditorInterface * core () const
*/
HB_FUNC_STATIC( QDESIGNERPROPERTYEDITORINTERFACE_CORE )
{
  QDesignerPropertyEditorInterface * obj = (QDesignerPropertyEditorInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDesignerFormEditorInterface * ptr = obj->core (  );
    _qt5xhb_createReturnClass ( ptr, "QDESIGNERFORMEDITORINTERFACE" );
  }
}


/*
virtual QString currentPropertyName () const = 0
*/
HB_FUNC_STATIC( QDESIGNERPROPERTYEDITORINTERFACE_CURRENTPROPERTYNAME )
{
  QDesignerPropertyEditorInterface * obj = (QDesignerPropertyEditorInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->currentPropertyName (  ).toLatin1().data() );
  }
}


/*
virtual bool isReadOnly () const = 0
*/
HB_FUNC_STATIC( QDESIGNERPROPERTYEDITORINTERFACE_ISREADONLY )
{
  QDesignerPropertyEditorInterface * obj = (QDesignerPropertyEditorInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isReadOnly (  ) );
  }
}


/*
virtual QObject * object () const = 0
*/
HB_FUNC_STATIC( QDESIGNERPROPERTYEDITORINTERFACE_OBJECT )
{
  QDesignerPropertyEditorInterface * obj = (QDesignerPropertyEditorInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * ptr = obj->object (  );
    _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}


/*
virtual void setObject ( QObject * object ) = 0
*/
HB_FUNC_STATIC( QDESIGNERPROPERTYEDITORINTERFACE_SETOBJECT )
{
  QDesignerPropertyEditorInterface * obj = (QDesignerPropertyEditorInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * par1 = (QObject *) _qt5xhb_itemGetPtr(1);
    obj->setObject ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setPropertyValue ( const QString & name, const QVariant & value, bool changed = true ) = 0
*/
HB_FUNC_STATIC( QDESIGNERPROPERTYEDITORINTERFACE_SETPROPERTYVALUE )
{
  QDesignerPropertyEditorInterface * obj = (QDesignerPropertyEditorInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QVariant * par2 = (QVariant *) _qt5xhb_itemGetPtr(2);
    obj->setPropertyValue ( par1, *par2, (bool) ISNIL(3)? true : hb_parl(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setReadOnly ( bool readOnly ) = 0
*/
HB_FUNC_STATIC( QDESIGNERPROPERTYEDITORINTERFACE_SETREADONLY )
{
  QDesignerPropertyEditorInterface * obj = (QDesignerPropertyEditorInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setReadOnly ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP

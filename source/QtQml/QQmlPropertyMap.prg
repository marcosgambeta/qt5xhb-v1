/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QQmlPropertyMap INHERIT QObject

   DATA class_id INIT Class_Id_QQmlPropertyMap
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD clear
   METHOD contains
   METHOD count
   METHOD insert
   METHOD isEmpty
   METHOD keys
   METHOD size
   METHOD value
   METHOD onValueChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QQmlPropertyMap
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QQmlPropertyMap>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QQmlPropertyMap>
#endif

/*
QQmlPropertyMap(QObject * parent = 0)
*/
HB_FUNC_STATIC( QQMLPROPERTYMAP_NEW )
{
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
  QQmlPropertyMap * o = new QQmlPropertyMap ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QQmlPropertyMap *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QQMLPROPERTYMAP_DELETE )
{
  QQmlPropertyMap * obj = (QQmlPropertyMap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void clear(const QString & key)
*/
HB_FUNC_STATIC( QQMLPROPERTYMAP_CLEAR )
{
  QQmlPropertyMap * obj = (QQmlPropertyMap *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->clear ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool contains(const QString & key) const
*/
HB_FUNC_STATIC( QQMLPROPERTYMAP_CONTAINS )
{
  QQmlPropertyMap * obj = (QQmlPropertyMap *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( obj->contains ( par1 ) );
  }
}


/*
int count() const
*/
HB_FUNC_STATIC( QQMLPROPERTYMAP_COUNT )
{
  QQmlPropertyMap * obj = (QQmlPropertyMap *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->count (  ) );
  }
}


/*
void insert(const QString & key, const QVariant & value)
*/
HB_FUNC_STATIC( QQMLPROPERTYMAP_INSERT )
{
  QQmlPropertyMap * obj = (QQmlPropertyMap *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QVariant * par2 = (QVariant *) _qt5xhb_itemGetPtr(2);
    obj->insert ( par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isEmpty() const
*/
HB_FUNC_STATIC( QQMLPROPERTYMAP_ISEMPTY )
{
  QQmlPropertyMap * obj = (QQmlPropertyMap *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isEmpty (  ) );
  }
}


/*
QStringList keys() const
*/
HB_FUNC_STATIC( QQMLPROPERTYMAP_KEYS )
{
  QQmlPropertyMap * obj = (QQmlPropertyMap *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->keys (  );
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
}


/*
int size() const
*/
HB_FUNC_STATIC( QQMLPROPERTYMAP_SIZE )
{
  QQmlPropertyMap * obj = (QQmlPropertyMap *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->size (  ) );
  }
}


/*
QVariant value(const QString & key) const
*/
HB_FUNC_STATIC( QQMLPROPERTYMAP_VALUE )
{
  QQmlPropertyMap * obj = (QQmlPropertyMap *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QVariant * ptr = new QVariant( obj->value ( par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}




#pragma ENDDUMP

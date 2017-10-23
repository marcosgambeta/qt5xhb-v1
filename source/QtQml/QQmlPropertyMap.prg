/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QQmlPropertyMap INHERIT QObject

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
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QQmlPropertyMap>
#endif

/*
QQmlPropertyMap(QObject * parent = 0)
*/
HB_FUNC_STATIC( QQMLPROPERTYMAP_NEW )
{
  QQmlPropertyMap * o = new QQmlPropertyMap ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
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
    obj->clear ( PQSTRING(1) );
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
    RBOOL( obj->contains ( PQSTRING(1) ) );
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
    RINT( obj->count () );
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
    obj->insert ( PQSTRING(1), *PQVARIANT(2) );
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
    RBOOL( obj->isEmpty () );
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
    RQSTRINGLIST( obj->keys () );
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
    RINT( obj->size () );
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
    QVariant * ptr = new QVariant( obj->value ( PQSTRING(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}




#pragma ENDDUMP

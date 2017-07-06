$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QQmlPropertyMap INHERIT QObject

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

$destructor

#pragma BEGINDUMP

$includes

/*
QQmlPropertyMap(QObject * parent = 0)
*/
HB_FUNC_STATIC( QQMLPROPERTYMAP_NEW )
{
  QQmlPropertyMap * o = new QQmlPropertyMap ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

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
$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QDeclarativePropertyMap INHERIT QObject

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
QDeclarativePropertyMap ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTYMAP_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QDeclarativePropertyMap * o = new QDeclarativePropertyMap ( OPQOBJECT(1,0) );
    _qt5xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void clear ( const QString & key )
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTYMAP_CLEAR )
{
  QDeclarativePropertyMap * obj = (QDeclarativePropertyMap *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->clear ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool contains ( const QString & key ) const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTYMAP_CONTAINS )
{
  QDeclarativePropertyMap * obj = (QDeclarativePropertyMap *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      RBOOL( obj->contains ( PQSTRING(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int count () const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTYMAP_COUNT )
{
  QDeclarativePropertyMap * obj = (QDeclarativePropertyMap *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->count () );
  }
}

/*
void insert ( const QString & key, const QVariant & value )
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTYMAP_INSERT )
{
  QDeclarativePropertyMap * obj = (QDeclarativePropertyMap *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISQVARIANT(2) )
    {
      obj->insert ( PQSTRING(1), *PQVARIANT(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isEmpty () const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTYMAP_ISEMPTY )
{
  QDeclarativePropertyMap * obj = (QDeclarativePropertyMap *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isEmpty () );
  }
}

/*
QStringList keys () const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTYMAP_KEYS )
{
  QDeclarativePropertyMap * obj = (QDeclarativePropertyMap *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRINGLIST( obj->keys () );
  }
}

/*
int size () const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTYMAP_SIZE )
{
  QDeclarativePropertyMap * obj = (QDeclarativePropertyMap *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->size () );
  }
}

/*
QVariant value ( const QString & key ) const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTYMAP_VALUE )
{
  QDeclarativePropertyMap * obj = (QDeclarativePropertyMap *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      QVariant * ptr = new QVariant( obj->value ( PQSTRING(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

#pragma ENDDUMP

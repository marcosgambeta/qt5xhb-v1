$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWEBSECURITYORIGIN
#endif

CLASS QWebDatabase

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD displayName
   METHOD expectedSize
   METHOD fileName
   METHOD name
   METHOD origin
   METHOD size
   METHOD removeAllDatabases
   METHOD removeDatabase

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QWebSecurityOrigin>

/*
QWebDatabase ( const QWebDatabase & other )
*/
HB_FUNC_STATIC( QWEBDATABASE_NEW )
{
  QWebDatabase * o = new QWebDatabase ( *PQWEBDATABASE(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

$deleteMethod

/*
QString displayName () const
*/
HB_FUNC_STATIC( QWEBDATABASE_DISPLAYNAME )
{
  QWebDatabase * obj = (QWebDatabase *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->displayName () );
  }
}


/*
qint64 expectedSize () const
*/
HB_FUNC_STATIC( QWEBDATABASE_EXPECTEDSIZE )
{
  QWebDatabase * obj = (QWebDatabase *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQINT64( obj->expectedSize () );
  }
}


/*
QString fileName () const
*/
HB_FUNC_STATIC( QWEBDATABASE_FILENAME )
{
  QWebDatabase * obj = (QWebDatabase *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->fileName () );
  }
}


/*
QString name () const
*/
HB_FUNC_STATIC( QWEBDATABASE_NAME )
{
  QWebDatabase * obj = (QWebDatabase *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->name () );
  }
}


/*
QWebSecurityOrigin origin () const
*/
HB_FUNC_STATIC( QWEBDATABASE_ORIGIN )
{
  QWebDatabase * obj = (QWebDatabase *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebSecurityOrigin * ptr = new QWebSecurityOrigin( obj->origin () );
    _qt5xhb_createReturnClass ( ptr, "QWEBSECURITYORIGIN", true );
  }
}


/*
qint64 size () const
*/
HB_FUNC_STATIC( QWEBDATABASE_SIZE )
{
  QWebDatabase * obj = (QWebDatabase *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQINT64( obj->size () );
  }
}


/*
static void removeAllDatabases ()
*/
HB_FUNC_STATIC( QWEBDATABASE_REMOVEALLDATABASES )
{
  QWebDatabase::removeAllDatabases ();
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void removeDatabase ( const QWebDatabase & db )
*/
HB_FUNC_STATIC( QWEBDATABASE_REMOVEDATABASE )
{
  QWebDatabase::removeDatabase ( *PQWEBDATABASE(1) );
  hb_itemReturn( hb_stackSelfItem() );
}



$extraMethods

#pragma ENDDUMP

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDOMNODE
#endif

CLASS QDomNamedNodeMap

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD contains
   METHOD count
   METHOD isEmpty
   METHOD item
   METHOD length
   METHOD namedItem
   METHOD namedItemNS
   METHOD removeNamedItem
   METHOD removeNamedItemNS
   METHOD setNamedItem
   METHOD setNamedItemNS
   METHOD size

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

/*
QDomNamedNodeMap ()
*/
HB_FUNC_STATIC( QDOMNAMEDNODEMAP_NEW1 )
{
  QDomNamedNodeMap * o = new QDomNamedNodeMap ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QDomNamedNodeMap ( const QDomNamedNodeMap & n )
*/
HB_FUNC_STATIC( QDOMNAMEDNODEMAP_NEW2 )
{
  QDomNamedNodeMap * o = new QDomNamedNodeMap ( *PQDOMNAMEDNODEMAP(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}


//[1]QDomNamedNodeMap ()
//[2]QDomNamedNodeMap ( const QDomNamedNodeMap & n )

HB_FUNC_STATIC( QDOMNAMEDNODEMAP_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDOMNAMEDNODEMAP_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDOMNAMEDNODEMAP(1) )
  {
    HB_FUNC_EXEC( QDOMNAMEDNODEMAP_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool contains ( const QString & name ) const
*/
HB_FUNC_STATIC( QDOMNAMEDNODEMAP_CONTAINS )
{
  QDomNamedNodeMap * obj = (QDomNamedNodeMap *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->contains ( PQSTRING(1) ) );
  }
}


/*
int count () const
*/
HB_FUNC_STATIC( QDOMNAMEDNODEMAP_COUNT )
{
  QDomNamedNodeMap * obj = (QDomNamedNodeMap *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->count () );
  }
}


/*
bool isEmpty () const
*/
HB_FUNC_STATIC( QDOMNAMEDNODEMAP_ISEMPTY )
{
  QDomNamedNodeMap * obj = (QDomNamedNodeMap *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isEmpty () );
  }
}


/*
QDomNode item ( int index ) const
*/
HB_FUNC_STATIC( QDOMNAMEDNODEMAP_ITEM )
{
  QDomNamedNodeMap * obj = (QDomNamedNodeMap *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDomNode * ptr = new QDomNode( obj->item ( PINT(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QDOMNODE", true );
  }
}


/*
uint length () const
*/
HB_FUNC_STATIC( QDOMNAMEDNODEMAP_LENGTH )
{
  QDomNamedNodeMap * obj = (QDomNamedNodeMap *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->length () );
  }
}


/*
QDomNode namedItem ( const QString & name ) const
*/
HB_FUNC_STATIC( QDOMNAMEDNODEMAP_NAMEDITEM )
{
  QDomNamedNodeMap * obj = (QDomNamedNodeMap *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDomNode * ptr = new QDomNode( obj->namedItem ( PQSTRING(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QDOMNODE", true );
  }
}


/*
QDomNode namedItemNS ( const QString & nsURI, const QString & localName ) const
*/
HB_FUNC_STATIC( QDOMNAMEDNODEMAP_NAMEDITEMNS )
{
  QDomNamedNodeMap * obj = (QDomNamedNodeMap *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDomNode * ptr = new QDomNode( obj->namedItemNS ( PQSTRING(1), PQSTRING(2) ) );
    _qt5xhb_createReturnClass ( ptr, "QDOMNODE", true );
  }
}


/*
QDomNode removeNamedItem ( const QString & name )
*/
HB_FUNC_STATIC( QDOMNAMEDNODEMAP_REMOVENAMEDITEM )
{
  QDomNamedNodeMap * obj = (QDomNamedNodeMap *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDomNode * ptr = new QDomNode( obj->removeNamedItem ( PQSTRING(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QDOMNODE", true );
  }
}


/*
QDomNode removeNamedItemNS ( const QString & nsURI, const QString & localName )
*/
HB_FUNC_STATIC( QDOMNAMEDNODEMAP_REMOVENAMEDITEMNS )
{
  QDomNamedNodeMap * obj = (QDomNamedNodeMap *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDomNode * ptr = new QDomNode( obj->removeNamedItemNS ( PQSTRING(1), PQSTRING(2) ) );
    _qt5xhb_createReturnClass ( ptr, "QDOMNODE", true );
  }
}


/*
QDomNode setNamedItem ( const QDomNode & newNode )
*/
HB_FUNC_STATIC( QDOMNAMEDNODEMAP_SETNAMEDITEM )
{
  QDomNamedNodeMap * obj = (QDomNamedNodeMap *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDomNode * ptr = new QDomNode( obj->setNamedItem ( *PQDOMNODE(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QDOMNODE", true );
  }
}


/*
QDomNode setNamedItemNS ( const QDomNode & newNode )
*/
HB_FUNC_STATIC( QDOMNAMEDNODEMAP_SETNAMEDITEMNS )
{
  QDomNamedNodeMap * obj = (QDomNamedNodeMap *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDomNode * ptr = new QDomNode( obj->setNamedItemNS ( *PQDOMNODE(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QDOMNODE", true );
  }
}


/*
int size () const
*/
HB_FUNC_STATIC( QDOMNAMEDNODEMAP_SIZE )
{
  QDomNamedNodeMap * obj = (QDomNamedNodeMap *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->size () );
  }
}



$extraMethods

#pragma ENDDUMP

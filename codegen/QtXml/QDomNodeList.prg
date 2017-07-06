$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDOMNODE
#endif

CLASS QDomNodeList

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD at
   METHOD count
   METHOD isEmpty
   METHOD item
   METHOD length
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
QDomNodeList ()
*/
HB_FUNC_STATIC( QDOMNODELIST_NEW1 )
{
  QDomNodeList * o = new QDomNodeList ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QDomNodeList ( const QDomNodeList & n )
*/
HB_FUNC_STATIC( QDOMNODELIST_NEW2 )
{
  QDomNodeList * o = new QDomNodeList ( *PQDOMNODELIST(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}


//[1]QDomNodeList ()
//[2]QDomNodeList ( const QDomNodeList & n )

HB_FUNC_STATIC( QDOMNODELIST_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDOMNODELIST_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDOMNODELIST(1) )
  {
    HB_FUNC_EXEC( QDOMNODELIST_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QDomNode at ( int index ) const
*/
HB_FUNC_STATIC( QDOMNODELIST_AT )
{
  QDomNodeList * obj = (QDomNodeList *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDomNode * ptr = new QDomNode( obj->at ( PINT(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QDOMNODE", true );
  }
}


/*
int count () const
*/
HB_FUNC_STATIC( QDOMNODELIST_COUNT )
{
  QDomNodeList * obj = (QDomNodeList *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->count () );
  }
}


/*
bool isEmpty () const
*/
HB_FUNC_STATIC( QDOMNODELIST_ISEMPTY )
{
  QDomNodeList * obj = (QDomNodeList *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isEmpty () );
  }
}


/*
QDomNode item ( int index ) const
*/
HB_FUNC_STATIC( QDOMNODELIST_ITEM )
{
  QDomNodeList * obj = (QDomNodeList *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDomNode * ptr = new QDomNode( obj->item ( PINT(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QDOMNODE", true );
  }
}


/*
uint length () const
*/
HB_FUNC_STATIC( QDOMNODELIST_LENGTH )
{
  QDomNodeList * obj = (QDomNodeList *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->length () );
  }
}


/*
int size () const
*/
HB_FUNC_STATIC( QDOMNODELIST_SIZE )
{
  QDomNodeList * obj = (QDomNodeList *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->size () );
  }
}



$extraMethods

#pragma ENDDUMP

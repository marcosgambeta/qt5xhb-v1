/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

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

PROCEDURE destroyObject () CLASS QDomNodeList
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDomNodeList>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDomNodeList>
#endif

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

HB_FUNC_STATIC( QDOMNODELIST_DELETE )
{
  QDomNodeList * obj = (QDomNodeList *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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



HB_FUNC_STATIC( QDOMNODELIST_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

HB_FUNC_STATIC( QDOMNODELIST_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QDOMNODELIST_NEWFROM );
}

HB_FUNC_STATIC( QDOMNODELIST_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QDOMNODELIST_NEWFROM );
}

HB_FUNC_STATIC( QDOMNODELIST_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QDOMNODELIST_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

#pragma ENDDUMP

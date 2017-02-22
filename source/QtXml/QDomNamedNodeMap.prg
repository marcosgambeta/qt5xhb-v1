/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QDOMNODE

CLASS QDomNamedNodeMap

   DATA pointer
   DATA class_id INIT Class_Id_QDomNamedNodeMap
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

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

PROCEDURE destroyObject () CLASS QDomNamedNodeMap
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QDomNamedNodeMap>
#endif
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QDomNamedNodeMap>
#endif
#endif

/*
QDomNamedNodeMap ()
*/
HB_FUNC_STATIC( QDOMNAMEDNODEMAP_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QDomNamedNodeMap * o = new QDomNamedNodeMap (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDomNamedNodeMap *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QDomNamedNodeMap ( const QDomNamedNodeMap & n )
*/
HB_FUNC_STATIC( QDOMNAMEDNODEMAP_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QDomNamedNodeMap * par1 = (QDomNamedNodeMap *) _qtxhb_itemGetPtr(1);
  QDomNamedNodeMap * o = new QDomNamedNodeMap ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDomNamedNodeMap *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
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

HB_FUNC_STATIC( QDOMNAMEDNODEMAP_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QDomNamedNodeMap * obj = (QDomNamedNodeMap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
#endif
}

/*
bool contains ( const QString & name ) const
*/
HB_FUNC_STATIC( QDOMNAMEDNODEMAP_CONTAINS )
{
  QDomNamedNodeMap * obj = (QDomNamedNodeMap *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( obj->contains ( par1 ) );
  }
}


/*
int count () const
*/
HB_FUNC_STATIC( QDOMNAMEDNODEMAP_COUNT )
{
  QDomNamedNodeMap * obj = (QDomNamedNodeMap *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->count (  ) );
  }
}


/*
bool isEmpty () const
*/
HB_FUNC_STATIC( QDOMNAMEDNODEMAP_ISEMPTY )
{
  QDomNamedNodeMap * obj = (QDomNamedNodeMap *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isEmpty (  ) );
  }
}


/*
QDomNode item ( int index ) const
*/
HB_FUNC_STATIC( QDOMNAMEDNODEMAP_ITEM )
{
  QDomNamedNodeMap * obj = (QDomNamedNodeMap *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDomNode * ptr = new QDomNode( obj->item ( (int) hb_parni(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QDOMNODE", true );
  }
}


/*
uint length () const
*/
HB_FUNC_STATIC( QDOMNAMEDNODEMAP_LENGTH )
{
  QDomNamedNodeMap * obj = (QDomNamedNodeMap *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->length (  ) );
  }
}


/*
QDomNode namedItem ( const QString & name ) const
*/
HB_FUNC_STATIC( QDOMNAMEDNODEMAP_NAMEDITEM )
{
  QDomNamedNodeMap * obj = (QDomNamedNodeMap *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QDomNode * ptr = new QDomNode( obj->namedItem ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QDOMNODE", true );
  }
}


/*
QDomNode namedItemNS ( const QString & nsURI, const QString & localName ) const
*/
HB_FUNC_STATIC( QDOMNAMEDNODEMAP_NAMEDITEMNS )
{
  QDomNamedNodeMap * obj = (QDomNamedNodeMap *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    QDomNode * ptr = new QDomNode( obj->namedItemNS ( par1, par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QDOMNODE", true );
  }
}


/*
QDomNode removeNamedItem ( const QString & name )
*/
HB_FUNC_STATIC( QDOMNAMEDNODEMAP_REMOVENAMEDITEM )
{
  QDomNamedNodeMap * obj = (QDomNamedNodeMap *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QDomNode * ptr = new QDomNode( obj->removeNamedItem ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QDOMNODE", true );
  }
}


/*
QDomNode removeNamedItemNS ( const QString & nsURI, const QString & localName )
*/
HB_FUNC_STATIC( QDOMNAMEDNODEMAP_REMOVENAMEDITEMNS )
{
  QDomNamedNodeMap * obj = (QDomNamedNodeMap *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    QDomNode * ptr = new QDomNode( obj->removeNamedItemNS ( par1, par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QDOMNODE", true );
  }
}


/*
QDomNode setNamedItem ( const QDomNode & newNode )
*/
HB_FUNC_STATIC( QDOMNAMEDNODEMAP_SETNAMEDITEM )
{
  QDomNamedNodeMap * obj = (QDomNamedNodeMap *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDomNode * par1 = (QDomNode *) _qtxhb_itemGetPtr(1);
    QDomNode * ptr = new QDomNode( obj->setNamedItem ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QDOMNODE", true );
  }
}


/*
QDomNode setNamedItemNS ( const QDomNode & newNode )
*/
HB_FUNC_STATIC( QDOMNAMEDNODEMAP_SETNAMEDITEMNS )
{
  QDomNamedNodeMap * obj = (QDomNamedNodeMap *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDomNode * par1 = (QDomNode *) _qtxhb_itemGetPtr(1);
    QDomNode * ptr = new QDomNode( obj->setNamedItemNS ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QDOMNODE", true );
  }
}


/*
int size () const
*/
HB_FUNC_STATIC( QDOMNAMEDNODEMAP_SIZE )
{
  QDomNamedNodeMap * obj = (QDomNamedNodeMap *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->size (  ) );
  }
}



HB_FUNC_STATIC( QDOMNAMEDNODEMAP_NEWFROM )
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

HB_FUNC_STATIC( QDOMNAMEDNODEMAP_NEWFROMOBJECT )
{
  //PHB_ITEM self = hb_stackSelfItem();
  //if( hb_pcount() == 1 && ISOBJECT(1) )
  //{
  //  PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
  //  hb_objSendMsg( self, "_pointer", 1, ptr );
  //  hb_itemRelease( ptr );
  //  PHB_ITEM des = hb_itemPutL( NULL, false );
  //  hb_objSendMsg( self, "_self_destruction", 1, des );
  //  hb_itemRelease( des );
  //}
  //hb_itemReturn( self );
  HB_FUNC_EXEC( QDOMNAMEDNODEMAP_NEWFROM );
}

HB_FUNC_STATIC( QDOMNAMEDNODEMAP_NEWFROMPOINTER )
{
  //PHB_ITEM self = hb_stackSelfItem();
  //if( hb_pcount() == 1 && ISPOINTER(1) )
  //{
  //  PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
  //  hb_objSendMsg( self, "_pointer", 1, ptr );
  //  hb_itemRelease( ptr );
  //  PHB_ITEM des = hb_itemPutL( NULL, false );
  //  hb_objSendMsg( self, "_self_destruction", 1, des );
  //  hb_itemRelease( des );
  //}
  //hb_itemReturn( self );
  HB_FUNC_EXEC( QDOMNAMEDNODEMAP_NEWFROM );
}

HB_FUNC_STATIC( QDOMNAMEDNODEMAP_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QDOMNAMEDNODEMAP_SETSELFDESTRUCTION )
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
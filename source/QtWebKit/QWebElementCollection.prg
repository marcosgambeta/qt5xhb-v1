/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWEBELEMENT
#endif

CLASS QWebElementCollection

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD append
   METHOD at
   METHOD count
   METHOD first
   METHOD last
   METHOD toList

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWebElementCollection
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QWebElementCollection>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QWebElementCollection>
#endif

/*
QWebElementCollection ()
*/
HB_FUNC_STATIC( QWEBELEMENTCOLLECTION_NEW1 )
{
  QWebElementCollection * o = new QWebElementCollection ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QWebElementCollection ( const QWebElement & contextElement, const QString & query )
*/
HB_FUNC_STATIC( QWEBELEMENTCOLLECTION_NEW2 )
{
  QWebElementCollection * o = new QWebElementCollection ( *PQWEBELEMENT(1), PQSTRING(2) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QWebElementCollection ( const QWebElementCollection & other )
*/
HB_FUNC_STATIC( QWEBELEMENTCOLLECTION_NEW3 )
{
  QWebElementCollection * o = new QWebElementCollection ( *PQWEBELEMENTCOLLECTION(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}


//[1]QWebElementCollection ()
//[2]QWebElementCollection ( const QWebElement & contextElement, const QString & query )
//[3]QWebElementCollection ( const QWebElementCollection & other )

HB_FUNC_STATIC( QWEBELEMENTCOLLECTION_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QWEBELEMENTCOLLECTION_NEW1 );
  }
  else if( ISNUMPAR(2) && ISQWEBELEMENT(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QWEBELEMENTCOLLECTION_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQWEBELEMENTCOLLECTION(1) )
  {
    HB_FUNC_EXEC( QWEBELEMENTCOLLECTION_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QWEBELEMENTCOLLECTION_DELETE )
{
  QWebElementCollection * obj = (QWebElementCollection *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void append ( const QWebElementCollection & other )
*/
HB_FUNC_STATIC( QWEBELEMENTCOLLECTION_APPEND )
{
  QWebElementCollection * obj = (QWebElementCollection *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->append ( *PQWEBELEMENTCOLLECTION(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QWebElement at ( int i ) const
*/
HB_FUNC_STATIC( QWEBELEMENTCOLLECTION_AT )
{
  QWebElementCollection * obj = (QWebElementCollection *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebElement * ptr = new QWebElement( obj->at ( PINT(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QWEBELEMENT", true );
  }
}






/*
int count () const
*/
HB_FUNC_STATIC( QWEBELEMENTCOLLECTION_COUNT )
{
  QWebElementCollection * obj = (QWebElementCollection *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->count () );
  }
}




/*
QWebElement first () const
*/
HB_FUNC_STATIC( QWEBELEMENTCOLLECTION_FIRST )
{
  QWebElementCollection * obj = (QWebElementCollection *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebElement * ptr = new QWebElement( obj->first () );
    _qt5xhb_createReturnClass ( ptr, "QWEBELEMENT", true );
  }
}


/*
QWebElement last () const
*/
HB_FUNC_STATIC( QWEBELEMENTCOLLECTION_LAST )
{
  QWebElementCollection * obj = (QWebElementCollection *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebElement * ptr = new QWebElement( obj->last () );
    _qt5xhb_createReturnClass ( ptr, "QWEBELEMENT", true );
  }
}


/*
QList<QWebElement> toList () const
*/
HB_FUNC_STATIC( QWEBELEMENTCOLLECTION_TOLIST )
{
  QWebElementCollection * obj = (QWebElementCollection *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QWebElement> list = obj->toList ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QWEBELEMENT" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QWebElement *) new QWebElement ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        PHB_ITEM pDestroy = hb_itemNew( NULL );
        hb_itemPutL( pDestroy, true );
        hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
        hb_itemRelease( pDestroy );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}



HB_FUNC_STATIC( QWEBELEMENTCOLLECTION_NEWFROM )
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

HB_FUNC_STATIC( QWEBELEMENTCOLLECTION_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QWEBELEMENTCOLLECTION_NEWFROM );
}

HB_FUNC_STATIC( QWEBELEMENTCOLLECTION_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QWEBELEMENTCOLLECTION_NEWFROM );
}

HB_FUNC_STATIC( QWEBELEMENTCOLLECTION_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QWEBELEMENTCOLLECTION_SETSELFDESTRUCTION )
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
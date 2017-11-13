/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QHELPSEARCHQUERY
#endif

CLASS QHelpSearchQueryWidget INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD query

   METHOD onSearch

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QHelpSearchQueryWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QHelpSearchQueryWidget>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QHelpSearchQueryWidget>
#endif

/*
QHelpSearchQueryWidget ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QHELPSEARCHQUERYWIDGET_NEW )
{
  QHelpSearchQueryWidget * o = new QHelpSearchQueryWidget ( OPQWIDGET(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QHELPSEARCHQUERYWIDGET_DELETE )
{
  QHelpSearchQueryWidget * obj = (QHelpSearchQueryWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QList<QHelpSearchQuery> query () const
*/
HB_FUNC_STATIC( QHELPSEARCHQUERYWIDGET_QUERY )
{
  QHelpSearchQueryWidget * obj = (QHelpSearchQueryWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QHelpSearchQuery> list = obj->query ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QHELPSEARCHQUERY" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QHelpSearchQuery *) new QHelpSearchQuery ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}




#pragma ENDDUMP

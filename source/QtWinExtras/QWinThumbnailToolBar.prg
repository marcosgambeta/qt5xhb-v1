/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWINDOW
REQUEST QWINTHUMBNAILTOOLBUTTON
#endif

CLASS QWinThumbnailToolBar INHERIT QObject

   DATA class_id INIT Class_Id_QWinThumbnailToolBar
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD window
   METHOD setWindow
   METHOD addButton
   METHOD removeButton
   METHOD setButtons
   METHOD buttons
   METHOD count
   METHOD clear

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWinThumbnailToolBar
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QWinThumbnailToolBar>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QWinThumbnailToolBar>
#endif
#endif

/*
explicit QWinThumbnailToolBar(QObject *parent = 0)
*/
HB_FUNC_STATIC( QWINTHUMBNAILTOOLBAR_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
  QWinThumbnailToolBar * o = new QWinThumbnailToolBar ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}


HB_FUNC_STATIC( QWINTHUMBNAILTOOLBAR_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinThumbnailToolBar * obj = (QWinThumbnailToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QWindow *window() const
*/
HB_FUNC_STATIC( QWINTHUMBNAILTOOLBAR_WINDOW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinThumbnailToolBar * obj = (QWinThumbnailToolBar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWindow * ptr = obj->window (  );
    _qt5xhb_createReturnClass ( ptr, "QWINDOW" );
  }
#endif
}

/*
void setWindow(QWindow *window)
*/
HB_FUNC_STATIC( QWINTHUMBNAILTOOLBAR_SETWINDOW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinThumbnailToolBar * obj = (QWinThumbnailToolBar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWindow * par1 = (QWindow *) _qt5xhb_itemGetPtr(1);
    obj->setWindow ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void addButton(QWinThumbnailToolButton *button)
*/
HB_FUNC_STATIC( QWINTHUMBNAILTOOLBAR_ADDBUTTON )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinThumbnailToolBar * obj = (QWinThumbnailToolBar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWinThumbnailToolButton * par1 = (QWinThumbnailToolButton *) _qt5xhb_itemGetPtr(1);
    obj->addButton ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void removeButton(QWinThumbnailToolButton *button)
*/
HB_FUNC_STATIC( QWINTHUMBNAILTOOLBAR_REMOVEBUTTON )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinThumbnailToolBar * obj = (QWinThumbnailToolBar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWinThumbnailToolButton * par1 = (QWinThumbnailToolButton *) _qt5xhb_itemGetPtr(1);
    obj->removeButton ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void setButtons(const QList<QWinThumbnailToolButton *> &buttons)
*/
HB_FUNC_STATIC( QWINTHUMBNAILTOOLBAR_SETBUTTONS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinThumbnailToolBar * obj = (QWinThumbnailToolBar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QWinThumbnailToolButton *> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << (QWinThumbnailToolButton *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->setButtons ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QList<QWinThumbnailToolButton *> buttons() const
*/
HB_FUNC_STATIC( QWINTHUMBNAILTOOLBAR_BUTTONS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinThumbnailToolBar * obj = (QWinThumbnailToolBar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QWinThumbnailToolButton *> list = obj->buttons (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QWINTHUMBNAILTOOLBUTTON" );
    #else
    pDynSym = hb_dynsymFindName( "QWINTHUMBNAILTOOLBUTTON" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
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
        hb_itemPutPtr( pItem, (QWinThumbnailToolButton *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
#endif
}


/*
int count() const
*/
HB_FUNC_STATIC( QWINTHUMBNAILTOOLBAR_COUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinThumbnailToolBar * obj = (QWinThumbnailToolBar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->count (  ) );
  }
#endif
}


/*
void clear()
*/
HB_FUNC_STATIC( QWINTHUMBNAILTOOLBAR_CLEAR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinThumbnailToolBar * obj = (QWinThumbnailToolBar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



#pragma ENDDUMP

/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QSIZE
REQUEST QPIXMAP

CLASS QIconEngine

   DATA pointer
   DATA class_id INIT Class_Id_QIconEngine
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD actualSize
   METHOD addFile
   METHOD addPixmap
   METHOD availableSizes
   METHOD clone
   METHOD iconName
   METHOD key
   METHOD paint
   METHOD pixmap
   METHOD read
   METHOD virtual_hook
   METHOD write
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QIconEngine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QIconEngine>
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
#include <QIconEngine>
#endif
#endif

HB_FUNC_STATIC( QICONENGINE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QIconEngine * obj = (QIconEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QSize actualSize(const QSize & size, QIcon::Mode mode, QIcon::State state)
*/
HB_FUNC_STATIC( QICONENGINE_ACTUALSIZE )
{
  QIconEngine * obj = (QIconEngine *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * par1 = (QSize *) _qtxhb_itemGetPtr(1);
    int par2 = hb_parni(2);
    int par3 = hb_parni(3);
    QSize * ptr = new QSize( obj->actualSize ( *par1,  (QIcon::Mode) par2,  (QIcon::State) par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
virtual void addFile(const QString & fileName, const QSize & size, QIcon::Mode mode, QIcon::State state)
*/
HB_FUNC_STATIC( QICONENGINE_ADDFILE )
{
  QIconEngine * obj = (QIconEngine *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QSize * par2 = (QSize *) _qtxhb_itemGetPtr(2);
    int par3 = hb_parni(3);
    int par4 = hb_parni(4);
    obj->addFile ( par1, *par2,  (QIcon::Mode) par3,  (QIcon::State) par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void addPixmap(const QPixmap & pixmap, QIcon::Mode mode, QIcon::State state)
*/
HB_FUNC_STATIC( QICONENGINE_ADDPIXMAP )
{
  QIconEngine * obj = (QIconEngine *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPixmap * par1 = (QPixmap *) _qtxhb_itemGetPtr(1);
    int par2 = hb_parni(2);
    int par3 = hb_parni(3);
    obj->addPixmap ( *par1,  (QIcon::Mode) par2,  (QIcon::State) par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QList<QSize> availableSizes(QIcon::Mode mode = QIcon::Normal, QIcon::State state = QIcon::Off) const
*/
HB_FUNC_STATIC( QICONENGINE_AVAILABLESIZES )
{
  QIconEngine * obj = (QIconEngine *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QIcon::Normal : hb_parni(1);
    int par2 = ISNIL(2)? (int) QIcon::Off : hb_parni(2);
    QList<QSize> list = obj->availableSizes (  (QIcon::Mode) par1,  (QIcon::State) par2 );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QSIZE" );
    #else
    pDynSym = hb_dynsymFindName( "QSIZE" );
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
        hb_itemPutPtr( pItem, (QSize *) new QSize ( list[i] ) );
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


/*
virtual QIconEngine * clone() const = 0
*/
HB_FUNC_STATIC( QICONENGINE_CLONE )
{
  QIconEngine * obj = (QIconEngine *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIconEngine * ptr = obj->clone (  );
    _qt4xhb_createReturnClass ( ptr, "QICONENGINE" );
  }
}


/*
virtual QString iconName() const
*/
HB_FUNC_STATIC( QICONENGINE_ICONNAME )
{
  QIconEngine * obj = (QIconEngine *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->iconName (  ).toLatin1().data() );
  }
}


/*
virtual QString key() const
*/
HB_FUNC_STATIC( QICONENGINE_KEY )
{
  QIconEngine * obj = (QIconEngine *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->key (  ).toLatin1().data() );
  }
}


/*
virtual void paint(QPainter * painter, const QRect & rect, QIcon::Mode mode, QIcon::State state) = 0
*/
HB_FUNC_STATIC( QICONENGINE_PAINT )
{
  QIconEngine * obj = (QIconEngine *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPainter * par1 = (QPainter *) _qtxhb_itemGetPtr(1);
    QRect * par2 = (QRect *) _qtxhb_itemGetPtr(2);
    int par3 = hb_parni(3);
    int par4 = hb_parni(4);
    obj->paint ( par1, *par2,  (QIcon::Mode) par3,  (QIcon::State) par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QPixmap pixmap(const QSize & size, QIcon::Mode mode, QIcon::State state)
*/
HB_FUNC_STATIC( QICONENGINE_PIXMAP )
{
  QIconEngine * obj = (QIconEngine *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * par1 = (QSize *) _qtxhb_itemGetPtr(1);
    int par2 = hb_parni(2);
    int par3 = hb_parni(3);
    QPixmap * ptr = new QPixmap( obj->pixmap ( *par1,  (QIcon::Mode) par2,  (QIcon::State) par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}


/*
virtual bool read(QDataStream & in)
*/
HB_FUNC_STATIC( QICONENGINE_READ )
{
  QIconEngine * obj = (QIconEngine *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDataStream * par1 = (QDataStream *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->read ( *par1 ) );
  }
}


/*
virtual void virtual_hook(int id, void * data)
*/
HB_FUNC_STATIC( QICONENGINE_VIRTUAL_HOOK )
{
  QIconEngine * obj = (QIconEngine *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    void * par2 = (void *) hb_parptr(2);
    obj->virtual_hook ( (int) hb_parni(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool write(QDataStream & out) const
*/
HB_FUNC_STATIC( QICONENGINE_WRITE )
{
  QIconEngine * obj = (QIconEngine *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDataStream * par1 = (QDataStream *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->write ( *par1 ) );
  }
}



HB_FUNC_STATIC( QICONENGINE_NEWFROM )
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

HB_FUNC_STATIC( QICONENGINE_NEWFROMOBJECT )
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
  HB_FUNC_EXEC( QICONENGINE_NEWFROM );
}

HB_FUNC_STATIC( QICONENGINE_NEWFROMPOINTER )
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
  HB_FUNC_EXEC( QICONENGINE_NEWFROM );
}

HB_FUNC_STATIC( QICONENGINE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QICONENGINE_SETSELFDESTRUCTION )
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
/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGESTURE
REQUEST QPOINTF
REQUEST QWIDGET
#endif

CLASS QGestureEvent INHERIT QEvent

   DATA class_id INIT Class_Id_QGestureEvent
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD accept1
   METHOD accept2
   METHOD accept3
   METHOD accept
   METHOD activeGestures
   METHOD canceledGestures
   METHOD gesture
   METHOD gestures
   METHOD ignore1
   METHOD ignore2
   METHOD ignore3
   METHOD ignore
   METHOD isAccepted1
   METHOD isAccepted2
   METHOD isAccepted3
   METHOD isAccepted
   METHOD mapToGraphicsScene
   METHOD setAccepted1
   METHOD setAccepted2
   METHOD setAccepted3
   METHOD setAccepted
   METHOD widget
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGestureEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QGestureEvent>
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

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QGestureEvent>
#endif

/*
QGestureEvent ( const QList<QGesture *> & gestures )
*/
HB_FUNC_STATIC( QGESTUREEVENT_NEW )
{
QList<QGesture *> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
par1 << (QGesture *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );}
  QGestureEvent * o = new QGestureEvent ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QGESTUREEVENT_DELETE )
{
  QGestureEvent * obj = (QGestureEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void accept ()
*/
HB_FUNC_STATIC( QGESTUREEVENT_ACCEPT1 )
{
  QGestureEvent * obj = (QGestureEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->accept (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void accept ( QGesture * gesture )
*/
HB_FUNC_STATIC( QGESTUREEVENT_ACCEPT2 )
{
  QGestureEvent * obj = (QGestureEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGesture * par1 = (QGesture *) _qt5xhb_itemGetPtr(1);
    obj->accept ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void accept ( Qt::GestureType gestureType )
*/
HB_FUNC_STATIC( QGESTUREEVENT_ACCEPT3 )
{
  QGestureEvent * obj = (QGestureEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->accept (  (Qt::GestureType) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void accept ()
//[2]void accept ( QGesture * gesture )
//[3]void accept ( Qt::GestureType gestureType )

HB_FUNC_STATIC( QGESTUREEVENT_ACCEPT )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QGESTUREEVENT_ACCEPT1 );
  }
  else if( ISNUMPAR(1) && ISOBJECT(1) )
  {
    HB_FUNC_EXEC( QGESTUREEVENT_ACCEPT2 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QGESTUREEVENT_ACCEPT3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QList<QGesture *> activeGestures () const
*/
HB_FUNC_STATIC( QGESTUREEVENT_ACTIVEGESTURES )
{
  QGestureEvent * obj = (QGestureEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QGesture *> list = obj->activeGestures (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QGESTURE" );
    #else
    pDynSym = hb_dynsymFindName( "QGESTURE" );
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
        hb_itemPutPtr( pItem, (QGesture *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
QList<QGesture *> canceledGestures () const
*/
HB_FUNC_STATIC( QGESTUREEVENT_CANCELEDGESTURES )
{
  QGestureEvent * obj = (QGestureEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QGesture *> list = obj->canceledGestures (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QGESTURE" );
    #else
    pDynSym = hb_dynsymFindName( "QGESTURE" );
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
        hb_itemPutPtr( pItem, (QGesture *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
QGesture * gesture ( Qt::GestureType type ) const
*/
HB_FUNC_STATIC( QGESTUREEVENT_GESTURE )
{
  QGestureEvent * obj = (QGestureEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QGesture * ptr = obj->gesture (  (Qt::GestureType) par1 );
    _qt5xhb_createReturnClass ( ptr, "QGESTURE" );
  }
}


/*
QList<QGesture *> gestures () const
*/
HB_FUNC_STATIC( QGESTUREEVENT_GESTURES )
{
  QGestureEvent * obj = (QGestureEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QGesture *> list = obj->gestures (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QGESTURE" );
    #else
    pDynSym = hb_dynsymFindName( "QGESTURE" );
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
        hb_itemPutPtr( pItem, (QGesture *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
void ignore ()
*/
HB_FUNC_STATIC( QGESTUREEVENT_IGNORE1 )
{
  QGestureEvent * obj = (QGestureEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->ignore (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void ignore ( QGesture * gesture )
*/
HB_FUNC_STATIC( QGESTUREEVENT_IGNORE2 )
{
  QGestureEvent * obj = (QGestureEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGesture * par1 = (QGesture *) _qt5xhb_itemGetPtr(1);
    obj->ignore ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void ignore ( Qt::GestureType gestureType )
*/
HB_FUNC_STATIC( QGESTUREEVENT_IGNORE3 )
{
  QGestureEvent * obj = (QGestureEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->ignore (  (Qt::GestureType) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void ignore ()
//[2]void ignore ( QGesture * gesture )
//[3]void ignore ( Qt::GestureType gestureType )

HB_FUNC_STATIC( QGESTUREEVENT_IGNORE )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QGESTUREEVENT_IGNORE1 );
  }
  else if( ISNUMPAR(1) && ISOBJECT(1) )
  {
    HB_FUNC_EXEC( QGESTUREEVENT_IGNORE2 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QGESTUREEVENT_IGNORE3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool isAccepted () const
*/
HB_FUNC_STATIC( QGESTUREEVENT_ISACCEPTED1 )
{
  QGestureEvent * obj = (QGestureEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isAccepted (  ) );
  }
}

/*
bool isAccepted ( QGesture * gesture ) const
*/
HB_FUNC_STATIC( QGESTUREEVENT_ISACCEPTED2 )
{
  QGestureEvent * obj = (QGestureEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGesture * par1 = (QGesture *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->isAccepted ( par1 ) );
  }
}

/*
bool isAccepted ( Qt::GestureType gestureType ) const
*/
HB_FUNC_STATIC( QGESTUREEVENT_ISACCEPTED3 )
{
  QGestureEvent * obj = (QGestureEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->isAccepted (  (Qt::GestureType) par1 ) );
  }
}


//[1]bool isAccepted () const
//[2]bool isAccepted ( QGesture * gesture ) const
//[3]bool isAccepted ( Qt::GestureType gestureType ) const

HB_FUNC_STATIC( QGESTUREEVENT_ISACCEPTED )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QGESTUREEVENT_ISACCEPTED1 );
  }
  else if( ISNUMPAR(1) && ISOBJECT(1) )
  {
    HB_FUNC_EXEC( QGESTUREEVENT_ISACCEPTED2 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QGESTUREEVENT_ISACCEPTED3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QPointF mapToGraphicsScene ( const QPointF & gesturePoint ) const
*/
HB_FUNC_STATIC( QGESTUREEVENT_MAPTOGRAPHICSSCENE )
{
  QGestureEvent * obj = (QGestureEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
    QPointF * ptr = new QPointF( obj->mapToGraphicsScene ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
void setAccepted ( bool accepted )
*/
HB_FUNC_STATIC( QGESTUREEVENT_SETACCEPTED1 )
{
  QGestureEvent * obj = (QGestureEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAccepted ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAccepted ( QGesture * gesture, bool value )
*/
HB_FUNC_STATIC( QGESTUREEVENT_SETACCEPTED2 )
{
  QGestureEvent * obj = (QGestureEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGesture * par1 = (QGesture *) _qt5xhb_itemGetPtr(1);
    obj->setAccepted ( par1, (bool) hb_parl(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAccepted ( Qt::GestureType gestureType, bool value )
*/
HB_FUNC_STATIC( QGESTUREEVENT_SETACCEPTED3 )
{
  QGestureEvent * obj = (QGestureEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setAccepted (  (Qt::GestureType) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setAccepted ( bool accepted )
//[2]void setAccepted ( QGesture * gesture, bool value )
//[3]void setAccepted ( Qt::GestureType gestureType, bool value )

HB_FUNC_STATIC( QGESTUREEVENT_SETACCEPTED )
{
  if( ISNUMPAR(1) && ISLOG(1) )
  {
    HB_FUNC_EXEC( QGESTUREEVENT_SETACCEPTED1 );
  }
  else if( ISNUMPAR(2) && ISOBJECT(1) && ISLOG(2) )
  {
    HB_FUNC_EXEC( QGESTUREEVENT_SETACCEPTED2 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISLOG(2) )
  {
    HB_FUNC_EXEC( QGESTUREEVENT_SETACCEPTED3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QWidget * widget () const
*/
HB_FUNC_STATIC( QGESTUREEVENT_WIDGET )
{
  QGestureEvent * obj = (QGestureEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * ptr = obj->widget (  );
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}



#pragma ENDDUMP

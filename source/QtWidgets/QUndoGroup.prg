/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QUNDOSTACK
REQUEST QACTION
#endif

CLASS QUndoGroup INHERIT QObject

   DATA class_id INIT Class_Id_QUndoGroup
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD activeStack
   METHOD addStack
   METHOD canRedo
   METHOD canUndo
   METHOD createRedoAction
   METHOD createUndoAction
   METHOD isClean
   METHOD redoText
   METHOD removeStack
   METHOD stacks
   METHOD undoText
   METHOD redo
   METHOD setActiveStack
   METHOD undo
   METHOD onActiveStackChanged
   METHOD onCanRedoChanged
   METHOD onCanUndoChanged
   METHOD onCleanChanged
   METHOD onIndexChanged
   METHOD onRedoTextChanged
   METHOD onUndoTextChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QUndoGroup
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QUndoGroup>
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
#include <QUndoGroup>
#endif

/*
QUndoGroup(QObject * parent = 0)
*/
HB_FUNC_STATIC( QUNDOGROUP_NEW )
{
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
  QUndoGroup * o = new QUndoGroup ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QUNDOGROUP_DELETE )
{
  QUndoGroup * obj = (QUndoGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QUndoStack * activeStack() const
*/
HB_FUNC_STATIC( QUNDOGROUP_ACTIVESTACK )
{
  QUndoGroup * obj = (QUndoGroup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUndoStack * ptr = obj->activeStack (  );
    _qt5xhb_createReturnClass ( ptr, "QUNDOSTACK" );
  }
}


/*
void addStack(QUndoStack * stack)
*/
HB_FUNC_STATIC( QUNDOGROUP_ADDSTACK )
{
  QUndoGroup * obj = (QUndoGroup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUndoStack * par1 = (QUndoStack *) _qt5xhb_itemGetPtr(1);
    obj->addStack ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool canRedo() const
*/
HB_FUNC_STATIC( QUNDOGROUP_CANREDO )
{
  QUndoGroup * obj = (QUndoGroup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->canRedo (  ) );
  }
}


/*
bool canUndo() const
*/
HB_FUNC_STATIC( QUNDOGROUP_CANUNDO )
{
  QUndoGroup * obj = (QUndoGroup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->canUndo (  ) );
  }
}


/*
QAction * createRedoAction(QObject * parent, const QString & prefix = QString()) const
*/
HB_FUNC_STATIC( QUNDOGROUP_CREATEREDOACTION )
{
  QUndoGroup * obj = (QUndoGroup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * par1 = (QObject *) _qt5xhb_itemGetPtr(1);
    QString par2 = ISNIL(2)? QString() : QLatin1String( hb_parc(2) );
    QAction * ptr = obj->createRedoAction ( par1, par2 );
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}


/*
QAction * createUndoAction(QObject * parent, const QString & prefix = QString()) const
*/
HB_FUNC_STATIC( QUNDOGROUP_CREATEUNDOACTION )
{
  QUndoGroup * obj = (QUndoGroup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * par1 = (QObject *) _qt5xhb_itemGetPtr(1);
    QString par2 = ISNIL(2)? QString() : QLatin1String( hb_parc(2) );
    QAction * ptr = obj->createUndoAction ( par1, par2 );
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}


/*
bool isClean() const
*/
HB_FUNC_STATIC( QUNDOGROUP_ISCLEAN )
{
  QUndoGroup * obj = (QUndoGroup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isClean (  ) );
  }
}


/*
QString redoText() const
*/
HB_FUNC_STATIC( QUNDOGROUP_REDOTEXT )
{
  QUndoGroup * obj = (QUndoGroup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->redoText (  ).toLatin1().data() );
  }
}


/*
void removeStack(QUndoStack * stack)
*/
HB_FUNC_STATIC( QUNDOGROUP_REMOVESTACK )
{
  QUndoGroup * obj = (QUndoGroup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUndoStack * par1 = (QUndoStack *) _qt5xhb_itemGetPtr(1);
    obj->removeStack ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QList<QUndoStack *> stacks() const
*/
HB_FUNC_STATIC( QUNDOGROUP_STACKS )
{
  QUndoGroup * obj = (QUndoGroup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QUndoStack *> list = obj->stacks (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QUNDOSTACK" );
    #else
    pDynSym = hb_dynsymFindName( "QUNDOSTACK" );
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
        hb_itemPutPtr( pItem, (QUndoStack *) list[i] );
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
QString undoText() const
*/
HB_FUNC_STATIC( QUNDOGROUP_UNDOTEXT )
{
  QUndoGroup * obj = (QUndoGroup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->undoText (  ).toLatin1().data() );
  }
}


/*
void redo()
*/
HB_FUNC_STATIC( QUNDOGROUP_REDO )
{
  QUndoGroup * obj = (QUndoGroup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->redo (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setActiveStack(QUndoStack * stack)
*/
HB_FUNC_STATIC( QUNDOGROUP_SETACTIVESTACK )
{
  QUndoGroup * obj = (QUndoGroup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUndoStack * par1 = (QUndoStack *) _qt5xhb_itemGetPtr(1);
    obj->setActiveStack ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void undo()
*/
HB_FUNC_STATIC( QUNDOGROUP_UNDO )
{
  QUndoGroup * obj = (QUndoGroup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->undo (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP

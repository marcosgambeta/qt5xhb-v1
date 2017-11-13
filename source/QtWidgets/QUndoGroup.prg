/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QUNDOSTACK
REQUEST QACTION
#endif

CLASS QUndoGroup INHERIT QObject

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

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QUndoGroup>
#endif

/*
QUndoGroup(QObject * parent = 0)
*/
HB_FUNC_STATIC( QUNDOGROUP_NEW )
{
  QUndoGroup * o = new QUndoGroup ( OPQOBJECT(1,0) );
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
    QUndoStack * ptr = obj->activeStack ();
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
    obj->addStack ( PQUNDOSTACK(1) );
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
    RBOOL( obj->canRedo () );
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
    RBOOL( obj->canUndo () );
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
    QAction * ptr = obj->createRedoAction ( PQOBJECT(1), OPQSTRING(2,QString()) );
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
    QAction * ptr = obj->createUndoAction ( PQOBJECT(1), OPQSTRING(2,QString()) );
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
    RBOOL( obj->isClean () );
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
    RQSTRING( obj->redoText () );
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
    obj->removeStack ( PQUNDOSTACK(1) );
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
    QList<QUndoStack *> list = obj->stacks ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QUNDOSTACK" );
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
    RQSTRING( obj->undoText () );
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
    obj->redo ();
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
    obj->setActiveStack ( PQUNDOSTACK(1) );
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
    obj->undo ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP

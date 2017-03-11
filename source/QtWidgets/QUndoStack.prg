/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QUNDOCOMMAND
REQUEST QACTION
#endif

CLASS QUndoStack INHERIT QObject

   DATA class_id INIT Class_Id_QUndoStack
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD beginMacro
   METHOD canRedo
   METHOD canUndo
   METHOD cleanIndex
   METHOD clear
   METHOD command
   METHOD count
   METHOD createRedoAction
   METHOD createUndoAction
   METHOD endMacro
   METHOD index
   METHOD isActive
   METHOD isClean
   METHOD push
   METHOD redoText
   METHOD setUndoLimit
   METHOD text
   METHOD undoLimit
   METHOD undoText
   METHOD redo
   METHOD setActive
   METHOD setClean
   METHOD setIndex
   METHOD undo
   METHOD onCanRedoChanged
   METHOD onCanUndoChanged
   METHOD onCleanChanged
   METHOD onIndexChanged
   METHOD onRedoTextChanged
   METHOD onUndoTextChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QUndoStack
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QUndoStack>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QUndoStack>
#endif

/*
QUndoStack(QObject * parent = 0)
*/
HB_FUNC_STATIC( QUNDOSTACK_NEW )
{
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
  QUndoStack * o = new QUndoStack ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QUNDOSTACK_DELETE )
{
  QUndoStack * obj = (QUndoStack *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void beginMacro(const QString & text)
*/
HB_FUNC_STATIC( QUNDOSTACK_BEGINMACRO )
{
  QUndoStack * obj = (QUndoStack *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->beginMacro ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool canRedo() const
*/
HB_FUNC_STATIC( QUNDOSTACK_CANREDO )
{
  QUndoStack * obj = (QUndoStack *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->canRedo (  ) );
  }
}


/*
bool canUndo() const
*/
HB_FUNC_STATIC( QUNDOSTACK_CANUNDO )
{
  QUndoStack * obj = (QUndoStack *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->canUndo (  ) );
  }
}


/*
int cleanIndex() const
*/
HB_FUNC_STATIC( QUNDOSTACK_CLEANINDEX )
{
  QUndoStack * obj = (QUndoStack *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->cleanIndex (  ) );
  }
}


/*
void clear()
*/
HB_FUNC_STATIC( QUNDOSTACK_CLEAR )
{
  QUndoStack * obj = (QUndoStack *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
const QUndoCommand * command(int index) const
*/
HB_FUNC_STATIC( QUNDOSTACK_COMMAND )
{
  QUndoStack * obj = (QUndoStack *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QUndoCommand * ptr = obj->command ( (int) hb_parni(1) );
    _qt5xhb_createReturnClass ( ptr, "QUNDOCOMMAND" );
  }
}


/*
int count() const
*/
HB_FUNC_STATIC( QUNDOSTACK_COUNT )
{
  QUndoStack * obj = (QUndoStack *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->count (  ) );
  }
}


/*
QAction * createRedoAction(QObject * parent, const QString & prefix = QString()) const
*/
HB_FUNC_STATIC( QUNDOSTACK_CREATEREDOACTION )
{
  QUndoStack * obj = (QUndoStack *) _qt5xhb_itemGetPtrStackSelfItem();
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
HB_FUNC_STATIC( QUNDOSTACK_CREATEUNDOACTION )
{
  QUndoStack * obj = (QUndoStack *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * par1 = (QObject *) _qt5xhb_itemGetPtr(1);
    QString par2 = ISNIL(2)? QString() : QLatin1String( hb_parc(2) );
    QAction * ptr = obj->createUndoAction ( par1, par2 );
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}


/*
void endMacro()
*/
HB_FUNC_STATIC( QUNDOSTACK_ENDMACRO )
{
  QUndoStack * obj = (QUndoStack *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->endMacro (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int index() const
*/
HB_FUNC_STATIC( QUNDOSTACK_INDEX )
{
  QUndoStack * obj = (QUndoStack *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->index (  ) );
  }
}


/*
bool isActive() const
*/
HB_FUNC_STATIC( QUNDOSTACK_ISACTIVE )
{
  QUndoStack * obj = (QUndoStack *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isActive (  ) );
  }
}


/*
bool isClean() const
*/
HB_FUNC_STATIC( QUNDOSTACK_ISCLEAN )
{
  QUndoStack * obj = (QUndoStack *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isClean (  ) );
  }
}


/*
void push(QUndoCommand * cmd)
*/
HB_FUNC_STATIC( QUNDOSTACK_PUSH )
{
  QUndoStack * obj = (QUndoStack *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUndoCommand * par1 = (QUndoCommand *) _qt5xhb_itemGetPtr(1);
    obj->push ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString redoText() const
*/
HB_FUNC_STATIC( QUNDOSTACK_REDOTEXT )
{
  QUndoStack * obj = (QUndoStack *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->redoText (  ).toLatin1().data() );
  }
}


/*
void setUndoLimit(int limit)
*/
HB_FUNC_STATIC( QUNDOSTACK_SETUNDOLIMIT )
{
  QUndoStack * obj = (QUndoStack *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setUndoLimit ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString text(int idx) const
*/
HB_FUNC_STATIC( QUNDOSTACK_TEXT )
{
  QUndoStack * obj = (QUndoStack *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->text ( (int) hb_parni(1) ).toLatin1().data() );
  }
}


/*
int undoLimit() const
*/
HB_FUNC_STATIC( QUNDOSTACK_UNDOLIMIT )
{
  QUndoStack * obj = (QUndoStack *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->undoLimit (  ) );
  }
}


/*
QString undoText() const
*/
HB_FUNC_STATIC( QUNDOSTACK_UNDOTEXT )
{
  QUndoStack * obj = (QUndoStack *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->undoText (  ).toLatin1().data() );
  }
}


/*
void redo()
*/
HB_FUNC_STATIC( QUNDOSTACK_REDO )
{
  QUndoStack * obj = (QUndoStack *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->redo (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setActive(bool active = true)
*/
HB_FUNC_STATIC( QUNDOSTACK_SETACTIVE )
{
  QUndoStack * obj = (QUndoStack *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setActive ( (bool) ISNIL(1)? true : hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setClean()
*/
HB_FUNC_STATIC( QUNDOSTACK_SETCLEAN )
{
  QUndoStack * obj = (QUndoStack *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setClean (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setIndex(int idx)
*/
HB_FUNC_STATIC( QUNDOSTACK_SETINDEX )
{
  QUndoStack * obj = (QUndoStack *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setIndex ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void undo()
*/
HB_FUNC_STATIC( QUNDOSTACK_UNDO )
{
  QUndoStack * obj = (QUndoStack *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->undo (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}





#pragma ENDDUMP

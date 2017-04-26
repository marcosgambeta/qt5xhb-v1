/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QUndoCommand

   DATA pointer
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD actionText
   METHOD child
   METHOD childCount
   METHOD id
   METHOD mergeWith
   METHOD redo
   METHOD setText
   METHOD text
   METHOD undo

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QUndoCommand
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QUndoCommand>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QUndoCommand>
#endif

/*
QUndoCommand(QUndoCommand * parent = 0)
*/
void QUndoCommand_new1 ()
{
  QUndoCommand * par1 = ISNIL(1)? 0 : (QUndoCommand *) _qt5xhb_itemGetPtr(1);
  QUndoCommand * o = new QUndoCommand ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QUndoCommand(const QString & text, QUndoCommand * parent = 0)
*/
void QUndoCommand_new2 ()
{
  QString par1 = QLatin1String( hb_parc(1) );
  QUndoCommand * par2 = ISNIL(2)? 0 : (QUndoCommand *) _qt5xhb_itemGetPtr(2);
  QUndoCommand * o = new QUndoCommand ( par1, par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QUndoCommand(QUndoCommand * parent = 0)
//[2]QUndoCommand(const QString & text, QUndoCommand * parent = 0)

HB_FUNC_STATIC( QUNDOCOMMAND_NEW )
{
  if( ISBETWEEN(0,1) && (ISQUNDOCOMMAND(1)||ISNIL(1)) )
  {
    QUndoCommand_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQUNDOCOMMAND(2)||ISNIL(2)) )
  {
    QUndoCommand_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QUNDOCOMMAND_DELETE )
{
  QUndoCommand * obj = (QUndoCommand *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QString actionText() const
*/
HB_FUNC_STATIC( QUNDOCOMMAND_ACTIONTEXT )
{
  QUndoCommand * obj = (QUndoCommand *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( (const char *) obj->actionText (  ).toLatin1().data() );
  }
}

/*
const QUndoCommand * child(int index) const
*/
HB_FUNC_STATIC( QUNDOCOMMAND_CHILD )
{
  QUndoCommand * obj = (QUndoCommand *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      const QUndoCommand * ptr = obj->child ( (int) hb_parni(1) );
      _qt5xhb_createReturnClass ( ptr, "QUNDOCOMMAND" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int childCount() const
*/
HB_FUNC_STATIC( QUNDOCOMMAND_CHILDCOUNT )
{
  QUndoCommand * obj = (QUndoCommand *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->childCount (  ) );
  }
}

/*
virtual int id() const
*/
HB_FUNC_STATIC( QUNDOCOMMAND_ID )
{
  QUndoCommand * obj = (QUndoCommand *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->id (  ) );
  }
}

/*
virtual bool mergeWith(const QUndoCommand * command)
*/
HB_FUNC_STATIC( QUNDOCOMMAND_MERGEWITH )
{
  QUndoCommand * obj = (QUndoCommand *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQUNDOCOMMAND(1) )
    {
      const QUndoCommand * par1 = (const QUndoCommand *) _qt5xhb_itemGetPtr(1);
      hb_retl( obj->mergeWith ( par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void redo()
*/
HB_FUNC_STATIC( QUNDOCOMMAND_REDO )
{
  QUndoCommand * obj = (QUndoCommand *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->redo (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setText(const QString & text)
*/
HB_FUNC_STATIC( QUNDOCOMMAND_SETTEXT )
{
  QUndoCommand * obj = (QUndoCommand *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      QString par1 = QLatin1String( hb_parc(1) );
      obj->setText ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString text() const
*/
HB_FUNC_STATIC( QUNDOCOMMAND_TEXT )
{
  QUndoCommand * obj = (QUndoCommand *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( (const char *) obj->text (  ).toLatin1().data() );
  }
}

/*
virtual void undo()
*/
HB_FUNC_STATIC( QUNDOCOMMAND_UNDO )
{
  QUndoCommand * obj = (QUndoCommand *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->undo (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QUNDOCOMMAND_NEWFROM )
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

HB_FUNC_STATIC( QUNDOCOMMAND_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QUNDOCOMMAND_NEWFROM );
}

HB_FUNC_STATIC( QUNDOCOMMAND_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QUNDOCOMMAND_NEWFROM );
}

HB_FUNC_STATIC( QUNDOCOMMAND_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QUNDOCOMMAND_SETSELFDESTRUCTION )
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

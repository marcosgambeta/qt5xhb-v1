$header

#include "hbclass.ch"

CLASS QUndoCommand

   DATA pointer
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

$destructor

#pragma BEGINDUMP

$includes

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
  QUndoCommand * par2 = ISNIL(2)? 0 : (QUndoCommand *) _qt5xhb_itemGetPtr(2);
  QUndoCommand * o = new QUndoCommand ( PQSTRING(1), par2 );
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

$deleteMethod

/*
QString actionText() const
*/
HB_FUNC_STATIC( QUNDOCOMMAND_ACTIONTEXT )
{
  QUndoCommand * obj = (QUndoCommand *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->actionText () );
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
      const QUndoCommand * ptr = obj->child ( PINT(1) );
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
    RINT( obj->childCount () );
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
    RINT( obj->id () );
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
      RBOOL( obj->mergeWith ( par1 ) );
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
    obj->redo ();
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
      obj->setText ( PQSTRING(1) );
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
    RQSTRING( obj->text () );
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
    obj->undo ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

$extraMethods

#pragma ENDDUMP

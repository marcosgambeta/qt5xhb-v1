/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QICON
REQUEST QUNDOGROUP
REQUEST QUNDOSTACK
#endif

CLASS QUndoView INHERIT QWidget

   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD cleanIcon
   METHOD emptyLabel
   METHOD group
   METHOD setCleanIcon
   METHOD setEmptyLabel
   METHOD stack
   METHOD setGroup
   METHOD setStack

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QUndoView
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QUndoView>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QUndoView>
#endif

/*
QUndoView ( QWidget * parent = 0 )
*/
void QUndoView_new1 ()
{
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qt5xhb_itemGetPtr(1);
  QUndoView * o = new QUndoView ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QUndoView ( QUndoStack * stack, QWidget * parent = 0 )
*/
void QUndoView_new2 ()
{
  QUndoStack * par1 = (QUndoStack *) _qt5xhb_itemGetPtr(1);
  QWidget * par2 = ISNIL(2)? 0 : (QWidget *) _qt5xhb_itemGetPtr(2);
  QUndoView * o = new QUndoView ( par1, par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QUndoView ( QUndoGroup * group, QWidget * parent = 0 )
*/
void QUndoView_new3 ()
{
  QUndoGroup * par1 = (QUndoGroup *) _qt5xhb_itemGetPtr(1);
  QWidget * par2 = ISNIL(2)? 0 : (QWidget *) _qt5xhb_itemGetPtr(2);
  QUndoView * o = new QUndoView ( par1, par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QUndoView ( QWidget * parent = 0 )
//[2]QUndoView ( QUndoStack * stack, QWidget * parent = 0 )
//[3]QUndoView ( QUndoGroup * group, QWidget * parent = 0 )

HB_FUNC_STATIC( QUNDOVIEW_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QUndoView_new1();
  }
  else if( ISBETWEEN(1,2) && ISQUNDOSTACK(1) && ISOPTQWIDGET(2) )
  {
    QUndoView_new2();
  }
  else if( ISBETWEEN(1,2) && ISQUNDOGROUP(1) && ISOPTQWIDGET(2) )
  {
    QUndoView_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QUNDOVIEW_DELETE )
{
  QUndoView * obj = (QUndoView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QIcon cleanIcon () const
*/
HB_FUNC_STATIC( QUNDOVIEW_CLEANICON )
{
  QUndoView * obj = (QUndoView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QIcon * ptr = new QIcon( obj->cleanIcon (  ) );
    _qt5xhb_createReturnClass ( ptr, "QICON", true );
  }
}

/*
QString emptyLabel () const
*/
HB_FUNC_STATIC( QUNDOVIEW_EMPTYLABEL )
{
  QUndoView * obj = (QUndoView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( (const char *) obj->emptyLabel (  ).toLatin1().data() );
  }
}

/*
QUndoGroup * group () const
*/
HB_FUNC_STATIC( QUNDOVIEW_GROUP )
{
  QUndoView * obj = (QUndoView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QUndoGroup * ptr = obj->group (  );
    _qt5xhb_createReturnClass ( ptr, "QUNDOGROUP" );
  }
}

/*
void setCleanIcon ( const QIcon & icon )
*/
HB_FUNC_STATIC( QUNDOVIEW_SETCLEANICON )
{
  QUndoView * obj = (QUndoView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( (ISQICON(1)||ISCHAR(1)) )
    {
      QIcon par1 = ISOBJECT(1)? *(QIcon *) _qt5xhb_itemGetPtr(1) : QIcon(hb_parc(1));
      obj->setCleanIcon ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setEmptyLabel ( const QString & label )
*/
HB_FUNC_STATIC( QUNDOVIEW_SETEMPTYLABEL )
{
  QUndoView * obj = (QUndoView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setEmptyLabel ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QUndoStack * stack () const
*/
HB_FUNC_STATIC( QUNDOVIEW_STACK )
{
  QUndoView * obj = (QUndoView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QUndoStack * ptr = obj->stack (  );
    _qt5xhb_createReturnClass ( ptr, "QUNDOSTACK" );
  }
}

/*
void setGroup ( QUndoGroup * group )
*/
HB_FUNC_STATIC( QUNDOVIEW_SETGROUP )
{
  QUndoView * obj = (QUndoView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQUNDOGROUP(1) )
    {
      QUndoGroup * par1 = (QUndoGroup *) _qt5xhb_itemGetPtr(1);
      obj->setGroup ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setStack ( QUndoStack * stack )
*/
HB_FUNC_STATIC( QUNDOVIEW_SETSTACK )
{
  QUndoView * obj = (QUndoView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQUNDOSTACK(1) )
    {
      QUndoStack * par1 = (QUndoStack *) _qt5xhb_itemGetPtr(1);
      obj->setStack ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP

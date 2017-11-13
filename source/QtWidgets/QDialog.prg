/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
REQUEST QWIDGET
#endif

CLASS QDialog INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD isSizeGripEnabled
   METHOD setSizeGripEnabled
   METHOD result
   METHOD setModal
   METHOD setResult
   METHOD minimumSizeHint
   METHOD setVisible
   METHOD sizeHint
   METHOD accept
   METHOD done
   METHOD exec
   METHOD open
   METHOD reject
   METHOD orientation
   METHOD setOrientation
   METHOD extension
   METHOD setExtension
   METHOD showExtension

   METHOD onAccepted
   METHOD onFinished
   METHOD onRejected

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDialog
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDialog>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDialog>
#endif

/*
explicit QDialog ( QWidget * parent = 0, Qt::WindowFlags f = 0 )
*/
HB_FUNC_STATIC( QDIALOG_NEW )
{
  int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
  QDialog * o = new QDialog ( OPQWIDGET(1,0), (Qt::WindowFlags) par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QDIALOG_DELETE )
{
  QDialog * obj = (QDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool isSizeGripEnabled () const
*/
HB_FUNC_STATIC( QDIALOG_ISSIZEGRIPENABLED )
{
  QDialog * obj = (QDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isSizeGripEnabled () );
  }
}

/*
void setSizeGripEnabled ( bool )
*/
HB_FUNC_STATIC( QDIALOG_SETSIZEGRIPENABLED )
{
  QDialog * obj = (QDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setSizeGripEnabled ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}


/*
int result () const
*/
HB_FUNC_STATIC( QDIALOG_RESULT )
{
  QDialog * obj = (QDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->result () );
  }
}


/*
void setModal ( bool modal )
*/
HB_FUNC_STATIC( QDIALOG_SETMODAL )
{
  QDialog * obj = (QDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setModal ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setResult ( int i )
*/
HB_FUNC_STATIC( QDIALOG_SETRESULT )
{
  QDialog * obj = (QDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setResult ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QDIALOG_MINIMUMSIZEHINT )
{
  QDialog * obj = (QDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
void setVisible ( bool visible )
*/
HB_FUNC_STATIC( QDIALOG_SETVISIBLE )
{
  QDialog * obj = (QDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setVisible ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSize sizeHint () const
*/
HB_FUNC_STATIC( QDIALOG_SIZEHINT )
{
  QDialog * obj = (QDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
virtual void accept ()
*/
HB_FUNC_STATIC( QDIALOG_ACCEPT )
{
  QDialog * obj = (QDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->accept ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void done ( int r )
*/
HB_FUNC_STATIC( QDIALOG_DONE )
{
  QDialog * obj = (QDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->done ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual int exec ()
*/
HB_FUNC_STATIC( QDIALOG_EXEC )
{
  QDialog * obj = (QDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->exec () );
  }
}


/*
virtual void open ()
*/
HB_FUNC_STATIC( QDIALOG_OPEN )
{
  QDialog * obj = (QDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->open ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void reject ()
*/
HB_FUNC_STATIC( QDIALOG_REJECT )
{
  QDialog * obj = (QDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->reject ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Qt::Orientation orientation () const
*/
HB_FUNC_STATIC( QDIALOG_ORIENTATION )
{
  QDialog * obj = (QDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->orientation () );
  }
}

/*
void setOrientation (Qt::Orientation orientation)
*/
HB_FUNC_STATIC( QDIALOG_SETORIENTATION )
{
  QDialog * obj = (QDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setOrientation ( (Qt::Orientation) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QWidget* extension () const
*/
HB_FUNC_STATIC( QDIALOG_EXTENSION )
{
  QDialog * obj = (QDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * ptr = obj->extension ();
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
void setExtension (QWidget* extension)
*/
HB_FUNC_STATIC( QDIALOG_SETEXTENSION )
{
  QDialog * obj = (QDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setExtension ( PQWIDGET(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void showExtension(bool)
*/
HB_FUNC_STATIC( QDIALOG_SHOWEXTENSION )
{
  QDialog * obj = (QDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->showExtension ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP

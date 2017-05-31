/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACTION
REQUEST QDESIGNERFORMWINDOWINTERFACE
REQUEST QDESIGNERFORMEDITORINTERFACE
#endif

CLASS QDesignerFormWindowManagerInterface INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD actionAdjustSize
   METHOD actionBreakLayout
   METHOD actionCopy
   METHOD actionCut
   METHOD actionDelete
   METHOD actionFormLayout
   METHOD actionGridLayout
   METHOD actionHorizontalLayout
   METHOD actionLower
   METHOD actionPaste
   METHOD actionRaise
   METHOD actionRedo
   METHOD actionSelectAll
   METHOD actionSimplifyLayout
   METHOD actionSplitHorizontal
   METHOD actionSplitVertical
   METHOD actionUndo
   METHOD actionVerticalLayout
   METHOD activeFormWindow
   METHOD core
   METHOD createFormWindow
   METHOD formWindow
   METHOD formWindowCount
   METHOD addFormWindow
   METHOD removeFormWindow
   METHOD setActiveFormWindow

   METHOD onActiveFormWindowChanged
   METHOD onFormWindowAdded
   METHOD onFormWindowRemoved

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDesignerFormWindowManagerInterface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDesignerFormWindowManagerInterface>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDesignerFormWindowManagerInterface>
#endif

HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_DELETE )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
virtual QAction * actionAdjustSize () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONADJUSTSIZE )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAction * ptr = obj->actionAdjustSize ();
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
virtual QAction * actionBreakLayout () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONBREAKLAYOUT )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAction * ptr = obj->actionBreakLayout ();
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
virtual QAction * actionCopy () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONCOPY )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAction * ptr = obj->actionCopy ();
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
virtual QAction * actionCut () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONCUT )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAction * ptr = obj->actionCut ();
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
virtual QAction * actionDelete () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONDELETE )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAction * ptr = obj->actionDelete ();
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
QAction * actionFormLayout () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONFORMLAYOUT )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAction * ptr = obj->actionFormLayout ();
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
virtual QAction * actionGridLayout () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONGRIDLAYOUT )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAction * ptr = obj->actionGridLayout ();
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
virtual QAction * actionHorizontalLayout () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONHORIZONTALLAYOUT )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAction * ptr = obj->actionHorizontalLayout ();
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
virtual QAction * actionLower () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONLOWER )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAction * ptr = obj->actionLower ();
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
virtual QAction * actionPaste () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONPASTE )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAction * ptr = obj->actionPaste ();
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
virtual QAction * actionRaise () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONRAISE )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAction * ptr = obj->actionRaise ();
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
virtual QAction * actionRedo () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONREDO )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAction * ptr = obj->actionRedo ();
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
virtual QAction * actionSelectAll () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONSELECTALL )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAction * ptr = obj->actionSelectAll ();
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
QAction * actionSimplifyLayout () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONSIMPLIFYLAYOUT )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAction * ptr = obj->actionSimplifyLayout ();
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
virtual QAction * actionSplitHorizontal () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONSPLITHORIZONTAL )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAction * ptr = obj->actionSplitHorizontal ();
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
virtual QAction * actionSplitVertical () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONSPLITVERTICAL )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAction * ptr = obj->actionSplitVertical ();
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
virtual QAction * actionUndo () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONUNDO )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAction * ptr = obj->actionUndo ();
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
virtual QAction * actionVerticalLayout () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONVERTICALLAYOUT )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAction * ptr = obj->actionVerticalLayout ();
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
virtual QDesignerFormWindowInterface * activeFormWindow () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIVEFORMWINDOW )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QDesignerFormWindowInterface * ptr = obj->activeFormWindow ();
    _qt5xhb_createReturnClass ( ptr, "QDESIGNERFORMWINDOWINTERFACE" );
  }
}

/*
virtual QDesignerFormEditorInterface * core () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_CORE )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QDesignerFormEditorInterface * ptr = obj->core ();
    _qt5xhb_createReturnClass ( ptr, "QDESIGNERFORMEDITORINTERFACE" );
  }
}

/*
virtual QDesignerFormWindowInterface * createFormWindow ( QWidget * parent = 0, Qt::WindowFlags flags = 0 )
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_CREATEFORMWINDOW )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTQWIDGET(1) && ISOPTNUM(2) )
    {
      QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qt5xhb_itemGetPtr(1);
      int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
      QDesignerFormWindowInterface * ptr = obj->createFormWindow ( par1, (Qt::WindowFlags) par2 );
      _qt5xhb_createReturnClass ( ptr, "QDESIGNERFORMWINDOWINTERFACE" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QDesignerFormWindowInterface * formWindow ( int index ) const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_FORMWINDOW )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QDesignerFormWindowInterface * ptr = obj->formWindow ( PINT(1) );
      _qt5xhb_createReturnClass ( ptr, "QDESIGNERFORMWINDOWINTERFACE" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual int formWindowCount () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_FORMWINDOWCOUNT )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->formWindowCount () );
  }
}

/*
virtual void addFormWindow ( QDesignerFormWindowInterface * formWindow )
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ADDFORMWINDOW )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQDESIGNERFORMWINDOWINTERFACE(1) )
    {
      QDesignerFormWindowInterface * par1 = (QDesignerFormWindowInterface *) _qt5xhb_itemGetPtr(1);
      obj->addFormWindow ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void removeFormWindow ( QDesignerFormWindowInterface * formWindow )
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_REMOVEFORMWINDOW )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQDESIGNERFORMWINDOWINTERFACE(1) )
    {
      QDesignerFormWindowInterface * par1 = (QDesignerFormWindowInterface *) _qt5xhb_itemGetPtr(1);
      obj->removeFormWindow ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setActiveFormWindow ( QDesignerFormWindowInterface * formWindow )
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_SETACTIVEFORMWINDOW )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQDESIGNERFORMWINDOWINTERFACE(1) )
    {
      QDesignerFormWindowInterface * par1 = (QDesignerFormWindowInterface *) _qt5xhb_itemGetPtr(1);
      obj->setActiveFormWindow ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP

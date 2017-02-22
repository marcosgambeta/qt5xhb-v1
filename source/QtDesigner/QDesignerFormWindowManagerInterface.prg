/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QACTION
REQUEST QDESIGNERFORMWINDOWINTERFACE
REQUEST QDESIGNERFORMEDITORINTERFACE

CLASS QDesignerFormWindowManagerInterface INHERIT QObject

   DATA class_id INIT Class_Id_QDesignerFormWindowManagerInterface
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QDesignerFormWindowManagerInterface>
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
#include <QDesignerFormWindowManagerInterface>
#endif
#endif


HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

/*
virtual QAction * actionAdjustSize () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONADJUSTSIZE )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAction * ptr = obj->actionAdjustSize (  );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}


/*
virtual QAction * actionBreakLayout () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONBREAKLAYOUT )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAction * ptr = obj->actionBreakLayout (  );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}


/*
virtual QAction * actionCopy () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONCOPY )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAction * ptr = obj->actionCopy (  );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}


/*
virtual QAction * actionCut () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONCUT )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAction * ptr = obj->actionCut (  );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}


/*
virtual QAction * actionDelete () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONDELETE )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAction * ptr = obj->actionDelete (  );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}


/*
QAction * actionFormLayout () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONFORMLAYOUT )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAction * ptr = obj->actionFormLayout (  );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}


/*
virtual QAction * actionGridLayout () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONGRIDLAYOUT )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAction * ptr = obj->actionGridLayout (  );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}


/*
virtual QAction * actionHorizontalLayout () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONHORIZONTALLAYOUT )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAction * ptr = obj->actionHorizontalLayout (  );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}


/*
virtual QAction * actionLower () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONLOWER )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAction * ptr = obj->actionLower (  );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}


/*
virtual QAction * actionPaste () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONPASTE )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAction * ptr = obj->actionPaste (  );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}


/*
virtual QAction * actionRaise () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONRAISE )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAction * ptr = obj->actionRaise (  );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}


/*
virtual QAction * actionRedo () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONREDO )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAction * ptr = obj->actionRedo (  );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}


/*
virtual QAction * actionSelectAll () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONSELECTALL )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAction * ptr = obj->actionSelectAll (  );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}


/*
QAction * actionSimplifyLayout () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONSIMPLIFYLAYOUT )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAction * ptr = obj->actionSimplifyLayout (  );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}


/*
virtual QAction * actionSplitHorizontal () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONSPLITHORIZONTAL )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAction * ptr = obj->actionSplitHorizontal (  );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}


/*
virtual QAction * actionSplitVertical () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONSPLITVERTICAL )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAction * ptr = obj->actionSplitVertical (  );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}


/*
virtual QAction * actionUndo () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONUNDO )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAction * ptr = obj->actionUndo (  );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}


/*
virtual QAction * actionVerticalLayout () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONVERTICALLAYOUT )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAction * ptr = obj->actionVerticalLayout (  );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}


/*
virtual QDesignerFormWindowInterface * activeFormWindow () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIVEFORMWINDOW )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDesignerFormWindowInterface * ptr = obj->activeFormWindow (  );
    _qt4xhb_createReturnClass ( ptr, "QDESIGNERFORMWINDOWINTERFACE" );
  }
}


/*
virtual QDesignerFormEditorInterface * core () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_CORE )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDesignerFormEditorInterface * ptr = obj->core (  );
    _qt4xhb_createReturnClass ( ptr, "QDESIGNERFORMEDITORINTERFACE" );
  }
}


/*
virtual QDesignerFormWindowInterface * createFormWindow ( QWidget * parent = 0, Qt::WindowFlags flags = 0 )
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_CREATEFORMWINDOW )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qtxhb_itemGetPtr(1);
    int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
    QDesignerFormWindowInterface * ptr = obj->createFormWindow ( par1,  (Qt::WindowFlags) par2 );
    _qt4xhb_createReturnClass ( ptr, "QDESIGNERFORMWINDOWINTERFACE" );
  }
}


/*
virtual QDesignerFormWindowInterface * formWindow ( int index ) const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_FORMWINDOW )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDesignerFormWindowInterface * ptr = obj->formWindow ( (int) hb_parni(1) );
    _qt4xhb_createReturnClass ( ptr, "QDESIGNERFORMWINDOWINTERFACE" );
  }
}


/*
virtual int formWindowCount () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_FORMWINDOWCOUNT )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->formWindowCount (  ) );
  }
}


/*
virtual void addFormWindow ( QDesignerFormWindowInterface * formWindow )
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ADDFORMWINDOW )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDesignerFormWindowInterface * par1 = (QDesignerFormWindowInterface *) _qtxhb_itemGetPtr(1);
    obj->addFormWindow ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void removeFormWindow ( QDesignerFormWindowInterface * formWindow )
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_REMOVEFORMWINDOW )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDesignerFormWindowInterface * par1 = (QDesignerFormWindowInterface *) _qtxhb_itemGetPtr(1);
    obj->removeFormWindow ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setActiveFormWindow ( QDesignerFormWindowInterface * formWindow )
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_SETACTIVEFORMWINDOW )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDesignerFormWindowInterface * par1 = (QDesignerFormWindowInterface *) _qtxhb_itemGetPtr(1);
    obj->setActiveFormWindow ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP

/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACTION
#endif

CLASS QActionGroup INHERIT QObject

   METHOD new
   METHOD delete
   METHOD addAction
   METHOD checkedAction
   METHOD isEnabled
   METHOD isExclusive
   METHOD isVisible
   METHOD removeAction
   METHOD setDisabled
   METHOD setEnabled
   METHOD setExclusive
   METHOD setVisible

   METHOD onHovered
   METHOD onTriggered

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QActionGroup
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QActionGroup>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtWidgets/QActionGroup>
#endif

/*
QActionGroup ( QObject * parent )
*/
HB_FUNC_STATIC( QACTIONGROUP_NEW )
{
  if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    QActionGroup * o = new QActionGroup ( PQOBJECT(1) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QACTIONGROUP_DELETE )
{
  QActionGroup * obj = (QActionGroup *) _qt5xhb_itemGetPtrStackSelfItem();

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
QAction * addAction ( QAction * action )
*/
void QActionGroup_addAction1 ()
{
  QActionGroup * obj = (QActionGroup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      QAction * ptr = obj->addAction ( PQACTION(1) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QACTION" );
  }
}

/*
QAction * addAction ( const QString & text )
*/
void QActionGroup_addAction2 ()
{
  QActionGroup * obj = (QActionGroup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      QAction * ptr = obj->addAction ( PQSTRING(1) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QACTION" );
  }
}

/*
QAction * addAction ( const QIcon & icon, const QString & text )
*/
void QActionGroup_addAction3 ()
{
  QActionGroup * obj = (QActionGroup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      QAction * ptr = obj->addAction ( ISOBJECT(1)? *(QIcon *) _qt5xhb_itemGetPtr(1) : QIcon(hb_parc(1)), PQSTRING(2) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QACTION" );
  }
}

//[1]QAction * addAction ( QAction * action )
//[2]QAction * addAction ( const QString & text )
//[3]QAction * addAction ( const QIcon & icon, const QString & text )

HB_FUNC_STATIC( QACTIONGROUP_ADDACTION )
{
  if( ISNUMPAR(1) && ISQACTION(1) )
  {
    QActionGroup_addAction1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QActionGroup_addAction2();
  }
  else if( ISNUMPAR(2) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) )
  {
    QActionGroup_addAction3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QAction * checkedAction () const
*/
HB_FUNC_STATIC( QACTIONGROUP_CHECKEDACTION )
{
  QActionGroup * obj = (QActionGroup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAction * ptr = obj->checkedAction ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QACTION" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isEnabled () const
*/
HB_FUNC_STATIC( QACTIONGROUP_ISENABLED )
{
  QActionGroup * obj = (QActionGroup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isEnabled () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isExclusive () const
*/
HB_FUNC_STATIC( QACTIONGROUP_ISEXCLUSIVE )
{
  QActionGroup * obj = (QActionGroup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isExclusive () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isVisible () const
*/
HB_FUNC_STATIC( QACTIONGROUP_ISVISIBLE )
{
  QActionGroup * obj = (QActionGroup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isVisible () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void removeAction ( QAction * action )
*/
HB_FUNC_STATIC( QACTIONGROUP_REMOVEACTION )
{
  QActionGroup * obj = (QActionGroup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQACTION(1) )
    {
#endif
      obj->removeAction ( PQACTION(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDisabled ( bool b )
*/
HB_FUNC_STATIC( QACTIONGROUP_SETDISABLED )
{
  QActionGroup * obj = (QActionGroup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setDisabled ( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setEnabled ( bool )
*/
HB_FUNC_STATIC( QACTIONGROUP_SETENABLED )
{
  QActionGroup * obj = (QActionGroup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setEnabled ( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setExclusive ( bool )
*/
HB_FUNC_STATIC( QACTIONGROUP_SETEXCLUSIVE )
{
  QActionGroup * obj = (QActionGroup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setExclusive ( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setVisible ( bool )
*/
HB_FUNC_STATIC( QACTIONGROUP_SETVISIBLE )
{
  QActionGroup * obj = (QActionGroup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setVisible ( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

void QActionGroupSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QACTIONGROUP_ONHOVERED )
{
  QActionGroupSlots_connect_signal( "hovered(QAction*)", "hovered(QAction*)" );
}

HB_FUNC_STATIC( QACTIONGROUP_ONTRIGGERED )
{
  QActionGroupSlots_connect_signal( "triggered(QAction*)", "triggered(QAction*)" );
}

#pragma ENDDUMP

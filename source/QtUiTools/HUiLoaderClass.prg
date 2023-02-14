/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACTION
REQUEST QACTIONGROUP
REQUEST QLAYOUT
REQUEST QWIDGET
#endif

CLASS HUiLoader INHERIT QUiLoader

   METHOD new
   METHOD delete

   METHOD setCreateActionCB
   METHOD setCreateActionGroupCB
   METHOD setCreateLayoutCB
   METHOD setCreateWidgetCB

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS HUiLoader
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include "HUiLoader.hpp"

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

/*
HUiLoader( QObject *parent = 0 )
*/
HB_FUNC_STATIC( HUILOADER_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||HB_ISNIL(1)) )
  {
    HUiLoader * obj = new HUiLoader( OPQOBJECT(1,0) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
~HUiLoader()
*/
HB_FUNC_STATIC( HUILOADER_DELETE )
{
  HUiLoader * obj = (HUiLoader *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QAction * createAction( QObject *parent = 0, const QString &name = QString() )
*/

/*
QActionGroup * createActionGroup( QObject *parent = 0, const QString &name = QString() )
*/

/*
QLayout * createLayout( const QString &className, QObject *parent = 0, const QString &name = QString() )
*/

/*
QWidget * createWidget( const QString &className, QWidget *parent = 0, const QString &name = QString() )
*/

/*
void setCreateActionCB ( PHB_ITEM block )
*/
HB_FUNC_STATIC( HUILOADER_SETCREATEACTIONCB )
{
  HUiLoader * obj = (HUiLoader *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) )
    {
#endif
      obj->setCreateActionCB( PBLOCKORSYMBOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setCreateActionGroupCB ( PHB_ITEM block )
*/
HB_FUNC_STATIC( HUILOADER_SETCREATEACTIONGROUPCB )
{
  HUiLoader * obj = (HUiLoader *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) )
    {
#endif
      obj->setCreateActionGroupCB( PBLOCKORSYMBOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setCreateLayoutCB ( PHB_ITEM block )
*/
HB_FUNC_STATIC( HUILOADER_SETCREATELAYOUTCB )
{
  HUiLoader * obj = (HUiLoader *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) )
    {
#endif
      obj->setCreateLayoutCB( PBLOCKORSYMBOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setCreateWidgetCB ( PHB_ITEM block )
*/
HB_FUNC_STATIC( HUILOADER_SETCREATEWIDGETCB )
{
  HUiLoader * obj = (HUiLoader *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) )
    {
#endif
      obj->setCreateWidgetCB( PBLOCKORSYMBOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

#pragma ENDDUMP

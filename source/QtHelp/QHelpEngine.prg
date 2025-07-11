//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
REQUEST QHELPCONTENTMODEL
REQUEST QHELPCONTENTWIDGET
REQUEST QHELPINDEXMODEL
REQUEST QHELPINDEXWIDGET
REQUEST QHELPSEARCHENGINE
#endif

CLASS QHelpEngine INHERIT QHelpEngineCore

   METHOD new
   METHOD delete
   METHOD contentModel
   METHOD contentWidget
   METHOD indexModel
   METHOD indexWidget
   METHOD searchEngine

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QHelpEngine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtHelp/QHelpEngine>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtHelp/QHelpEngine>
#endif

#include <QtHelp/QHelpContentModel>
#include <QtHelp/QHelpIndexModel>
#include <QtHelp/QHelpSearchEngine>

    /*
    QHelpEngine( const QString &collectionFile, QObject * parent = 0 )
    */
HB_FUNC_STATIC(QHELPENGINE_NEW)
{
  if (ISBETWEEN(1, 2) && HB_ISCHAR(1) && (ISQOBJECT(2) || HB_ISNIL(2)))
  {
    QHelpEngine *obj = new QHelpEngine(PQSTRING(1), OPQOBJECT(2, 0));
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QHELPENGINE_DELETE)
{
  QHelpEngine *obj = (QHelpEngine *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
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
QHelpContentModel * contentModel() const
*/
HB_FUNC_STATIC(QHELPENGINE_CONTENTMODEL)
{
  QHelpEngine *obj = (QHelpEngine *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QHelpContentModel *ptr = obj->contentModel();
      Qt5xHb::createReturnQObjectClass(ptr, "QHELPCONTENTMODEL");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QHelpContentWidget * contentWidget()
*/
HB_FUNC_STATIC(QHELPENGINE_CONTENTWIDGET)
{
  QHelpEngine *obj = (QHelpEngine *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QHelpContentWidget *ptr = obj->contentWidget();
      Qt5xHb::createReturnQWidgetClass(ptr, "QHELPCONTENTWIDGET");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QHelpIndexModel * indexModel() const
*/
HB_FUNC_STATIC(QHELPENGINE_INDEXMODEL)
{
  QHelpEngine *obj = (QHelpEngine *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QHelpIndexModel *ptr = obj->indexModel();
      Qt5xHb::createReturnQObjectClass(ptr, "QHELPINDEXMODEL");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QHelpIndexWidget * indexWidget()
*/
HB_FUNC_STATIC(QHELPENGINE_INDEXWIDGET)
{
  QHelpEngine *obj = (QHelpEngine *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QHelpIndexWidget *ptr = obj->indexWidget();
      Qt5xHb::createReturnQWidgetClass(ptr, "QHELPINDEXWIDGET");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QHelpSearchEngine * searchEngine()
*/
HB_FUNC_STATIC(QHELPENGINE_SEARCHENGINE)
{
  QHelpEngine *obj = (QHelpEngine *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QHelpSearchEngine *ptr = obj->searchEngine();
      Qt5xHb::createReturnQObjectClass(ptr, "QHELPSEARCHENGINE");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

#pragma ENDDUMP

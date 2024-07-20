//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWINJUMPLISTITEM
#endif

CLASS QWinJumpListCategory

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD type
   METHOD isVisible
   METHOD setVisible
   METHOD title
   METHOD setTitle
   METHOD count
   METHOD isEmpty
   METHOD items
   METHOD addItem
   METHOD addDestination
   METHOD addLink
   METHOD addSeparator
   METHOD clear

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QWinJumpListCategory
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
#include <QtWinExtras/QWinJumpListCategory>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
#include <QtWinExtras/QWinJumpListCategory>
#endif
#endif

    /*
    QWinJumpListCategory( const QString &title = QString() )
    */
HB_FUNC_STATIC(QWINJUMPLISTCATEGORY_NEW)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  if (ISBETWEEN(0, 1) && (HB_ISCHAR(1) || HB_ISNIL(1)))
  {
    QWinJumpListCategory *obj = new QWinJumpListCategory(OPQSTRING(1, QString()));
    Qt5xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

HB_FUNC_STATIC(QWINJUMPLISTCATEGORY_DELETE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QWinJumpListCategory *obj = (QWinJumpListCategory *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QWinJumpListCategory::Type type() const
*/
HB_FUNC_STATIC(QWINJUMPLISTCATEGORY_TYPE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QWinJumpListCategory *obj = (QWinJumpListCategory *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->type());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
bool isVisible() const
*/
HB_FUNC_STATIC(QWINJUMPLISTCATEGORY_ISVISIBLE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QWinJumpListCategory *obj = (QWinJumpListCategory *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isVisible());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setVisible( bool visible )
*/
HB_FUNC_STATIC(QWINJUMPLISTCATEGORY_SETVISIBLE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QWinJumpListCategory *obj = (QWinJumpListCategory *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setVisible(PBOOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QString title() const
*/
HB_FUNC_STATIC(QWINJUMPLISTCATEGORY_TITLE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QWinJumpListCategory *obj = (QWinJumpListCategory *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->title());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setTitle( const QString &title )
*/
HB_FUNC_STATIC(QWINJUMPLISTCATEGORY_SETTITLE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QWinJumpListCategory *obj = (QWinJumpListCategory *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->setTitle(PQSTRING(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
int count() const
*/
HB_FUNC_STATIC(QWINJUMPLISTCATEGORY_COUNT)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QWinJumpListCategory *obj = (QWinJumpListCategory *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->count());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
bool isEmpty() const
*/
HB_FUNC_STATIC(QWINJUMPLISTCATEGORY_ISEMPTY)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QWinJumpListCategory *obj = (QWinJumpListCategory *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isEmpty());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
QList<QWinJumpListItem*> items() const
*/
HB_FUNC_STATIC(QWINJUMPLISTCATEGORY_ITEMS)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QWinJumpListCategory *obj = (QWinJumpListCategory *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QList<QWinJumpListItem *> list = obj->items();
      PHB_DYNS pDynSym = hb_dynsymFindName("QWINJUMPLISTITEM");
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if (pDynSym != NULL)
      {
        for (int i = 0; i < list.count(); i++)
        {
          hb_vmPushDynSym(pDynSym);
          hb_vmPushNil();
          hb_vmDo(0);
          PHB_ITEM pObject = hb_itemNew(NULL);
          hb_itemCopy(pObject, hb_stackReturnItem());
          PHB_ITEM pItem = hb_itemPutPtr(NULL, list[i]);
          hb_objSendMsg(pObject, "_POINTER", 1, pItem);
          hb_itemRelease(pItem);
          hb_arrayAddForward(pArray, pObject);
          hb_itemRelease(pObject);
        }
      }
      else
      {
        hb_errRT_BASE(EG_NOFUNC, 1001, NULL, "QWINJUMPLISTITEM", HB_ERR_ARGS_BASEPARAMS);
      }
      hb_itemReturnRelease(pArray);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void addItem( QWinJumpListItem * item )
*/
HB_FUNC_STATIC(QWINJUMPLISTCATEGORY_ADDITEM)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QWinJumpListCategory *obj = (QWinJumpListCategory *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQWINJUMPLISTITEM(1))
    {
#endif
      obj->addItem(PQWINJUMPLISTITEM(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QWinJumpListItem * addDestination( const QString &filePath )
*/
HB_FUNC_STATIC(QWINJUMPLISTCATEGORY_ADDDESTINATION)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QWinJumpListCategory *obj = (QWinJumpListCategory *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      QWinJumpListItem *ptr = obj->addDestination(PQSTRING(1));
      Qt5xHb::createReturnClass(ptr, "QWINJUMPLISTITEM", false);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

HB_FUNC_STATIC(QWINJUMPLISTCATEGORY_ADDLINK)
{
  if (ISBETWEEN(2, 3) && HB_ISCHAR(1) && HB_ISCHAR(2) && (HB_ISARRAY(3) || HB_ISNIL(3)))
  {
    /*
    QWinJumpListItem * addLink( const QString &title, const QString &executablePath, const QStringList &arguments =
    QStringList() )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
    QWinJumpListCategory *obj = (QWinJumpListCategory *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      QWinJumpListItem *ptr = obj->addLink(PQSTRING(1), PQSTRING(2), OPQSTRINGLIST(3, QStringList()));
      Qt5xHb::createReturnClass(ptr, "QWINJUMPLISTITEM", false);
    }
#endif
  }
  else if (ISBETWEEN(3, 4) && ISQICON(1) && HB_ISCHAR(2) && HB_ISCHAR(3) && (HB_ISARRAY(4) || HB_ISNIL(4)))
  {
    /*
    QWinJumpListItem * addLink( const QIcon &icon, const QString &title, const QString &executablePath, const
    QStringList &arguments = QStringList() )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
    QWinJumpListCategory *obj = (QWinJumpListCategory *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      QWinJumpListItem *ptr = obj->addLink(HB_ISOBJECT(1) ? *(QIcon *)Qt5xHb::itemGetPtr(1) : QIcon(hb_parc(1)),
                                           PQSTRING(2), PQSTRING(3), OPQSTRINGLIST(4, QStringList()));
      Qt5xHb::createReturnClass(ptr, "QWINJUMPLISTITEM", false);
    }
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QWinJumpListItem * addSeparator()
*/
HB_FUNC_STATIC(QWINJUMPLISTCATEGORY_ADDSEPARATOR)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QWinJumpListCategory *obj = (QWinJumpListCategory *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QWinJumpListItem *ptr = obj->addSeparator();
      Qt5xHb::createReturnClass(ptr, "QWINJUMPLISTITEM", false);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void clear()
*/
HB_FUNC_STATIC(QWINJUMPLISTCATEGORY_CLEAR)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QWinJumpListCategory *obj = (QWinJumpListCategory *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->clear();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

HB_FUNC_STATIC(QWINJUMPLISTCATEGORY_NEWFROM)
{
  PHB_ITEM self = hb_stackSelfItem();

  if (hb_pcount() == 1 && HB_ISOBJECT(1))
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else if (hb_pcount() == 1 && HB_ISPOINTER(1))
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_param(1, HB_IT_POINTER)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

HB_FUNC_STATIC(QWINJUMPLISTCATEGORY_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QWINJUMPLISTCATEGORY_NEWFROM);
}

HB_FUNC_STATIC(QWINJUMPLISTCATEGORY_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QWINJUMPLISTCATEGORY_NEWFROM);
}

HB_FUNC_STATIC(QWINJUMPLISTCATEGORY_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QWINJUMPLISTCATEGORY_SETSELFDESTRUCTION)
{
  PHB_ITEM self = hb_stackSelfItem();

  if (hb_pcount() == 1 && HB_ISLOG(1))
  {
    PHB_ITEM des = hb_itemPutL(NULL, hb_parl(1));
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP

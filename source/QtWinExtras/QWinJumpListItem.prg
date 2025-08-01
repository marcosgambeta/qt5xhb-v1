//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
REQUEST QICON
#endif

CLASS QWinJumpListItem

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD type
   METHOD setType
   METHOD filePath
   METHOD setFilePath
   METHOD workingDirectory
   METHOD setWorkingDirectory
   METHOD icon
   METHOD setIcon
   METHOD title
   METHOD setTitle
   METHOD description
   METHOD setDescription
   METHOD arguments
   METHOD setArguments

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QWinJumpListItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
#include <QtWinExtras/QWinJumpListItem>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
#include <QtWinExtras/QWinJumpListItem>
#endif
#endif

    /*
    QWinJumpListItem( QWinJumpListItem::Type type )
    */
HB_FUNC_STATIC(QWINJUMPLISTITEM_NEW)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  if (ISNUMPAR(1) && HB_ISNUM(1))
  {
    QWinJumpListItem *obj = new QWinJumpListItem((QWinJumpListItem::Type)hb_parni(1));
    Qt5xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

HB_FUNC_STATIC(QWINJUMPLISTITEM_DELETE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QWinJumpListItem *obj = (QWinJumpListItem *)Qt5xHb::itemGetPtrStackSelfItem();

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
QWinJumpListItem::Type type() const
*/
HB_FUNC_STATIC(QWINJUMPLISTITEM_TYPE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QWinJumpListItem *obj = (QWinJumpListItem *)Qt5xHb::itemGetPtrStackSelfItem();

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
void setType( QWinJumpListItem::Type type )
*/
HB_FUNC_STATIC(QWINJUMPLISTITEM_SETTYPE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QWinJumpListItem *obj = (QWinJumpListItem *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setType((QWinJumpListItem::Type)hb_parni(1));
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
QString filePath() const
*/
HB_FUNC_STATIC(QWINJUMPLISTITEM_FILEPATH)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QWinJumpListItem *obj = (QWinJumpListItem *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->filePath());
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
void setFilePath( const QString &filePath )
*/
HB_FUNC_STATIC(QWINJUMPLISTITEM_SETFILEPATH)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QWinJumpListItem *obj = (QWinJumpListItem *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->setFilePath(PQSTRING(1));
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
QString workingDirectory() const
*/
HB_FUNC_STATIC(QWINJUMPLISTITEM_WORKINGDIRECTORY)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QWinJumpListItem *obj = (QWinJumpListItem *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->workingDirectory());
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
void setWorkingDirectory( const QString &workingDirectory )
*/
HB_FUNC_STATIC(QWINJUMPLISTITEM_SETWORKINGDIRECTORY)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QWinJumpListItem *obj = (QWinJumpListItem *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->setWorkingDirectory(PQSTRING(1));
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
QIcon icon() const
*/
HB_FUNC_STATIC(QWINJUMPLISTITEM_ICON)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QWinJumpListItem *obj = (QWinJumpListItem *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QIcon *ptr = new QIcon(obj->icon());
      Qt5xHb::createReturnClass(ptr, "QICON", true);
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
void setIcon( const QIcon &icon )
*/
HB_FUNC_STATIC(QWINJUMPLISTITEM_SETICON)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QWinJumpListItem *obj = (QWinJumpListItem *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && (ISQICON(1) || HB_ISCHAR(1)))
    {
#endif
      obj->setIcon(HB_ISOBJECT(1) ? *(QIcon *)Qt5xHb::itemGetPtr(1) : QIcon(hb_parc(1)));
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
HB_FUNC_STATIC(QWINJUMPLISTITEM_TITLE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QWinJumpListItem *obj = (QWinJumpListItem *)Qt5xHb::itemGetPtrStackSelfItem();

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
HB_FUNC_STATIC(QWINJUMPLISTITEM_SETTITLE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QWinJumpListItem *obj = (QWinJumpListItem *)Qt5xHb::itemGetPtrStackSelfItem();

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
QString description() const
*/
HB_FUNC_STATIC(QWINJUMPLISTITEM_DESCRIPTION)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QWinJumpListItem *obj = (QWinJumpListItem *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->description());
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
void setDescription( const QString &description )
*/
HB_FUNC_STATIC(QWINJUMPLISTITEM_SETDESCRIPTION)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QWinJumpListItem *obj = (QWinJumpListItem *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->setDescription(PQSTRING(1));
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
QStringList arguments() const
*/
HB_FUNC_STATIC(QWINJUMPLISTITEM_ARGUMENTS)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QWinJumpListItem *obj = (QWinJumpListItem *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRINGLIST(obj->arguments());
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
void setArguments( const QStringList &arguments )
*/
HB_FUNC_STATIC(QWINJUMPLISTITEM_SETARGUMENTS)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QWinJumpListItem *obj = (QWinJumpListItem *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISARRAY(1))
    {
#endif
      obj->setArguments(PQSTRINGLIST(1));
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

HB_FUNC_STATIC(QWINJUMPLISTITEM_NEWFROM)
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

HB_FUNC_STATIC(QWINJUMPLISTITEM_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QWINJUMPLISTITEM_NEWFROM);
}

HB_FUNC_STATIC(QWINJUMPLISTITEM_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QWINJUMPLISTITEM_NEWFROM);
}

HB_FUNC_STATIC(QWINJUMPLISTITEM_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QWINJUMPLISTITEM_SETSELFDESTRUCTION)
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

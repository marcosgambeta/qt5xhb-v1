//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSTRINGREF
#endif

CLASS QXmlStreamEntityDeclaration

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD name
   METHOD notationName
   METHOD publicId
   METHOD systemId
   METHOD value

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QXmlStreamEntityDeclaration
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtCore/QXmlStreamEntityDeclaration>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtCore/QXmlStreamEntityDeclaration>
#endif

HB_FUNC_STATIC(QXMLSTREAMENTITYDECLARATION_NEW)
{
  if (ISNUMPAR(0))
  {
    /*
    QXmlStreamEntityDeclaration()
    */
    QXmlStreamEntityDeclaration *obj = new QXmlStreamEntityDeclaration();
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQXMLSTREAMENTITYDECLARATION(1))
  {
    /*
    QXmlStreamEntityDeclaration( const QXmlStreamEntityDeclaration &other )
    */
    QXmlStreamEntityDeclaration *obj = new QXmlStreamEntityDeclaration(*PQXMLSTREAMENTITYDECLARATION(1));
    Qt5xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QXMLSTREAMENTITYDECLARATION_DELETE)
{
  QXmlStreamEntityDeclaration *obj = (QXmlStreamEntityDeclaration *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QStringRef name() const
*/
HB_FUNC_STATIC(QXMLSTREAMENTITYDECLARATION_NAME)
{
  QXmlStreamEntityDeclaration *obj = (QXmlStreamEntityDeclaration *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QStringRef *ptr = new QStringRef(obj->name());
      Qt5xHb::createReturnClass(ptr, "QSTRINGREF", true);
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
QStringRef notationName() const
*/
HB_FUNC_STATIC(QXMLSTREAMENTITYDECLARATION_NOTATIONNAME)
{
  QXmlStreamEntityDeclaration *obj = (QXmlStreamEntityDeclaration *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QStringRef *ptr = new QStringRef(obj->notationName());
      Qt5xHb::createReturnClass(ptr, "QSTRINGREF", true);
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
QStringRef publicId() const
*/
HB_FUNC_STATIC(QXMLSTREAMENTITYDECLARATION_PUBLICID)
{
  QXmlStreamEntityDeclaration *obj = (QXmlStreamEntityDeclaration *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QStringRef *ptr = new QStringRef(obj->publicId());
      Qt5xHb::createReturnClass(ptr, "QSTRINGREF", true);
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
QStringRef systemId() const
*/
HB_FUNC_STATIC(QXMLSTREAMENTITYDECLARATION_SYSTEMID)
{
  QXmlStreamEntityDeclaration *obj = (QXmlStreamEntityDeclaration *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QStringRef *ptr = new QStringRef(obj->systemId());
      Qt5xHb::createReturnClass(ptr, "QSTRINGREF", true);
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
QStringRef value() const
*/
HB_FUNC_STATIC(QXMLSTREAMENTITYDECLARATION_VALUE)
{
  QXmlStreamEntityDeclaration *obj = (QXmlStreamEntityDeclaration *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QStringRef *ptr = new QStringRef(obj->value());
      Qt5xHb::createReturnClass(ptr, "QSTRINGREF", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QXMLSTREAMENTITYDECLARATION_NEWFROM)
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

HB_FUNC_STATIC(QXMLSTREAMENTITYDECLARATION_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QXMLSTREAMENTITYDECLARATION_NEWFROM);
}

HB_FUNC_STATIC(QXMLSTREAMENTITYDECLARATION_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QXMLSTREAMENTITYDECLARATION_NEWFROM);
}

HB_FUNC_STATIC(QXMLSTREAMENTITYDECLARATION_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QXMLSTREAMENTITYDECLARATION_SETSELFDESTRUCTION)
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

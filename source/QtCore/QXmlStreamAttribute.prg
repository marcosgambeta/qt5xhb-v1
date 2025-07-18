//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSTRINGREF
#endif

CLASS QXmlStreamAttribute

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isDefault
   METHOD name
   METHOD namespaceUri
   METHOD prefix
   METHOD qualifiedName
   METHOD value

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QXmlStreamAttribute
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtCore/QXmlStreamAttribute>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtCore/QXmlStreamAttribute>
#endif

HB_FUNC_STATIC(QXMLSTREAMATTRIBUTE_NEW)
{
  if (ISNUMPAR(0))
  {
    /*
    QXmlStreamAttribute()
    */
    QXmlStreamAttribute *obj = new QXmlStreamAttribute();
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2))
  {
    /*
    QXmlStreamAttribute( const QString &qualifiedName, const QString &value )
    */
    QXmlStreamAttribute *obj = new QXmlStreamAttribute(PQSTRING(1), PQSTRING(2));
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(3) && HB_ISCHAR(1) && HB_ISCHAR(2) && HB_ISCHAR(3))
  {
    /*
    QXmlStreamAttribute( const QString &namespaceUri, const QString &name, const QString &value )
    */
    QXmlStreamAttribute *obj = new QXmlStreamAttribute(PQSTRING(1), PQSTRING(2), PQSTRING(3));
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQXMLSTREAMATTRIBUTES(1))
  {
    /*
    QXmlStreamAttribute( const QXmlStreamAttribute &other )
    */
    QXmlStreamAttribute *obj = new QXmlStreamAttribute(*PQXMLSTREAMATTRIBUTE(1));
    Qt5xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QXMLSTREAMATTRIBUTE_DELETE)
{
  QXmlStreamAttribute *obj = (QXmlStreamAttribute *)Qt5xHb::itemGetPtrStackSelfItem();

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
bool isDefault() const
*/
HB_FUNC_STATIC(QXMLSTREAMATTRIBUTE_ISDEFAULT)
{
  QXmlStreamAttribute *obj = (QXmlStreamAttribute *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isDefault());
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
QStringRef name() const
*/
HB_FUNC_STATIC(QXMLSTREAMATTRIBUTE_NAME)
{
  QXmlStreamAttribute *obj = (QXmlStreamAttribute *)Qt5xHb::itemGetPtrStackSelfItem();

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
QStringRef namespaceUri() const
*/
HB_FUNC_STATIC(QXMLSTREAMATTRIBUTE_NAMESPACEURI)
{
  QXmlStreamAttribute *obj = (QXmlStreamAttribute *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QStringRef *ptr = new QStringRef(obj->namespaceUri());
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
QStringRef prefix() const
*/
HB_FUNC_STATIC(QXMLSTREAMATTRIBUTE_PREFIX)
{
  QXmlStreamAttribute *obj = (QXmlStreamAttribute *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QStringRef *ptr = new QStringRef(obj->prefix());
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
QStringRef qualifiedName() const
*/
HB_FUNC_STATIC(QXMLSTREAMATTRIBUTE_QUALIFIEDNAME)
{
  QXmlStreamAttribute *obj = (QXmlStreamAttribute *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QStringRef *ptr = new QStringRef(obj->qualifiedName());
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
HB_FUNC_STATIC(QXMLSTREAMATTRIBUTE_VALUE)
{
  QXmlStreamAttribute *obj = (QXmlStreamAttribute *)Qt5xHb::itemGetPtrStackSelfItem();

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

HB_FUNC_STATIC(QXMLSTREAMATTRIBUTE_NEWFROM)
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

HB_FUNC_STATIC(QXMLSTREAMATTRIBUTE_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QXMLSTREAMATTRIBUTE_NEWFROM);
}

HB_FUNC_STATIC(QXMLSTREAMATTRIBUTE_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QXMLSTREAMATTRIBUTE_NEWFROM);
}

HB_FUNC_STATIC(QXMLSTREAMATTRIBUTE_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QXMLSTREAMATTRIBUTE_SETSELFDESTRUCTION)
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

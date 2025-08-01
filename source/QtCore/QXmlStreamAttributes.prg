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

CLASS QXmlStreamAttributes

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD append
   METHOD hasAttribute
   METHOD value1
   METHOD value2
   METHOD value3
   METHOD value4
   METHOD value5
   METHOD value

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QXmlStreamAttributes
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtCore/QXmlStreamAttributes>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtCore/QXmlStreamAttributes>
#endif

    /*
    QXmlStreamAttributes()
    */
HB_FUNC_STATIC(QXMLSTREAMATTRIBUTES_NEW)
{
  if (ISNUMPAR(0))
  {
    QXmlStreamAttributes *obj = new QXmlStreamAttributes();
    Qt5xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QXMLSTREAMATTRIBUTES_DELETE)
{
  QXmlStreamAttributes *obj = (QXmlStreamAttributes *)Qt5xHb::itemGetPtrStackSelfItem();

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

HB_FUNC_STATIC(QXMLSTREAMATTRIBUTES_APPEND)
{
  if (ISNUMPAR(3) && HB_ISCHAR(1) && HB_ISCHAR(2) && HB_ISCHAR(3))
  {
    /*
    void append( const QString &namespaceUri, const QString &name, const QString &value )
    */
    QXmlStreamAttributes *obj = (QXmlStreamAttributes *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->append(PQSTRING(1), PQSTRING(2), PQSTRING(3));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(1) && ISQXMLSTREAMATTRIBUTE(1))
  {
    /*
    void append( const QXmlStreamAttribute &attribute )
    */
    QXmlStreamAttributes *obj = (QXmlStreamAttributes *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->append(*PQXMLSTREAMATTRIBUTE(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2))
  {
    /*
    void append( const QString &qualifiedName, const QString &value )
    */
    QXmlStreamAttributes *obj = (QXmlStreamAttributes *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->append(PQSTRING(1), PQSTRING(2));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QXMLSTREAMATTRIBUTES_HASATTRIBUTE)
{
  if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
    /*
    bool hasAttribute( const QString &qualifiedName ) const
    */
    QXmlStreamAttributes *obj = (QXmlStreamAttributes *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      RBOOL(obj->hasAttribute(PQSTRING(1)));
    }
  }
  else if (ISNUMPAR(1) && HB_ISOBJECT(1))
  {
    /*
    bool hasAttribute( QLatin1String qualifiedName ) const
    */
    QXmlStreamAttributes *obj = (QXmlStreamAttributes *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      RBOOL(obj->hasAttribute(*PQLATIN1STRING(1)));
    }
  }
  else if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2))
  {
    /*
    bool hasAttribute( const QString &namespaceUri, const QString &name ) const
    */
    QXmlStreamAttributes *obj = (QXmlStreamAttributes *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      RBOOL(obj->hasAttribute(PQSTRING(1), PQSTRING(2)));
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QStringRef value( const QString &namespaceUri, const QString &name ) const
*/
HB_FUNC_STATIC(QXMLSTREAMATTRIBUTES_VALUE1)
{
  QXmlStreamAttributes *obj = (QXmlStreamAttributes *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2))
    {
#endif
      QStringRef *ptr = new QStringRef(obj->value(PQSTRING(1), PQSTRING(2)));
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
QStringRef value( const QString &namespaceUri, QLatin1String name ) const
*/
HB_FUNC_STATIC(QXMLSTREAMATTRIBUTES_VALUE2)
{
  QXmlStreamAttributes *obj = (QXmlStreamAttributes *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISCHAR(1) && ISQLATIN1STRING(2))
    {
#endif
      QStringRef *ptr = new QStringRef(obj->value(PQSTRING(1), *PQLATIN1STRING(2)));
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
QStringRef value( QLatin1String namespaceUri, QLatin1String name ) const
*/
HB_FUNC_STATIC(QXMLSTREAMATTRIBUTES_VALUE3)
{
  QXmlStreamAttributes *obj = (QXmlStreamAttributes *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && ISQLATIN1STRING(1) && ISQLATIN1STRING(2))
    {
#endif
      QStringRef *ptr = new QStringRef(obj->value(*PQLATIN1STRING(1), *PQLATIN1STRING(2)));
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
QStringRef value( const QString &qualifiedName ) const
*/
HB_FUNC_STATIC(QXMLSTREAMATTRIBUTES_VALUE4)
{
  QXmlStreamAttributes *obj = (QXmlStreamAttributes *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      QStringRef *ptr = new QStringRef(obj->value(PQSTRING(1)));
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
QStringRef value( QLatin1String qualifiedName ) const
*/
HB_FUNC_STATIC(QXMLSTREAMATTRIBUTES_VALUE5)
{
  QXmlStreamAttributes *obj = (QXmlStreamAttributes *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQLATIN1STRING(1))
    {
#endif
      QStringRef *ptr = new QStringRef(obj->value(*PQLATIN1STRING(1)));
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

HB_FUNC_STATIC(QXMLSTREAMATTRIBUTES_VALUE)
{
  if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2))
  {
    HB_FUNC_EXEC(QXMLSTREAMATTRIBUTES_VALUE1);
  }
  else if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISOBJECT(2))
  {
    HB_FUNC_EXEC(QXMLSTREAMATTRIBUTES_VALUE2);
  }
  else if (ISNUMPAR(2) && HB_ISOBJECT(1) && HB_ISOBJECT(2))
  {
    HB_FUNC_EXEC(QXMLSTREAMATTRIBUTES_VALUE3);
  }
  else if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
    HB_FUNC_EXEC(QXMLSTREAMATTRIBUTES_VALUE4);
  }
  else if (ISNUMPAR(1) && HB_ISOBJECT(1))
  {
    HB_FUNC_EXEC(QXMLSTREAMATTRIBUTES_VALUE5);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QXMLSTREAMATTRIBUTES_NEWFROM)
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

HB_FUNC_STATIC(QXMLSTREAMATTRIBUTES_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QXMLSTREAMATTRIBUTES_NEWFROM);
}

HB_FUNC_STATIC(QXMLSTREAMATTRIBUTES_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QXMLSTREAMATTRIBUTES_NEWFROM);
}

HB_FUNC_STATIC(QXMLSTREAMATTRIBUTES_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QXMLSTREAMATTRIBUTES_SETSELFDESTRUCTION)
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

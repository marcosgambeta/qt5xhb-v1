//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
REQUEST QURL
REQUEST QVARIANT
#endif

CLASS QOAuth1Signature

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD setHttpRequestMethod
   METHOD url
   METHOD setUrl
   METHOD addRequestBody
   METHOD insert
   METHOD keys
   METHOD take
   METHOD value
   METHOD clientSharedKey
   METHOD setClientSharedKey
   METHOD tokenSecret
   METHOD setTokenSecret
   METHOD hmacSha1
   METHOD rsaSha1
   METHOD plainText
   METHOD swap

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QOAuth1Signature
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
#include <QtNetworkAuth/QOAuth1Signature>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
#include <QtNetworkAuth/QOAuth1Signature>
#endif
#endif

    /*
    QOAuth1Signature( const QOAuth1Signature &other )
    */
    void QOAuth1Signature_new3()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
  QOAuth1Signature *obj = new QOAuth1Signature(*PQOAUTH1SIGNATURE(1));
  Qt5xHb::returnNewObject(obj, true);
#endif
}

HB_FUNC_STATIC(QOAUTH1SIGNATURE_NEW)
{
  if (ISNUMPAR(1) && ISQOAUTH1SIGNATURE(1))
  {
    QOAuth1Signature_new3();
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
~QOAuth1Signature()
*/
HB_FUNC_STATIC(QOAUTH1SIGNATURE_DELETE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
  QOAuth1Signature *obj = (QOAuth1Signature *)Qt5xHb::itemGetPtrStackSelfItem();

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
void setHttpRequestMethod( QOAuth1Signature::HttpRequestMethod method )
*/
HB_FUNC_STATIC(QOAUTH1SIGNATURE_SETHTTPREQUESTMETHOD)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
  QOAuth1Signature *obj = (QOAuth1Signature *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setHttpRequestMethod((QOAuth1Signature::HttpRequestMethod)hb_parni(1));
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
QUrl url() const
*/
HB_FUNC_STATIC(QOAUTH1SIGNATURE_URL)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
  QOAuth1Signature *obj = (QOAuth1Signature *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QUrl *ptr = new QUrl(obj->url());
      Qt5xHb::createReturnClass(ptr, "QURL", true);
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
void setUrl( const QUrl &url )
*/
HB_FUNC_STATIC(QOAUTH1SIGNATURE_SETURL)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
  QOAuth1Signature *obj = (QOAuth1Signature *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQURL(1))
    {
#endif
      obj->setUrl(*PQURL(1));
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
void addRequestBody( const QUrlQuery &body )
*/
HB_FUNC_STATIC(QOAUTH1SIGNATURE_ADDREQUESTBODY)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
  QOAuth1Signature *obj = (QOAuth1Signature *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQURLQUERY(1))
    {
#endif
      obj->addRequestBody(*PQURLQUERY(1));
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
void insert( const QString &key, const QVariant &value )
*/
HB_FUNC_STATIC(QOAUTH1SIGNATURE_INSERT)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
  QOAuth1Signature *obj = (QOAuth1Signature *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISCHAR(1) && ISQVARIANT(2))
    {
#endif
      obj->insert(PQSTRING(1), *PQVARIANT(2));
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
QList<QString> keys() const
*/
HB_FUNC_STATIC(QOAUTH1SIGNATURE_KEYS)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
  QOAuth1Signature *obj = (QOAuth1Signature *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QList<QString> list = obj->keys();
      PHB_ITEM pArray = hb_itemArrayNew(0);
      for (int i = 0; i < list.count(); i++)
      {
        PHB_ITEM pItem = hb_itemPutC(NULL, (const char *)list[i].toLatin1().data());
        hb_arrayAddForward(pArray, pItem);
        hb_itemRelease(pItem);
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
QVariant take( const QString &key )
*/
HB_FUNC_STATIC(QOAUTH1SIGNATURE_TAKE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
  QOAuth1Signature *obj = (QOAuth1Signature *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      QVariant *ptr = new QVariant(obj->take(PQSTRING(1)));
      Qt5xHb::createReturnClass(ptr, "QVARIANT", true);
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
QVariant value( const QString &key, const QVariant &defaultValue = QVariant() ) const
*/
HB_FUNC_STATIC(QOAUTH1SIGNATURE_VALUE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
  QOAuth1Signature *obj = (QOAuth1Signature *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 2) && HB_ISCHAR(1) && (ISQVARIANT(2) || HB_ISNIL(2)))
    {
#endif
      QVariant *ptr =
          new QVariant(obj->value(PQSTRING(1), HB_ISNIL(2) ? QVariant() : *(QVariant *)Qt5xHb::itemGetPtr(2)));
      Qt5xHb::createReturnClass(ptr, "QVARIANT", true);
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
QString clientSharedKey() const
*/
HB_FUNC_STATIC(QOAUTH1SIGNATURE_CLIENTSHAREDKEY)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
  QOAuth1Signature *obj = (QOAuth1Signature *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->clientSharedKey());
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
void setClientSharedKey( const QString &secret )
*/
HB_FUNC_STATIC(QOAUTH1SIGNATURE_SETCLIENTSHAREDKEY)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
  QOAuth1Signature *obj = (QOAuth1Signature *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->setClientSharedKey(PQSTRING(1));
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
QString tokenSecret() const
*/
HB_FUNC_STATIC(QOAUTH1SIGNATURE_TOKENSECRET)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
  QOAuth1Signature *obj = (QOAuth1Signature *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->tokenSecret());
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
void setTokenSecret( const QString &secret )
*/
HB_FUNC_STATIC(QOAUTH1SIGNATURE_SETTOKENSECRET)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
  QOAuth1Signature *obj = (QOAuth1Signature *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->setTokenSecret(PQSTRING(1));
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
QByteArray hmacSha1() const
*/
HB_FUNC_STATIC(QOAUTH1SIGNATURE_HMACSHA1)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
  QOAuth1Signature *obj = (QOAuth1Signature *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QByteArray *ptr = new QByteArray(obj->hmacSha1());
      Qt5xHb::createReturnClass(ptr, "QBYTEARRAY", true);
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
QByteArray rsaSha1() const
*/
HB_FUNC_STATIC(QOAUTH1SIGNATURE_RSASHA1)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
  QOAuth1Signature *obj = (QOAuth1Signature *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QByteArray *ptr = new QByteArray(obj->rsaSha1());
      Qt5xHb::createReturnClass(ptr, "QBYTEARRAY", true);
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

HB_FUNC_STATIC(QOAUTH1SIGNATURE_PLAINTEXT)
{
  if (ISNUMPAR(0))
  {
    /*
    QByteArray plainText() const
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
    QOAuth1Signature *obj = (QOAuth1Signature *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      QByteArray *ptr = new QByteArray(obj->plainText());
      Qt5xHb::createReturnClass(ptr, "QBYTEARRAY", true);
    }
#endif
  }
  else if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2))
  {
    /*
    static QByteArray plainText( const QString &clientSharedSecret, const QString &tokenSecret )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
    QByteArray *ptr = new QByteArray(QOAuth1Signature::plainText(PQSTRING(1), PQSTRING(2)));
    Qt5xHb::createReturnClass(ptr, "QBYTEARRAY", true);
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void swap( QOAuth1Signature &other )
*/
HB_FUNC_STATIC(QOAUTH1SIGNATURE_SWAP)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
  QOAuth1Signature *obj = (QOAuth1Signature *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQOAUTH1SIGNATURE(1))
    {
#endif
      obj->swap(*PQOAUTH1SIGNATURE(1));
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

HB_FUNC_STATIC(QOAUTH1SIGNATURE_NEWFROM)
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

HB_FUNC_STATIC(QOAUTH1SIGNATURE_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QOAUTH1SIGNATURE_NEWFROM);
}

HB_FUNC_STATIC(QOAUTH1SIGNATURE_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QOAUTH1SIGNATURE_NEWFROM);
}

HB_FUNC_STATIC(QOAUTH1SIGNATURE_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QOAUTH1SIGNATURE_SETSELFDESTRUCTION)
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

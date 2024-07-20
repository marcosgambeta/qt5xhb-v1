//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
REQUEST QDATETIME
REQUEST QSSLCERTIFICATEEXTENSION
REQUEST QSSLERROR
REQUEST QSSLKEY
#endif

CLASS QSslCertificate

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD swap
   METHOD isNull
   METHOD isValid
   METHOD isBlacklisted
   METHOD isSelfSigned
   METHOD clear
   METHOD version
   METHOD serialNumber
   METHOD digest
   METHOD issuerInfo
   METHOD subjectInfo
   METHOD subjectInfoAttributes
   METHOD issuerInfoAttributes
   METHOD effectiveDate
   METHOD expiryDate
   METHOD publicKey
   METHOD extensions
   METHOD toPem
   METHOD toDer
   METHOD toText
   METHOD fromPath
   METHOD fromDevice
   METHOD fromData
   METHOD verify
   METHOD handle

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QSslCertificate
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtNetwork/QSslCertificate>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtNetwork/QSslCertificate>
#endif

#include <QtCore/QDateTime>
#include <QtNetwork/QSslKey>
#include <QtCore/QStringList>
#include <QtNetwork/QSslCertificateExtension>
#include <QtNetwork/QSslError>

HB_FUNC_STATIC(QSSLCERTIFICATE_NEW)
{
  if (ISBETWEEN(1, 2) && ISQIODEVICE(1) && (HB_ISNUM(2) || HB_ISNIL(2)))
  {
    /*
    QSslCertificate( QIODevice * device, QSsl::EncodingFormat format = QSsl::Pem )
    */
    QSslCertificate *obj = new QSslCertificate(PQIODEVICE(1), HB_ISNIL(2) ? (QSsl::EncodingFormat)QSsl::Pem
                                                                          : (QSsl::EncodingFormat)hb_parni(2));
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISBETWEEN(0, 2) && (ISQBYTEARRAY(1) || HB_ISNIL(1)) && (HB_ISNUM(2) || HB_ISNIL(2)))
  {
    /*
    QSslCertificate( const QByteArray &data = QByteArray(), QSsl::EncodingFormat format = QSsl::Pem )
    */
    QSslCertificate *obj =
        new QSslCertificate(HB_ISNIL(1) ? QByteArray() : *(QByteArray *)Qt5xHb::itemGetPtr(1),
                            HB_ISNIL(2) ? (QSsl::EncodingFormat)QSsl::Pem : (QSsl::EncodingFormat)hb_parni(2));
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQSSLCERTIFICATE(1))
  {
    /*
    QSslCertificate( const QSslCertificate &other )
    */
    QSslCertificate *obj = new QSslCertificate(*PQSSLCERTIFICATE(1));
    Qt5xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
~QSslCertificate()
*/
HB_FUNC_STATIC(QSSLCERTIFICATE_DELETE)
{
  QSslCertificate *obj = (QSslCertificate *)Qt5xHb::itemGetPtrStackSelfItem();

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
void swap( QSslCertificate &other ) Q_DECL_NOTHROW
*/
HB_FUNC_STATIC(QSSLCERTIFICATE_SWAP)
{
  QSslCertificate *obj = (QSslCertificate *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQSSLCERTIFICATE(1))
    {
#endif
      obj->swap(*PQSSLCERTIFICATE(1));
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
bool isNull() const
*/
HB_FUNC_STATIC(QSSLCERTIFICATE_ISNULL)
{
  QSslCertificate *obj = (QSslCertificate *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isNull());
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
bool isValid() const
*/
HB_FUNC_STATIC(QSSLCERTIFICATE_ISVALID)
{
#if QT_DEPRECATED_SINCE(5, 0)
  QSslCertificate *obj = (QSslCertificate *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isValid());
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
bool isBlacklisted() const
*/
HB_FUNC_STATIC(QSSLCERTIFICATE_ISBLACKLISTED)
{
  QSslCertificate *obj = (QSslCertificate *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isBlacklisted());
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
bool isSelfSigned() const
*/
HB_FUNC_STATIC(QSSLCERTIFICATE_ISSELFSIGNED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 4, 0))
  QSslCertificate *obj = (QSslCertificate *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isSelfSigned());
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
HB_FUNC_STATIC(QSSLCERTIFICATE_CLEAR)
{
  QSslCertificate *obj = (QSslCertificate *)Qt5xHb::itemGetPtrStackSelfItem();

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
}

/*
QByteArray version() const
*/
HB_FUNC_STATIC(QSSLCERTIFICATE_VERSION)
{
  QSslCertificate *obj = (QSslCertificate *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QByteArray *ptr = new QByteArray(obj->version());
      Qt5xHb::createReturnClass(ptr, "QBYTEARRAY", true);
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
QByteArray serialNumber() const
*/
HB_FUNC_STATIC(QSSLCERTIFICATE_SERIALNUMBER)
{
  QSslCertificate *obj = (QSslCertificate *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QByteArray *ptr = new QByteArray(obj->serialNumber());
      Qt5xHb::createReturnClass(ptr, "QBYTEARRAY", true);
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
QByteArray digest( QCryptographicHash::Algorithm algorithm = QCryptographicHash::Md5 ) const
*/
HB_FUNC_STATIC(QSSLCERTIFICATE_DIGEST)
{
  QSslCertificate *obj = (QSslCertificate *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(0, 1) && (HB_ISNUM(1) || HB_ISNIL(1)))
    {
#endif
      QByteArray *ptr = new QByteArray(obj->digest(HB_ISNIL(1) ? (QCryptographicHash::Algorithm)QCryptographicHash::Md5
                                                               : (QCryptographicHash::Algorithm)hb_parni(1)));
      Qt5xHb::createReturnClass(ptr, "QBYTEARRAY", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QSSLCERTIFICATE_ISSUERINFO)
{
  if (ISNUMPAR(1) && HB_ISNUM(1))
  {
    /*
    QStringList issuerInfo( QSslCertificate::SubjectInfo subject ) const
    */
    QSslCertificate *obj = (QSslCertificate *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      RQSTRINGLIST(obj->issuerInfo((QSslCertificate::SubjectInfo)hb_parni(1)));
    }
  }
  else if (ISNUMPAR(1) && ISQBYTEARRAY(1))
  {
    /*
    QStringList issuerInfo( const QByteArray &attribute ) const
    */
    QSslCertificate *obj = (QSslCertificate *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      RQSTRINGLIST(obj->issuerInfo(*PQBYTEARRAY(1)));
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QSSLCERTIFICATE_SUBJECTINFO)
{
  if (ISNUMPAR(1) && HB_ISNUM(1))
  {
    /*
    QStringList subjectInfo( QSslCertificate::SubjectInfo subject ) const
    */
    QSslCertificate *obj = (QSslCertificate *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      RQSTRINGLIST(obj->subjectInfo((QSslCertificate::SubjectInfo)hb_parni(1)));
    }
  }
  else if (ISNUMPAR(1) && ISQBYTEARRAY(1))
  {
    /*
    QStringList subjectInfo( const QByteArray &attribute ) const
    */
    QSslCertificate *obj = (QSslCertificate *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      RQSTRINGLIST(obj->subjectInfo(*PQBYTEARRAY(1)));
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QList<QByteArray> subjectInfoAttributes() const
*/
HB_FUNC_STATIC(QSSLCERTIFICATE_SUBJECTINFOATTRIBUTES)
{
  QSslCertificate *obj = (QSslCertificate *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QList<QByteArray> list = obj->subjectInfoAttributes();
      PHB_DYNS pDynSym = hb_dynsymFindName("QBYTEARRAY");
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
          PHB_ITEM pItem = hb_itemPutPtr(NULL, new QByteArray(list[i]));
          hb_objSendMsg(pObject, "_POINTER", 1, pItem);
          hb_itemRelease(pItem);
          PHB_ITEM pDestroy = hb_itemPutL(NULL, true);
          hb_objSendMsg(pObject, "_SELF_DESTRUCTION", 1, pDestroy);
          hb_itemRelease(pDestroy);
          hb_arrayAddForward(pArray, pObject);
          hb_itemRelease(pObject);
        }
      }
      else
      {
        hb_errRT_BASE(EG_NOFUNC, 1001, NULL, "QBYTEARRAY", HB_ERR_ARGS_BASEPARAMS);
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
}

/*
QList<QByteArray> issuerInfoAttributes() const
*/
HB_FUNC_STATIC(QSSLCERTIFICATE_ISSUERINFOATTRIBUTES)
{
  QSslCertificate *obj = (QSslCertificate *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QList<QByteArray> list = obj->issuerInfoAttributes();
      PHB_DYNS pDynSym = hb_dynsymFindName("QBYTEARRAY");
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
          PHB_ITEM pItem = hb_itemPutPtr(NULL, new QByteArray(list[i]));
          hb_objSendMsg(pObject, "_POINTER", 1, pItem);
          hb_itemRelease(pItem);
          PHB_ITEM pDestroy = hb_itemPutL(NULL, true);
          hb_objSendMsg(pObject, "_SELF_DESTRUCTION", 1, pDestroy);
          hb_itemRelease(pDestroy);
          hb_arrayAddForward(pArray, pObject);
          hb_itemRelease(pObject);
        }
      }
      else
      {
        hb_errRT_BASE(EG_NOFUNC, 1001, NULL, "QBYTEARRAY", HB_ERR_ARGS_BASEPARAMS);
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
}

/*
QDateTime effectiveDate() const
*/
HB_FUNC_STATIC(QSSLCERTIFICATE_EFFECTIVEDATE)
{
  QSslCertificate *obj = (QSslCertificate *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QDateTime *ptr = new QDateTime(obj->effectiveDate());
      Qt5xHb::createReturnClass(ptr, "QDATETIME", true);
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
QDateTime expiryDate() const
*/
HB_FUNC_STATIC(QSSLCERTIFICATE_EXPIRYDATE)
{
  QSslCertificate *obj = (QSslCertificate *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QDateTime *ptr = new QDateTime(obj->expiryDate());
      Qt5xHb::createReturnClass(ptr, "QDATETIME", true);
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
QSslKey publicKey() const
*/
HB_FUNC_STATIC(QSSLCERTIFICATE_PUBLICKEY)
{
  QSslCertificate *obj = (QSslCertificate *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QSslKey *ptr = new QSslKey(obj->publicKey());
      Qt5xHb::createReturnClass(ptr, "QSSLKEY", true);
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
QList<QSslCertificateExtension> extensions() const
*/
HB_FUNC_STATIC(QSSLCERTIFICATE_EXTENSIONS)
{
  QSslCertificate *obj = (QSslCertificate *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QList<QSslCertificateExtension> list = obj->extensions();
      PHB_DYNS pDynSym = hb_dynsymFindName("QSSLCERTIFICATEEXTENSION");
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
          PHB_ITEM pItem = hb_itemPutPtr(NULL, new QSslCertificateExtension(list[i]));
          hb_objSendMsg(pObject, "_POINTER", 1, pItem);
          hb_itemRelease(pItem);
          PHB_ITEM pDestroy = hb_itemPutL(NULL, true);
          hb_objSendMsg(pObject, "_SELF_DESTRUCTION", 1, pDestroy);
          hb_itemRelease(pDestroy);
          hb_arrayAddForward(pArray, pObject);
          hb_itemRelease(pObject);
        }
      }
      else
      {
        hb_errRT_BASE(EG_NOFUNC, 1001, NULL, "QSSLCERTIFICATEEXTENSION", HB_ERR_ARGS_BASEPARAMS);
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
}

/*
QByteArray toPem() const
*/
HB_FUNC_STATIC(QSSLCERTIFICATE_TOPEM)
{
  QSslCertificate *obj = (QSslCertificate *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QByteArray *ptr = new QByteArray(obj->toPem());
      Qt5xHb::createReturnClass(ptr, "QBYTEARRAY", true);
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
QByteArray toDer() const
*/
HB_FUNC_STATIC(QSSLCERTIFICATE_TODER)
{
  QSslCertificate *obj = (QSslCertificate *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QByteArray *ptr = new QByteArray(obj->toDer());
      Qt5xHb::createReturnClass(ptr, "QBYTEARRAY", true);
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
QString toText() const
*/
HB_FUNC_STATIC(QSSLCERTIFICATE_TOTEXT)
{
  QSslCertificate *obj = (QSslCertificate *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->toText());
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
static QList<QSslCertificate> fromPath( const QString &path, QSsl::EncodingFormat format = QSsl::Pem,
QRegExp::PatternSyntax syntax = QRegExp::FixedString )
*/
HB_FUNC_STATIC(QSSLCERTIFICATE_FROMPATH)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISBETWEEN(1, 3) && HB_ISCHAR(1) && (HB_ISNUM(2) || HB_ISNIL(2)) && (HB_ISNUM(3) || HB_ISNIL(3)))
  {
#endif
    QList<QSslCertificate> list = QSslCertificate::fromPath(
        PQSTRING(1), HB_ISNIL(2) ? (QSsl::EncodingFormat)QSsl::Pem : (QSsl::EncodingFormat)hb_parni(2),
        HB_ISNIL(3) ? (QRegExp::PatternSyntax)QRegExp::FixedString : (QRegExp::PatternSyntax)hb_parni(3));
    PHB_DYNS pDynSym = hb_dynsymFindName("QSSLCERTIFICATE");
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
        PHB_ITEM pItem = hb_itemPutPtr(NULL, new QSslCertificate(list[i]));
        hb_objSendMsg(pObject, "_POINTER", 1, pItem);
        hb_itemRelease(pItem);
        PHB_ITEM pDestroy = hb_itemPutL(NULL, true);
        hb_objSendMsg(pObject, "_SELF_DESTRUCTION", 1, pDestroy);
        hb_itemRelease(pDestroy);
        hb_arrayAddForward(pArray, pObject);
        hb_itemRelease(pObject);
      }
    }
    else
    {
      hb_errRT_BASE(EG_NOFUNC, 1001, NULL, "QSSLCERTIFICATE", HB_ERR_ARGS_BASEPARAMS);
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

/*
static QList<QSslCertificate> fromDevice( QIODevice * device, QSsl::EncodingFormat format = QSsl::Pem )
*/
HB_FUNC_STATIC(QSSLCERTIFICATE_FROMDEVICE)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISBETWEEN(1, 2) && ISQIODEVICE(1) && (HB_ISNUM(2) || HB_ISNIL(2)))
  {
#endif
    QList<QSslCertificate> list = QSslCertificate::fromDevice(
        PQIODEVICE(1), HB_ISNIL(2) ? (QSsl::EncodingFormat)QSsl::Pem : (QSsl::EncodingFormat)hb_parni(2));
    PHB_DYNS pDynSym = hb_dynsymFindName("QSSLCERTIFICATE");
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
        PHB_ITEM pItem = hb_itemPutPtr(NULL, new QSslCertificate(list[i]));
        hb_objSendMsg(pObject, "_POINTER", 1, pItem);
        hb_itemRelease(pItem);
        PHB_ITEM pDestroy = hb_itemPutL(NULL, true);
        hb_objSendMsg(pObject, "_SELF_DESTRUCTION", 1, pDestroy);
        hb_itemRelease(pDestroy);
        hb_arrayAddForward(pArray, pObject);
        hb_itemRelease(pObject);
      }
    }
    else
    {
      hb_errRT_BASE(EG_NOFUNC, 1001, NULL, "QSSLCERTIFICATE", HB_ERR_ARGS_BASEPARAMS);
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

/*
static QList<QSslCertificate> fromData( const QByteArray &data, QSsl::EncodingFormat format = QSsl::Pem )
*/
HB_FUNC_STATIC(QSSLCERTIFICATE_FROMDATA)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISBETWEEN(1, 2) && ISQBYTEARRAY(1) && (HB_ISNUM(2) || HB_ISNIL(2)))
  {
#endif
    QList<QSslCertificate> list = QSslCertificate::fromData(
        *PQBYTEARRAY(1), HB_ISNIL(2) ? (QSsl::EncodingFormat)QSsl::Pem : (QSsl::EncodingFormat)hb_parni(2));
    PHB_DYNS pDynSym = hb_dynsymFindName("QSSLCERTIFICATE");
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
        PHB_ITEM pItem = hb_itemPutPtr(NULL, new QSslCertificate(list[i]));
        hb_objSendMsg(pObject, "_POINTER", 1, pItem);
        hb_itemRelease(pItem);
        PHB_ITEM pDestroy = hb_itemPutL(NULL, true);
        hb_objSendMsg(pObject, "_SELF_DESTRUCTION", 1, pDestroy);
        hb_itemRelease(pDestroy);
        hb_arrayAddForward(pArray, pObject);
        hb_itemRelease(pObject);
      }
    }
    else
    {
      hb_errRT_BASE(EG_NOFUNC, 1001, NULL, "QSSLCERTIFICATE", HB_ERR_ARGS_BASEPARAMS);
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

/*
static QList<QSslError> verify( QList<QSslCertificate> certificateChain, const QString &hostName = QString() )
*/
HB_FUNC_STATIC(QSSLCERTIFICATE_VERIFY)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISBETWEEN(1, 2) && HB_ISARRAY(1) && (HB_ISCHAR(2) || HB_ISNIL(2)))
  {
#endif
    QList<QSslCertificate> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int nLen1 = hb_arrayLen(aList1);
    for (int i1 = 0; i1 < nLen1; i1++)
    {
      par1 << *(QSslCertificate *)hb_itemGetPtr(hb_objSendMsg(hb_arrayGetItemPtr(aList1, i1 + 1), "POINTER", 0));
    }
    QList<QSslError> list = QSslCertificate::verify(par1, OPQSTRING(2, QString()));
    PHB_DYNS pDynSym = hb_dynsymFindName("QSSLERROR");
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
        PHB_ITEM pItem = hb_itemPutPtr(NULL, new QSslError(list[i]));
        hb_objSendMsg(pObject, "_POINTER", 1, pItem);
        hb_itemRelease(pItem);
        PHB_ITEM pDestroy = hb_itemPutL(NULL, true);
        hb_objSendMsg(pObject, "_SELF_DESTRUCTION", 1, pDestroy);
        hb_itemRelease(pDestroy);
        hb_arrayAddForward(pArray, pObject);
        hb_itemRelease(pObject);
      }
    }
    else
    {
      hb_errRT_BASE(EG_NOFUNC, 1001, NULL, "QSSLERROR", HB_ERR_ARGS_BASEPARAMS);
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

/*
Qt::HANDLE handle() const
*/
HB_FUNC_STATIC(QSSLCERTIFICATE_HANDLE)
{
  QSslCertificate *obj = (QSslCertificate *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      hb_retptr((Qt::HANDLE)obj->handle());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QSSLCERTIFICATE_NEWFROM)
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

HB_FUNC_STATIC(QSSLCERTIFICATE_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QSSLCERTIFICATE_NEWFROM);
}

HB_FUNC_STATIC(QSSLCERTIFICATE_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QSSLCERTIFICATE_NEWFROM);
}

HB_FUNC_STATIC(QSSLCERTIFICATE_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QSSLCERTIFICATE_SETSELFDESTRUCTION)
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

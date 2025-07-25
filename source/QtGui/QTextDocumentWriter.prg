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
REQUEST QIODEVICE
REQUEST QTEXTCODEC
#endif

CLASS QTextDocumentWriter

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD setFormat
   METHOD format
   METHOD setDevice
   METHOD device
   METHOD setFileName
   METHOD fileName
   METHOD write
   METHOD setCodec
   METHOD codec

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QTextDocumentWriter
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QTextDocumentWriter>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtGui/QTextDocumentWriter>
#endif

#include <QtCore/QIODevice>

HB_FUNC_STATIC(QTEXTDOCUMENTWRITER_NEW)
{
  if (ISNUMPAR(0))
  {
    /*
    QTextDocumentWriter()
    */
    QTextDocumentWriter *obj = new QTextDocumentWriter();
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(2) && ISQIODEVICE(1) && ISQBYTEARRAY(2))
  {
    /*
    QTextDocumentWriter( QIODevice * device, const QByteArray &format )
    */
    QTextDocumentWriter *obj = new QTextDocumentWriter(PQIODEVICE(1), *PQBYTEARRAY(2));
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISBETWEEN(1, 2) && HB_ISCHAR(1) && (ISQBYTEARRAY(2) || HB_ISNIL(2)))
  {
    /*
    QTextDocumentWriter( const QString &fileName, const QByteArray &format = QByteArray() )
    */
    QTextDocumentWriter *obj =
        new QTextDocumentWriter(PQSTRING(1), HB_ISNIL(2) ? QByteArray() : *(QByteArray *)Qt5xHb::itemGetPtr(2));
    Qt5xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QTEXTDOCUMENTWRITER_DELETE)
{
  QTextDocumentWriter *obj = (QTextDocumentWriter *)Qt5xHb::itemGetPtrStackSelfItem();

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
void setFormat( const QByteArray &format )
*/
HB_FUNC_STATIC(QTEXTDOCUMENTWRITER_SETFORMAT)
{
  QTextDocumentWriter *obj = (QTextDocumentWriter *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQBYTEARRAY(1))
    {
#endif
      obj->setFormat(*PQBYTEARRAY(1));
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
QByteArray format() const
*/
HB_FUNC_STATIC(QTEXTDOCUMENTWRITER_FORMAT)
{
  QTextDocumentWriter *obj = (QTextDocumentWriter *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QByteArray *ptr = new QByteArray(obj->format());
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
void setDevice( QIODevice * device )
*/
HB_FUNC_STATIC(QTEXTDOCUMENTWRITER_SETDEVICE)
{
  QTextDocumentWriter *obj = (QTextDocumentWriter *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQIODEVICE(1))
    {
#endif
      obj->setDevice(PQIODEVICE(1));
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
QIODevice * device() const
*/
HB_FUNC_STATIC(QTEXTDOCUMENTWRITER_DEVICE)
{
  QTextDocumentWriter *obj = (QTextDocumentWriter *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QIODevice *ptr = obj->device();
      Qt5xHb::createReturnQObjectClass(ptr, "QIODEVICE");
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
void setFileName( const QString &fileName )
*/
HB_FUNC_STATIC(QTEXTDOCUMENTWRITER_SETFILENAME)
{
  QTextDocumentWriter *obj = (QTextDocumentWriter *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->setFileName(PQSTRING(1));
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
QString fileName() const
*/
HB_FUNC_STATIC(QTEXTDOCUMENTWRITER_FILENAME)
{
  QTextDocumentWriter *obj = (QTextDocumentWriter *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->fileName());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QTEXTDOCUMENTWRITER_WRITE)
{
  if (ISNUMPAR(1) && ISQTEXTDOCUMENT(1))
  {
    /*
    bool write( const QTextDocument * document )
    */
    QTextDocumentWriter *obj = (QTextDocumentWriter *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      RBOOL(obj->write(PQTEXTDOCUMENT(1)));
    }
  }
  else if (ISNUMPAR(1) && ISQTEXTDOCUMENTFRAGMENT(1))
  {
    /*
    bool write( const QTextDocumentFragment &fragment )
    */
    QTextDocumentWriter *obj = (QTextDocumentWriter *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      RBOOL(obj->write(*PQTEXTDOCUMENTFRAGMENT(1)));
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void setCodec( QTextCodec * codec )
*/
HB_FUNC_STATIC(QTEXTDOCUMENTWRITER_SETCODEC)
{
  QTextDocumentWriter *obj = (QTextDocumentWriter *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQTEXTCODEC(1))
    {
#endif
      obj->setCodec(PQTEXTCODEC(1));
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
QTextCodec * codec() const
*/
HB_FUNC_STATIC(QTEXTDOCUMENTWRITER_CODEC)
{
  QTextDocumentWriter *obj = (QTextDocumentWriter *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QTextCodec *ptr = obj->codec();
      Qt5xHb::createReturnClass(ptr, "QTEXTCODEC", false);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QTEXTDOCUMENTWRITER_NEWFROM)
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

HB_FUNC_STATIC(QTEXTDOCUMENTWRITER_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QTEXTDOCUMENTWRITER_NEWFROM);
}

HB_FUNC_STATIC(QTEXTDOCUMENTWRITER_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QTEXTDOCUMENTWRITER_NEWFROM);
}

HB_FUNC_STATIC(QTEXTDOCUMENTWRITER_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QTEXTDOCUMENTWRITER_SETSELFDESTRUCTION)
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

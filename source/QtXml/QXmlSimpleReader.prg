//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QXmlSimpleReader INHERIT QXmlReader

   METHOD new
   METHOD delete
   METHOD parse
   METHOD parseContinue

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QXmlSimpleReader
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtXml/QXmlSimpleReader>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtXml/QXmlSimpleReader>
#endif

    /*
    QXmlSimpleReader()
    */
HB_FUNC_STATIC(QXMLSIMPLEREADER_NEW)
{
  if (ISNUMPAR(0))
  {
    QXmlSimpleReader *obj = new QXmlSimpleReader();
    Qt5xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QXMLSIMPLEREADER_DELETE)
{
  QXmlSimpleReader *obj = (QXmlSimpleReader *)Qt5xHb::itemGetPtrStackSelfItem();

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
virtual bool parse( const QXmlInputSource * input, bool incremental )
*/
HB_FUNC_STATIC(QXMLSIMPLEREADER_PARSE)
{
  QXmlSimpleReader *obj = (QXmlSimpleReader *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && ISQXMLINPUTSOURCE(1) && HB_ISLOG(2))
    {
#endif
      RBOOL(obj->parse(PQXMLINPUTSOURCE(1), PBOOL(2)));
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
virtual bool parseContinue()
*/
HB_FUNC_STATIC(QXMLSIMPLEREADER_PARSECONTINUE)
{
  QXmlSimpleReader *obj = (QXmlSimpleReader *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->parseContinue());
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

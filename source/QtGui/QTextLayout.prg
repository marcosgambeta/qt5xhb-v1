//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
REQUEST QFONT
REQUEST QPOINTF
REQUEST QRECTF
REQUEST QTEXTLINE
REQUEST QTEXTOPTION
#endif

CLASS QTextLayout

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD setFont
   METHOD font
   METHOD setRawFont
   METHOD setText
   METHOD text
   METHOD setTextOption
   METHOD textOption
   METHOD setPreeditArea
   METHOD preeditAreaPosition
   METHOD preeditAreaText
   METHOD clearAdditionalFormats
   METHOD setCacheEnabled
   METHOD cacheEnabled
   METHOD setCursorMoveStyle
   METHOD cursorMoveStyle
   METHOD beginLayout
   METHOD endLayout
   METHOD clearLayout
   METHOD createLine
   METHOD lineCount
   METHOD lineAt
   METHOD lineForTextPosition
   METHOD isValidCursorPosition
   METHOD nextCursorPosition
   METHOD previousCursorPosition
   METHOD leftCursorPosition
   METHOD rightCursorPosition
   METHOD drawCursor
   METHOD position
   METHOD setPosition
   METHOD boundingRect
   METHOD minimumWidth
   METHOD maximumWidth
   METHOD setFlags

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QTextLayout
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QTextLayout>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtGui/QTextLayout>
#endif

#include <QtGui/QTextCursor>
#include <QtGui/QTextBlock>

HB_FUNC_STATIC(QTEXTLAYOUT_NEW)
{
  if (ISNUMPAR(0))
  {
    /*
    QTextLayout()
    */
    QTextLayout *obj = new QTextLayout();
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
    /*
    QTextLayout( const QString &text )
    */
    QTextLayout *obj = new QTextLayout(PQSTRING(1));
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISBETWEEN(2, 3) && HB_ISCHAR(1) && ISQFONT(2) && (HB_ISOBJECT(3) || HB_ISNIL(3)))
  {
    /*
    QTextLayout( const QString &text, const QFont &font, QPaintDevice * paintdevice = 0 )
    */
    QTextLayout *obj =
        new QTextLayout(PQSTRING(1), *PQFONT(2), HB_ISNIL(3) ? 0 : (QPaintDevice *)Qt5xHb::itemGetPtr(3));
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQTEXTBLOCK(1))
  {
    /*
    QTextLayout( const QTextBlock &b )
    */
    QTextLayout *obj = new QTextLayout(*PQTEXTBLOCK(1));
    Qt5xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QTEXTLAYOUT_DELETE)
{
  QTextLayout *obj = (QTextLayout *)Qt5xHb::itemGetPtrStackSelfItem();

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
void setFont( const QFont &f )
*/
HB_FUNC_STATIC(QTEXTLAYOUT_SETFONT)
{
  QTextLayout *obj = (QTextLayout *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQFONT(1))
    {
#endif
      obj->setFont(*PQFONT(1));
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
QFont font() const
*/
HB_FUNC_STATIC(QTEXTLAYOUT_FONT)
{
  QTextLayout *obj = (QTextLayout *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QFont *ptr = new QFont(obj->font());
      Qt5xHb::createReturnClass(ptr, "QFONT", true);
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
void setRawFont( const QRawFont &rawFont )
*/
HB_FUNC_STATIC(QTEXTLAYOUT_SETRAWFONT)
{
  QTextLayout *obj = (QTextLayout *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQRAWFONT(1))
    {
#endif
      obj->setRawFont(*PQRAWFONT(1));
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
void setText( const QString &string )
*/
HB_FUNC_STATIC(QTEXTLAYOUT_SETTEXT)
{
  QTextLayout *obj = (QTextLayout *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->setText(PQSTRING(1));
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
QString text() const
*/
HB_FUNC_STATIC(QTEXTLAYOUT_TEXT)
{
  QTextLayout *obj = (QTextLayout *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->text());
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
void setTextOption( const QTextOption &option )
*/
HB_FUNC_STATIC(QTEXTLAYOUT_SETTEXTOPTION)
{
  QTextLayout *obj = (QTextLayout *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQTEXTOPTION(1))
    {
#endif
      obj->setTextOption(*PQTEXTOPTION(1));
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
const QTextOption &textOption() const
*/
HB_FUNC_STATIC(QTEXTLAYOUT_TEXTOPTION)
{
  QTextLayout *obj = (QTextLayout *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      const QTextOption *ptr = &obj->textOption();
      Qt5xHb::createReturnClass(ptr, "QTEXTOPTION", false);
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
void setPreeditArea( int position, const QString &text )
*/
HB_FUNC_STATIC(QTEXTLAYOUT_SETPREEDITAREA)
{
  QTextLayout *obj = (QTextLayout *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISCHAR(2))
    {
#endif
      obj->setPreeditArea(PINT(1), PQSTRING(2));
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
int preeditAreaPosition() const
*/
HB_FUNC_STATIC(QTEXTLAYOUT_PREEDITAREAPOSITION)
{
  QTextLayout *obj = (QTextLayout *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->preeditAreaPosition());
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
QString preeditAreaText() const
*/
HB_FUNC_STATIC(QTEXTLAYOUT_PREEDITAREATEXT)
{
  QTextLayout *obj = (QTextLayout *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->preeditAreaText());
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
void clearAdditionalFormats()
*/
HB_FUNC_STATIC(QTEXTLAYOUT_CLEARADDITIONALFORMATS)
{
  QTextLayout *obj = (QTextLayout *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->clearAdditionalFormats();
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
void setCacheEnabled( bool enable )
*/
HB_FUNC_STATIC(QTEXTLAYOUT_SETCACHEENABLED)
{
  QTextLayout *obj = (QTextLayout *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setCacheEnabled(PBOOL(1));
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
bool cacheEnabled() const
*/
HB_FUNC_STATIC(QTEXTLAYOUT_CACHEENABLED)
{
  QTextLayout *obj = (QTextLayout *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->cacheEnabled());
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
void setCursorMoveStyle( Qt::CursorMoveStyle style )
*/
HB_FUNC_STATIC(QTEXTLAYOUT_SETCURSORMOVESTYLE)
{
  QTextLayout *obj = (QTextLayout *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setCursorMoveStyle((Qt::CursorMoveStyle)hb_parni(1));
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
Qt::CursorMoveStyle cursorMoveStyle() const
*/
HB_FUNC_STATIC(QTEXTLAYOUT_CURSORMOVESTYLE)
{
  QTextLayout *obj = (QTextLayout *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->cursorMoveStyle());
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
void beginLayout()
*/
HB_FUNC_STATIC(QTEXTLAYOUT_BEGINLAYOUT)
{
  QTextLayout *obj = (QTextLayout *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->beginLayout();
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
void endLayout()
*/
HB_FUNC_STATIC(QTEXTLAYOUT_ENDLAYOUT)
{
  QTextLayout *obj = (QTextLayout *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->endLayout();
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
void clearLayout()
*/
HB_FUNC_STATIC(QTEXTLAYOUT_CLEARLAYOUT)
{
  QTextLayout *obj = (QTextLayout *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->clearLayout();
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
QTextLine createLine()
*/
HB_FUNC_STATIC(QTEXTLAYOUT_CREATELINE)
{
  QTextLayout *obj = (QTextLayout *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QTextLine *ptr = new QTextLine(obj->createLine());
      Qt5xHb::createReturnClass(ptr, "QTEXTLINE", true);
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
int lineCount() const
*/
HB_FUNC_STATIC(QTEXTLAYOUT_LINECOUNT)
{
  QTextLayout *obj = (QTextLayout *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->lineCount());
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
QTextLine lineAt( int i ) const
*/
HB_FUNC_STATIC(QTEXTLAYOUT_LINEAT)
{
  QTextLayout *obj = (QTextLayout *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      QTextLine *ptr = new QTextLine(obj->lineAt(PINT(1)));
      Qt5xHb::createReturnClass(ptr, "QTEXTLINE", true);
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
QTextLine lineForTextPosition( int pos ) const
*/
HB_FUNC_STATIC(QTEXTLAYOUT_LINEFORTEXTPOSITION)
{
  QTextLayout *obj = (QTextLayout *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      QTextLine *ptr = new QTextLine(obj->lineForTextPosition(PINT(1)));
      Qt5xHb::createReturnClass(ptr, "QTEXTLINE", true);
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
bool isValidCursorPosition( int pos ) const
*/
HB_FUNC_STATIC(QTEXTLAYOUT_ISVALIDCURSORPOSITION)
{
  QTextLayout *obj = (QTextLayout *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RBOOL(obj->isValidCursorPosition(PINT(1)));
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
int nextCursorPosition( int oldPos, QTextLayout::CursorMode mode = QTextLayout::SkipCharacters ) const
*/
HB_FUNC_STATIC(QTEXTLAYOUT_NEXTCURSORPOSITION)
{
  QTextLayout *obj = (QTextLayout *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 2) && HB_ISNUM(1) && ISNUMORNIL(2))
    {
#endif
      RINT(obj->nextCursorPosition(PINT(1), HB_ISNIL(2) ? (QTextLayout::CursorMode)QTextLayout::SkipCharacters
                                                        : (QTextLayout::CursorMode)hb_parni(2)));
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
int previousCursorPosition( int oldPos, QTextLayout::CursorMode mode = QTextLayout::SkipCharacters ) const
*/
HB_FUNC_STATIC(QTEXTLAYOUT_PREVIOUSCURSORPOSITION)
{
  QTextLayout *obj = (QTextLayout *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 2) && HB_ISNUM(1) && ISNUMORNIL(2))
    {
#endif
      RINT(obj->previousCursorPosition(PINT(1), HB_ISNIL(2) ? (QTextLayout::CursorMode)QTextLayout::SkipCharacters
                                                            : (QTextLayout::CursorMode)hb_parni(2)));
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
int leftCursorPosition( int oldPos ) const
*/
HB_FUNC_STATIC(QTEXTLAYOUT_LEFTCURSORPOSITION)
{
  QTextLayout *obj = (QTextLayout *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RINT(obj->leftCursorPosition(PINT(1)));
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
int rightCursorPosition( int oldPos ) const
*/
HB_FUNC_STATIC(QTEXTLAYOUT_RIGHTCURSORPOSITION)
{
  QTextLayout *obj = (QTextLayout *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RINT(obj->rightCursorPosition(PINT(1)));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QTEXTLAYOUT_DRAWCURSOR)
{
  if (ISNUMPAR(3) && ISQPAINTER(1) && ISQPOINTF(2) && HB_ISNUM(3))
  {
    /*
    void drawCursor( QPainter * p, const QPointF &pos, int cursorPosition ) const
    */
    QTextLayout *obj = (QTextLayout *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->drawCursor(PQPAINTER(1), *PQPOINTF(2), PINT(3));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(4) && ISQPAINTER(1) && ISQPOINTF(2) && HB_ISNUM(3) && HB_ISNUM(4))
  {
    /*
    void drawCursor( QPainter * p, const QPointF &pos, int cursorPosition, int width ) const
    */
    QTextLayout *obj = (QTextLayout *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->drawCursor(PQPAINTER(1), *PQPOINTF(2), PINT(3), PINT(4));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QPointF position() const
*/
HB_FUNC_STATIC(QTEXTLAYOUT_POSITION)
{
  QTextLayout *obj = (QTextLayout *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QPointF *ptr = new QPointF(obj->position());
      Qt5xHb::createReturnClass(ptr, "QPOINTF", true);
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
void setPosition( const QPointF &p )
*/
HB_FUNC_STATIC(QTEXTLAYOUT_SETPOSITION)
{
  QTextLayout *obj = (QTextLayout *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQPOINTF(1))
    {
#endif
      obj->setPosition(*PQPOINTF(1));
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
QRectF boundingRect() const
*/
HB_FUNC_STATIC(QTEXTLAYOUT_BOUNDINGRECT)
{
  QTextLayout *obj = (QTextLayout *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QRectF *ptr = new QRectF(obj->boundingRect());
      Qt5xHb::createReturnClass(ptr, "QRECTF", true);
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
qreal minimumWidth() const
*/
HB_FUNC_STATIC(QTEXTLAYOUT_MINIMUMWIDTH)
{
  QTextLayout *obj = (QTextLayout *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->minimumWidth());
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
qreal maximumWidth() const
*/
HB_FUNC_STATIC(QTEXTLAYOUT_MAXIMUMWIDTH)
{
  QTextLayout *obj = (QTextLayout *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->maximumWidth());
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
void setFlags( int flags )
*/
HB_FUNC_STATIC(QTEXTLAYOUT_SETFLAGS)
{
  QTextLayout *obj = (QTextLayout *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setFlags(PINT(1));
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

HB_FUNC_STATIC(QTEXTLAYOUT_NEWFROM)
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

HB_FUNC_STATIC(QTEXTLAYOUT_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QTEXTLAYOUT_NEWFROM);
}

HB_FUNC_STATIC(QTEXTLAYOUT_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QTEXTLAYOUT_NEWFROM);
}

HB_FUNC_STATIC(QTEXTLAYOUT_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QTEXTLAYOUT_SETSELFDESTRUCTION)
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

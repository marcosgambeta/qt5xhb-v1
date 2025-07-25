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
REQUEST QGRAPHICSLAYOUT
REQUEST QPAINTERPATH
REQUEST QPALETTE
REQUEST QRECTF
REQUEST QSIZEF
REQUEST QSTYLE
#endif

CLASS QGraphicsWidget INHERIT QGraphicsObject,QGraphicsLayoutItem

   METHOD new
   METHOD delete
   METHOD addAction
   METHOD adjustSize
   METHOD autoFillBackground
   METHOD focusPolicy
   METHOD focusWidget
   METHOD font
   METHOD getWindowFrameMargins
   METHOD grabShortcut
   METHOD insertAction
   METHOD isActiveWindow
   METHOD layout
   METHOD layoutDirection
   METHOD paintWindowFrame
   METHOD palette
   METHOD rect
   METHOD releaseShortcut
   METHOD removeAction
   METHOD resize
   METHOD setAttribute
   METHOD setAutoFillBackground
   METHOD setContentsMargins
   METHOD setFocusPolicy
   METHOD setFont
   METHOD setGeometry
   METHOD setLayout
   METHOD setLayoutDirection
   METHOD setPalette
   METHOD setShortcutAutoRepeat
   METHOD setShortcutEnabled
   METHOD setStyle
   METHOD setWindowFlags
   METHOD setWindowFrameMargins
   METHOD setWindowTitle
   METHOD size
   METHOD style
   METHOD testAttribute
   METHOD unsetLayoutDirection
   METHOD unsetWindowFrameMargins
   METHOD windowFlags
   METHOD windowFrameGeometry
   METHOD windowFrameRect
   METHOD windowTitle
   METHOD windowType
   METHOD boundingRect
   METHOD getContentsMargins
   METHOD paint
   METHOD shape
   METHOD type
   METHOD close
   METHOD setTabOrder

   METHOD onGeometryChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QGraphicsWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QGraphicsWidget>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtWidgets/QGraphicsWidget>
#endif

#include <QtWidgets/QStyle>

    /*
    QGraphicsWidget( QGraphicsItem * parent = 0, Qt::WindowFlags wFlags = 0 )
    */
HB_FUNC_STATIC(QGRAPHICSWIDGET_NEW)
{
  if (ISBETWEEN(0, 2) && (ISQGRAPHICSITEM(1) || HB_ISNIL(1)) && ISNUMORNIL(2))
  {
    QGraphicsWidget *obj = new QGraphicsWidget(HB_ISNIL(1) ? 0 : (QGraphicsItem *)Qt5xHb::itemGetPtr(1),
                                               HB_ISNIL(2) ? (Qt::WindowFlags)0 : (Qt::WindowFlags)hb_parni(2));
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QGRAPHICSWIDGET_DELETE)
{
  QGraphicsWidget *obj = (QGraphicsWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void addAction( QAction * action )
*/
HB_FUNC_STATIC(QGRAPHICSWIDGET_ADDACTION)
{
  QGraphicsWidget *obj = (QGraphicsWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQACTION(1))
    {
#endif
      obj->addAction(PQACTION(1));
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
void adjustSize()
*/
HB_FUNC_STATIC(QGRAPHICSWIDGET_ADJUSTSIZE)
{
  QGraphicsWidget *obj = (QGraphicsWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->adjustSize();
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
bool autoFillBackground() const
*/
HB_FUNC_STATIC(QGRAPHICSWIDGET_AUTOFILLBACKGROUND)
{
  QGraphicsWidget *obj = (QGraphicsWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->autoFillBackground());
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
Qt::FocusPolicy focusPolicy() const
*/
HB_FUNC_STATIC(QGRAPHICSWIDGET_FOCUSPOLICY)
{
  QGraphicsWidget *obj = (QGraphicsWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->focusPolicy());
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
QGraphicsWidget * focusWidget() const
*/
HB_FUNC_STATIC(QGRAPHICSWIDGET_FOCUSWIDGET)
{
  QGraphicsWidget *obj = (QGraphicsWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QGraphicsWidget *ptr = obj->focusWidget();
      Qt5xHb::createReturnQObjectClass(ptr, "QGRAPHICSWIDGET");
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
QFont font() const
*/
HB_FUNC_STATIC(QGRAPHICSWIDGET_FONT)
{
  QGraphicsWidget *obj = (QGraphicsWidget *)Qt5xHb::itemGetPtrStackSelfItem();

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
void getWindowFrameMargins( qreal * left, qreal * top, qreal * right, qreal * bottom ) const
*/
HB_FUNC_STATIC(QGRAPHICSWIDGET_GETWINDOWFRAMEMARGINS)
{
  QGraphicsWidget *obj = (QGraphicsWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(4) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4))
    {
#endif
      qreal par1;
      qreal par2;
      qreal par3;
      qreal par4;
      obj->getWindowFrameMargins(&par1, &par2, &par3, &par4);
      hb_stornd(par1, 1);
      hb_stornd(par2, 2);
      hb_stornd(par3, 3);
      hb_stornd(par4, 4);
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
int grabShortcut( const QKeySequence &sequence, Qt::ShortcutContext context = Qt::WindowShortcut )
*/
HB_FUNC_STATIC(QGRAPHICSWIDGET_GRABSHORTCUT)
{
  QGraphicsWidget *obj = (QGraphicsWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 2) && ISQKEYSEQUENCE(1) && ISNUMORNIL(2))
    {
#endif
      RINT(obj->grabShortcut(*PQKEYSEQUENCE(1),
                             HB_ISNIL(2) ? (Qt::ShortcutContext)Qt::WindowShortcut : (Qt::ShortcutContext)hb_parni(2)));
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
void insertAction( QAction * before, QAction * action )
*/
HB_FUNC_STATIC(QGRAPHICSWIDGET_INSERTACTION)
{
  QGraphicsWidget *obj = (QGraphicsWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && ISQACTION(1) && ISQACTION(2))
    {
#endif
      obj->insertAction(PQACTION(1), PQACTION(2));
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
bool isActiveWindow() const
*/
HB_FUNC_STATIC(QGRAPHICSWIDGET_ISACTIVEWINDOW)
{
  QGraphicsWidget *obj = (QGraphicsWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isActiveWindow());
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
QGraphicsLayout * layout() const
*/
HB_FUNC_STATIC(QGRAPHICSWIDGET_LAYOUT)
{
  QGraphicsWidget *obj = (QGraphicsWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QGraphicsLayout *ptr = obj->layout();
      Qt5xHb::createReturnClass(ptr, "QGRAPHICSLAYOUT", false);
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
Qt::LayoutDirection layoutDirection() const
*/
HB_FUNC_STATIC(QGRAPHICSWIDGET_LAYOUTDIRECTION)
{
  QGraphicsWidget *obj = (QGraphicsWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->layoutDirection());
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
virtual void paintWindowFrame( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = 0 )
*/
HB_FUNC_STATIC(QGRAPHICSWIDGET_PAINTWINDOWFRAME)
{
  QGraphicsWidget *obj = (QGraphicsWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(2, 3) && ISQPAINTER(1) && ISQSTYLEOPTIONGRAPHICSITEM(2) && (ISQWIDGET(3) || HB_ISNIL(3)))
    {
#endif
      obj->paintWindowFrame(PQPAINTER(1), PQSTYLEOPTIONGRAPHICSITEM(2), OPQWIDGET(3, 0));
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
QPalette palette() const
*/
HB_FUNC_STATIC(QGRAPHICSWIDGET_PALETTE)
{
  QGraphicsWidget *obj = (QGraphicsWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QPalette *ptr = new QPalette(obj->palette());
      Qt5xHb::createReturnClass(ptr, "QPALETTE", true);
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
QRectF rect() const
*/
HB_FUNC_STATIC(QGRAPHICSWIDGET_RECT)
{
  QGraphicsWidget *obj = (QGraphicsWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QRectF *ptr = new QRectF(obj->rect());
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
void releaseShortcut( int id )
*/
HB_FUNC_STATIC(QGRAPHICSWIDGET_RELEASESHORTCUT)
{
  QGraphicsWidget *obj = (QGraphicsWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->releaseShortcut(PINT(1));
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
void removeAction( QAction * action )
*/
HB_FUNC_STATIC(QGRAPHICSWIDGET_REMOVEACTION)
{
  QGraphicsWidget *obj = (QGraphicsWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQACTION(1))
    {
#endif
      obj->removeAction(PQACTION(1));
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

HB_FUNC_STATIC(QGRAPHICSWIDGET_RESIZE)
{
  if (ISNUMPAR(1) && ISQSIZEF(1))
  {
    /*
    void resize( const QSizeF &size )
    */
    QGraphicsWidget *obj = (QGraphicsWidget *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->resize(*PQSIZEF(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
  {
    /*
    void resize( qreal w, qreal h )
    */
    QGraphicsWidget *obj = (QGraphicsWidget *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->resize(PQREAL(1), PQREAL(2));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void setAttribute( Qt::WidgetAttribute attribute, bool on = true )
*/
HB_FUNC_STATIC(QGRAPHICSWIDGET_SETATTRIBUTE)
{
  QGraphicsWidget *obj = (QGraphicsWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 2) && HB_ISNUM(1) && (HB_ISLOG(2) || HB_ISNIL(2)))
    {
#endif
      obj->setAttribute((Qt::WidgetAttribute)hb_parni(1), OPBOOL(2, true));
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
void setAutoFillBackground( bool enabled )
*/
HB_FUNC_STATIC(QGRAPHICSWIDGET_SETAUTOFILLBACKGROUND)
{
  QGraphicsWidget *obj = (QGraphicsWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setAutoFillBackground(PBOOL(1));
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
void setContentsMargins( qreal left, qreal top, qreal right, qreal bottom )
*/
HB_FUNC_STATIC(QGRAPHICSWIDGET_SETCONTENTSMARGINS)
{
  QGraphicsWidget *obj = (QGraphicsWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(4) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4))
    {
#endif
      obj->setContentsMargins(PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4));
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
void setFocusPolicy( Qt::FocusPolicy policy )
*/
HB_FUNC_STATIC(QGRAPHICSWIDGET_SETFOCUSPOLICY)
{
  QGraphicsWidget *obj = (QGraphicsWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setFocusPolicy((Qt::FocusPolicy)hb_parni(1));
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
void setFont( const QFont &font )
*/
HB_FUNC_STATIC(QGRAPHICSWIDGET_SETFONT)
{
  QGraphicsWidget *obj = (QGraphicsWidget *)Qt5xHb::itemGetPtrStackSelfItem();

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

HB_FUNC_STATIC(QGRAPHICSWIDGET_SETGEOMETRY)
{
  if (ISNUMPAR(4) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4))
  {
    /*
    void setGeometry( qreal x, qreal y, qreal w, qreal h )
    */
    QGraphicsWidget *obj = (QGraphicsWidget *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->setGeometry(PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(1) && ISQRECTF(1))
  {
    /*
    virtual void setGeometry( const QRectF &rect )
    */
    QGraphicsWidget *obj = (QGraphicsWidget *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->setGeometry(*PQRECTF(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void setLayout( QGraphicsLayout * layout )
*/
HB_FUNC_STATIC(QGRAPHICSWIDGET_SETLAYOUT)
{
  QGraphicsWidget *obj = (QGraphicsWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQGRAPHICSLAYOUT(1))
    {
#endif
      obj->setLayout(PQGRAPHICSLAYOUT(1));
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
void setLayoutDirection( Qt::LayoutDirection direction )
*/
HB_FUNC_STATIC(QGRAPHICSWIDGET_SETLAYOUTDIRECTION)
{
  QGraphicsWidget *obj = (QGraphicsWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setLayoutDirection((Qt::LayoutDirection)hb_parni(1));
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
void setPalette( const QPalette &palette )
*/
HB_FUNC_STATIC(QGRAPHICSWIDGET_SETPALETTE)
{
  QGraphicsWidget *obj = (QGraphicsWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQPALETTE(1))
    {
#endif
      obj->setPalette(*PQPALETTE(1));
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
void setShortcutAutoRepeat( int id, bool enabled = true )
*/
HB_FUNC_STATIC(QGRAPHICSWIDGET_SETSHORTCUTAUTOREPEAT)
{
  QGraphicsWidget *obj = (QGraphicsWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 2) && HB_ISNUM(1) && (HB_ISLOG(2) || HB_ISNIL(2)))
    {
#endif
      obj->setShortcutAutoRepeat(PINT(1), OPBOOL(2, true));
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
void setShortcutEnabled( int id, bool enabled = true )
*/
HB_FUNC_STATIC(QGRAPHICSWIDGET_SETSHORTCUTENABLED)
{
  QGraphicsWidget *obj = (QGraphicsWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 2) && HB_ISNUM(1) && (HB_ISLOG(2) || HB_ISNIL(2)))
    {
#endif
      obj->setShortcutEnabled(PINT(1), OPBOOL(2, true));
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
void setStyle( QStyle * style )
*/
HB_FUNC_STATIC(QGRAPHICSWIDGET_SETSTYLE)
{
  QGraphicsWidget *obj = (QGraphicsWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQSTYLE(1))
    {
#endif
      obj->setStyle(PQSTYLE(1));
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
void setWindowFlags( Qt::WindowFlags wFlags )
*/
HB_FUNC_STATIC(QGRAPHICSWIDGET_SETWINDOWFLAGS)
{
  QGraphicsWidget *obj = (QGraphicsWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setWindowFlags((Qt::WindowFlags)hb_parni(1));
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
void setWindowFrameMargins( qreal left, qreal top, qreal right, qreal bottom )
*/
HB_FUNC_STATIC(QGRAPHICSWIDGET_SETWINDOWFRAMEMARGINS)
{
  QGraphicsWidget *obj = (QGraphicsWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(4) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4))
    {
#endif
      obj->setWindowFrameMargins(PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4));
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
void setWindowTitle( const QString &title )
*/
HB_FUNC_STATIC(QGRAPHICSWIDGET_SETWINDOWTITLE)
{
  QGraphicsWidget *obj = (QGraphicsWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->setWindowTitle(PQSTRING(1));
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
QSizeF size() const
*/
HB_FUNC_STATIC(QGRAPHICSWIDGET_SIZE)
{
  QGraphicsWidget *obj = (QGraphicsWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QSizeF *ptr = new QSizeF(obj->size());
      Qt5xHb::createReturnClass(ptr, "QSIZEF", true);
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
QStyle * style() const
*/
HB_FUNC_STATIC(QGRAPHICSWIDGET_STYLE)
{
  QGraphicsWidget *obj = (QGraphicsWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QStyle *ptr = obj->style();
      Qt5xHb::createReturnQObjectClass(ptr, "QSTYLE");
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
bool testAttribute( Qt::WidgetAttribute attribute ) const
*/
HB_FUNC_STATIC(QGRAPHICSWIDGET_TESTATTRIBUTE)
{
  QGraphicsWidget *obj = (QGraphicsWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RBOOL(obj->testAttribute((Qt::WidgetAttribute)hb_parni(1)));
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
void unsetLayoutDirection()
*/
HB_FUNC_STATIC(QGRAPHICSWIDGET_UNSETLAYOUTDIRECTION)
{
  QGraphicsWidget *obj = (QGraphicsWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->unsetLayoutDirection();
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
void unsetWindowFrameMargins()
*/
HB_FUNC_STATIC(QGRAPHICSWIDGET_UNSETWINDOWFRAMEMARGINS)
{
  QGraphicsWidget *obj = (QGraphicsWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->unsetWindowFrameMargins();
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
Qt::WindowFlags windowFlags() const
*/
HB_FUNC_STATIC(QGRAPHICSWIDGET_WINDOWFLAGS)
{
  QGraphicsWidget *obj = (QGraphicsWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->windowFlags());
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
QRectF windowFrameGeometry() const
*/
HB_FUNC_STATIC(QGRAPHICSWIDGET_WINDOWFRAMEGEOMETRY)
{
  QGraphicsWidget *obj = (QGraphicsWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QRectF *ptr = new QRectF(obj->windowFrameGeometry());
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
QRectF windowFrameRect() const
*/
HB_FUNC_STATIC(QGRAPHICSWIDGET_WINDOWFRAMERECT)
{
  QGraphicsWidget *obj = (QGraphicsWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QRectF *ptr = new QRectF(obj->windowFrameRect());
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
QString windowTitle() const
*/
HB_FUNC_STATIC(QGRAPHICSWIDGET_WINDOWTITLE)
{
  QGraphicsWidget *obj = (QGraphicsWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->windowTitle());
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
Qt::WindowType windowType() const
*/
HB_FUNC_STATIC(QGRAPHICSWIDGET_WINDOWTYPE)
{
  QGraphicsWidget *obj = (QGraphicsWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->windowType());
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
virtual QRectF boundingRect() const
*/
HB_FUNC_STATIC(QGRAPHICSWIDGET_BOUNDINGRECT)
{
  QGraphicsWidget *obj = (QGraphicsWidget *)Qt5xHb::itemGetPtrStackSelfItem();

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
virtual void getContentsMargins( qreal * left, qreal * top, qreal * right, qreal * bottom ) const
*/
HB_FUNC_STATIC(QGRAPHICSWIDGET_GETCONTENTSMARGINS)
{
  QGraphicsWidget *obj = (QGraphicsWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(4) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4))
    {
#endif
      qreal par1;
      qreal par2;
      qreal par3;
      qreal par4;
      obj->getContentsMargins(&par1, &par2, &par3, &par4);
      hb_stornd(par1, 1);
      hb_stornd(par2, 2);
      hb_stornd(par3, 3);
      hb_stornd(par4, 4);
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
virtual void paint( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = 0 )
*/
HB_FUNC_STATIC(QGRAPHICSWIDGET_PAINT)
{
  QGraphicsWidget *obj = (QGraphicsWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(2, 3) && ISQPAINTER(1) && ISQSTYLEOPTIONGRAPHICSITEM(2) && (ISQWIDGET(3) || HB_ISNIL(3)))
    {
#endif
      obj->paint(PQPAINTER(1), PQSTYLEOPTIONGRAPHICSITEM(2), OPQWIDGET(3, 0));
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
virtual QPainterPath shape() const
*/
HB_FUNC_STATIC(QGRAPHICSWIDGET_SHAPE)
{
  QGraphicsWidget *obj = (QGraphicsWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QPainterPath *ptr = new QPainterPath(obj->shape());
      Qt5xHb::createReturnClass(ptr, "QPAINTERPATH", true);
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
virtual int type() const
*/
HB_FUNC_STATIC(QGRAPHICSWIDGET_TYPE)
{
  QGraphicsWidget *obj = (QGraphicsWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->type());
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
bool close()
*/
HB_FUNC_STATIC(QGRAPHICSWIDGET_CLOSE)
{
  QGraphicsWidget *obj = (QGraphicsWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->close());
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
static void setTabOrder( QGraphicsWidget * first, QGraphicsWidget * second )
*/
HB_FUNC_STATIC(QGRAPHICSWIDGET_SETTABORDER)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(2) && ISQGRAPHICSWIDGET(1) && ISQGRAPHICSWIDGET(2))
  {
#endif
    QGraphicsWidget::setTabOrder(PQGRAPHICSWIDGET(1), PQGRAPHICSWIDGET(2));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

void QGraphicsWidgetSlots_connect_signal(const QString &signal, const QString &slot);

HB_FUNC_STATIC(QGRAPHICSWIDGET_ONGEOMETRYCHANGED)
{
  QGraphicsWidgetSlots_connect_signal("geometryChanged()", "geometryChanged()");
}

#pragma ENDDUMP

/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCOLOR
REQUEST QFONT
#endif

CLASS QCustom3DLabel INHERIT QCustom3DItem

   METHOD new
   METHOD delete
   METHOD text
   METHOD setText
   METHOD font
   METHOD setFont
   METHOD textColor
   METHOD setTextColor
   METHOD backgroundColor
   METHOD setBackgroundColor
   METHOD isBorderEnabled
   METHOD setBorderEnabled
   METHOD isBackgroundEnabled
   METHOD setBackgroundEnabled
   METHOD isFacingCamera
   METHOD setFacingCamera

   METHOD onBackgroundColorChanged
   METHOD onBackgroundEnabledChanged
   METHOD onBorderEnabledChanged
   METHOD onFacingCameraChanged
   METHOD onFontChanged
   METHOD onTextChanged
   METHOD onTextColorChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QCustom3DLabel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtDataVisualization/QCustom3DLabel>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtDataVisualization/QCustom3DLabel>
#endif

using namespace QtDataVisualization;

HB_FUNC_STATIC( QCUSTOM3DLABEL_NEW  )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||HB_ISNIL(1)) )
  {
    /*
    QCustom3DLabel( QObject * parent = nullptr )
    */
    QCustom3DLabel * obj = new QCustom3DLabel( OPQOBJECT(1,nullptr) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else if( ISBETWEEN(5,6) && HB_ISCHAR(1) && ISQFONT(2) && ISQVECTOR3D(3) && ISQVECTOR3D(4) && ISQQUATERNION(5) && (ISQOBJECT(6)||HB_ISNIL(6)) )
  {
    /*
    QCustom3DLabel( const QString & text, const QFont & font, const QVector3D & position, const QVector3D & scaling, const QQuaternion & rotation, QObject * parent = nullptr )
    */
    QCustom3DLabel * obj = new QCustom3DLabel( PQSTRING(1), *PQFONT(2), *PQVECTOR3D(3), *PQVECTOR3D(4), *PQQUATERNION(5), OPQOBJECT(6,nullptr) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
virtual ~QCustom3DLabel()
*/
HB_FUNC_STATIC( QCUSTOM3DLABEL_DELETE )
{
  QCustom3DLabel * obj = (QCustom3DLabel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QString text() const
*/
HB_FUNC_STATIC( QCUSTOM3DLABEL_TEXT )
{
  QCustom3DLabel * obj = (QCustom3DLabel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->text() );
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
void setText( const QString & text )
*/
HB_FUNC_STATIC( QCUSTOM3DLABEL_SETTEXT )
{
  QCustom3DLabel * obj = (QCustom3DLabel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setText( PQSTRING(1) );
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
HB_FUNC_STATIC( QCUSTOM3DLABEL_FONT )
{
  QCustom3DLabel * obj = (QCustom3DLabel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QFont * ptr = new QFont( obj->font() );
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
void setFont( const QFont & font )
*/
HB_FUNC_STATIC( QCUSTOM3DLABEL_SETFONT )
{
  QCustom3DLabel * obj = (QCustom3DLabel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQFONT(1) )
    {
#endif
      obj->setFont( *PQFONT(1) );
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
QColor textColor() const
*/
HB_FUNC_STATIC( QCUSTOM3DLABEL_TEXTCOLOR )
{
  QCustom3DLabel * obj = (QCustom3DLabel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QColor * ptr = new QColor( obj->textColor() );
      Qt5xHb::createReturnClass(ptr, "QCOLOR", true);
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
void setTextColor( const QColor & color )
*/
HB_FUNC_STATIC( QCUSTOM3DLABEL_SETTEXTCOLOR )
{
  QCustom3DLabel * obj = (QCustom3DLabel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && (ISQCOLOR(1)||HB_ISCHAR(1)) )
    {
#endif
      obj->setTextColor( HB_ISOBJECT(1)? *(QColor *) Qt5xHb::itemGetPtr(1) : QColor(hb_parc(1)) );
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
QColor backgroundColor() const
*/
HB_FUNC_STATIC( QCUSTOM3DLABEL_BACKGROUNDCOLOR )
{
  QCustom3DLabel * obj = (QCustom3DLabel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QColor * ptr = new QColor( obj->backgroundColor() );
      Qt5xHb::createReturnClass(ptr, "QCOLOR", true);
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
void setBackgroundColor( const QColor & color )
*/
HB_FUNC_STATIC( QCUSTOM3DLABEL_SETBACKGROUNDCOLOR )
{
  QCustom3DLabel * obj = (QCustom3DLabel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && (ISQCOLOR(1)||HB_ISCHAR(1)) )
    {
#endif
      obj->setBackgroundColor( HB_ISOBJECT(1)? *(QColor *) Qt5xHb::itemGetPtr(1) : QColor(hb_parc(1)) );
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
bool isBorderEnabled() const
*/
HB_FUNC_STATIC( QCUSTOM3DLABEL_ISBORDERENABLED )
{
  QCustom3DLabel * obj = (QCustom3DLabel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isBorderEnabled() );
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
void setBorderEnabled( bool enabled )
*/
HB_FUNC_STATIC( QCUSTOM3DLABEL_SETBORDERENABLED )
{
  QCustom3DLabel * obj = (QCustom3DLabel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setBorderEnabled( PBOOL(1) );
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
bool isBackgroundEnabled() const
*/
HB_FUNC_STATIC( QCUSTOM3DLABEL_ISBACKGROUNDENABLED )
{
  QCustom3DLabel * obj = (QCustom3DLabel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isBackgroundEnabled() );
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
void setBackgroundEnabled( bool enabled )
*/
HB_FUNC_STATIC( QCUSTOM3DLABEL_SETBACKGROUNDENABLED )
{
  QCustom3DLabel * obj = (QCustom3DLabel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setBackgroundEnabled( PBOOL(1) );
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
bool isFacingCamera() const
*/
HB_FUNC_STATIC( QCUSTOM3DLABEL_ISFACINGCAMERA )
{
  QCustom3DLabel * obj = (QCustom3DLabel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isFacingCamera() );
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
void setFacingCamera( bool enabled )
*/
HB_FUNC_STATIC( QCUSTOM3DLABEL_SETFACINGCAMERA )
{
  QCustom3DLabel * obj = (QCustom3DLabel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setFacingCamera( PBOOL(1) );
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

void QCustom3DLabelSlots_connect_signal(const QString & signal, const QString & slot);

HB_FUNC_STATIC( QCUSTOM3DLABEL_ONBACKGROUNDCOLORCHANGED )
{
  QCustom3DLabelSlots_connect_signal("backgroundColorChanged(QColor)", "backgroundColorChanged(QColor)");
}

HB_FUNC_STATIC( QCUSTOM3DLABEL_ONBACKGROUNDENABLEDCHANGED )
{
  QCustom3DLabelSlots_connect_signal("backgroundEnabledChanged(bool)", "backgroundEnabledChanged(bool)");
}

HB_FUNC_STATIC( QCUSTOM3DLABEL_ONBORDERENABLEDCHANGED )
{
  QCustom3DLabelSlots_connect_signal("borderEnabledChanged(bool)", "borderEnabledChanged(bool)");
}

HB_FUNC_STATIC( QCUSTOM3DLABEL_ONFACINGCAMERACHANGED )
{
  QCustom3DLabelSlots_connect_signal("facingCameraChanged(bool)", "facingCameraChanged(bool)");
}

HB_FUNC_STATIC( QCUSTOM3DLABEL_ONFONTCHANGED )
{
  QCustom3DLabelSlots_connect_signal("fontChanged(QFont)", "fontChanged(QFont)");
}

HB_FUNC_STATIC( QCUSTOM3DLABEL_ONTEXTCHANGED )
{
  QCustom3DLabelSlots_connect_signal("textChanged(QString)", "textChanged(QString)");
}

HB_FUNC_STATIC( QCUSTOM3DLABEL_ONTEXTCOLORCHANGED )
{
  QCustom3DLabelSlots_connect_signal("textColorChanged(QColor)", "textColorChanged(QColor)");
}

#pragma ENDDUMP

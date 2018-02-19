/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

CLASS QCustom3DLabel INHERIT QCustom3DItem

   METHOD new
   METHOD delete

   METHOD backgroundColor
   METHOD font
   METHOD isBackgroundEnabled
   METHOD isBorderEnabled
   METHOD isFacingCamera
   METHOD setBackgroundColor
   METHOD setBackgroundEnabled
   METHOD setBorderEnabled
   METHOD setFacingCamera
   METHOD setFont
   METHOD setText
   METHOD setTextColor
   METHOD text
   METHOD textColor

   METHOD onBackgroundColorChanged
   METHOD onBackgroundEnabledChanged
   METHOD onBorderEnabledChanged
   METHOD onFacingCameraChanged
   METHOD onFontChanged
   METHOD onTextChanged
   METHOD onTextColorChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCustom3DLabel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QCustom3DLabel>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QCustom3DLabel>
#endif

/*
explicit QCustom3DLabel(QObject *parent = Q_NULLPTR)
*/
void QCustom3DLabel_new1 ()
{
  QCustom3DLabel * o = new QCustom3DLabel ( OPQOBJECT(1,Q_NULLPTR) );
  _qt5xhb_returnNewObject( o, false );
}

/*
explicit QCustom3DLabel(const QString &text, const QFont &font, const QVector3D &position, const QVector3D &scaling, const QQuaternion &rotation, QObject *parent = Q_NULLPTR)
*/
void QCustom3DLabel_new2 ()
{
  QCustom3DLabel * o = new QCustom3DLabel ( PQSTRING(1), *PQFONT(2), *PQVECTOR3D(3), *PQVECTOR3D(4), *PQQUATERNION(5), OPQOBJECT(6,Q_NULLPTR) );
  _qt5xhb_returnNewObject( o, false );
}

//[1]explicit QCustom3DLabel(QObject *parent = Q_NULLPTR)
//[2]explicit QCustom3DLabel(const QString &text, const QFont &font, const QVector3D &position, const QVector3D &scaling, const QQuaternion &rotation, QObject *parent = Q_NULLPTR)

HB_FUNC_STATIC( QCUSTOM3DLABEL_NEW  )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QCustom3DLabel_new1();
  }
  else if( ISBETWEEN(5,6) && ISCHAR(1) && ISQFONT(2) && ISQVECTOR3D(3) && ISQVECTOR3D(4) && ISQQUATERNION(5) && (ISQOBJECT(6)||ISNIL(6)) )
  {
    QCustom3DLabel_new2();
  }
}

/*
virtual ~QCustom3DLabel()
*/
HB_FUNC_STATIC( QCUSTOM3DLABEL_DELETE )
{
  QCustom3DLabel * obj = (QCustom3DLabel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString text() const
*/
HB_FUNC_STATIC( QCUSTOM3DLABEL_TEXT )
{
  QCustom3DLabel * obj = (QCustom3DLabel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->text () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setText(const QString &text)
*/
HB_FUNC_STATIC( QCUSTOM3DLABEL_SETTEXT )
{
  QCustom3DLabel * obj = (QCustom3DLabel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setText ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QFont font() const
*/
HB_FUNC_STATIC( QCUSTOM3DLABEL_FONT )
{
  QCustom3DLabel * obj = (QCustom3DLabel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QFont * ptr = new QFont( obj->font () );
      _qt5xhb_createReturnClass ( ptr, "QFONT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setFont(const QFont &font)
*/
HB_FUNC_STATIC( QCUSTOM3DLABEL_SETFONT )
{
  QCustom3DLabel * obj = (QCustom3DLabel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQFONT(1) )
    {
      obj->setFont ( *PQFONT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QColor textColor() const
*/
HB_FUNC_STATIC( QCUSTOM3DLABEL_TEXTCOLOR )
{
  QCustom3DLabel * obj = (QCustom3DLabel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QColor * ptr = new QColor( obj->textColor () );
      _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setTextColor(const QColor &color)
*/
HB_FUNC_STATIC( QCUSTOM3DLABEL_SETTEXTCOLOR )
{
  QCustom3DLabel * obj = (QCustom3DLabel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && (ISQCOLOR(1)||ISCHAR(1)) )
    {
      obj->setTextColor ( ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1)) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QColor backgroundColor() const
*/
HB_FUNC_STATIC( QCUSTOM3DLABEL_BACKGROUNDCOLOR )
{
  QCustom3DLabel * obj = (QCustom3DLabel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QColor * ptr = new QColor( obj->backgroundColor () );
      _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setBackgroundColor(const QColor &color)
*/
HB_FUNC_STATIC( QCUSTOM3DLABEL_SETBACKGROUNDCOLOR )
{
  QCustom3DLabel * obj = (QCustom3DLabel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && (ISQCOLOR(1)||ISCHAR(1)) )
    {
      obj->setBackgroundColor ( ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1)) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isBorderEnabled() const
*/
HB_FUNC_STATIC( QCUSTOM3DLABEL_ISBORDERENABLED )
{
  QCustom3DLabel * obj = (QCustom3DLabel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isBorderEnabled () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setBorderEnabled(bool enabled)
*/
HB_FUNC_STATIC( QCUSTOM3DLABEL_SETBORDERENABLED )
{
  QCustom3DLabel * obj = (QCustom3DLabel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setBorderEnabled ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isBackgroundEnabled() const
*/
HB_FUNC_STATIC( QCUSTOM3DLABEL_ISBACKGROUNDENABLED )
{
  QCustom3DLabel * obj = (QCustom3DLabel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isBackgroundEnabled () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setBackgroundEnabled(bool enabled)
*/
HB_FUNC_STATIC( QCUSTOM3DLABEL_SETBACKGROUNDENABLED )
{
  QCustom3DLabel * obj = (QCustom3DLabel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setBackgroundEnabled ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isFacingCamera() const
*/
HB_FUNC_STATIC( QCUSTOM3DLABEL_ISFACINGCAMERA )
{
  QCustom3DLabel * obj = (QCustom3DLabel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isFacingCamera () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setFacingCamera(bool enabled)
*/
HB_FUNC_STATIC( QCUSTOM3DLABEL_SETFACINGCAMERA )
{
  QCustom3DLabel * obj = (QCustom3DLabel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setFacingCamera ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
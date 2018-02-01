/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

CLASS QBoxSet INHERIT QObject

   METHOD new
   METHOD delete

   METHOD append
   METHOD at
   METHOD brush
   METHOD clear
   METHOD count
   METHOD label
   METHOD pen
   METHOD setBrush
   METHOD setLabel
   METHOD setPen
   METHOD setValue

   METHOD onBrushChanged
   METHOD onCleared
   METHOD onClicked
   METHOD onDoubleClicked
   METHOD onHovered
   METHOD onPenChanged
   METHOD onPressed
   METHOD onReleased
   METHOD onValueChanged
   METHOD onValuesChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QBoxSet
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QBoxSet>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QBoxSet>
#endif

using namespace QtCharts;

/*
explicit QBoxSet(const QString label = QString(), QObject *parent = Q_NULLPTR)
*/
void QBoxSet_new1 ()
{
  QBoxSet * o = new QBoxSet ( OPQSTRING(1,QString()), OPQOBJECT(2,Q_NULLPTR) );
  _qt5xhb_returnNewObject( o, false );
}

/*
explicit QBoxSet(const qreal le, const qreal lq, const qreal m, const qreal uq, const qreal ue, const QString label = QString(), QObject *parent = Q_NULLPTR)
*/
void QBoxSet_new2 ()
{
  QBoxSet * o = new QBoxSet ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4), PQREAL(5), OPQSTRING(6,QString()), OPQOBJECT(7,Q_NULLPTR) );
  _qt5xhb_returnNewObject( o, false );
}

//[1]explicit QBoxSet(const QString label = QString(), QObject *parent = Q_NULLPTR)
//[2]explicit QBoxSet(const qreal le, const qreal lq, const qreal m, const qreal uq, const qreal ue, const QString label = QString(), QObject *parent = Q_NULLPTR)

HB_FUNC_STATIC( QBOXSET_NEW )
{
  if( ISBETWEEN(0,2) && (ISCHAR(1)||ISNIL(1)) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QBoxSet_new1();
  }
  else if( ISBETWEEN(5,7) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && (ISCHAR(6)||ISNIL(6)) && (ISQOBJECT(7)||ISNIL(7)) )
  {
    QBoxSet_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual ~QBoxSet()
*/
HB_FUNC_STATIC( QBOXSET_DELETE )
{
  QBoxSet * obj = (QBoxSet *) _qt5xhb_itemGetPtrStackSelfItem();

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
QPen pen() const
*/
HB_FUNC_STATIC( QBOXSET_PEN )
{
  QBoxSet * obj = (QBoxSet *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QPen * ptr = new QPen( obj->pen () );
      _qt5xhb_createReturnClass ( ptr, "QPEN", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setPen(const QPen &pen)
*/
HB_FUNC_STATIC( QBOXSET_SETPEN )
{
  QBoxSet * obj = (QBoxSet *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQPEN(1) )
    {
      obj->setPen ( *PQPEN(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QBrush brush() const
*/
HB_FUNC_STATIC( QBOXSET_BRUSH )
{
  QBoxSet * obj = (QBoxSet *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QBrush * ptr = new QBrush( obj->brush () );
      _qt5xhb_createReturnClass ( ptr, "QBRUSH", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setBrush(const QBrush &brush)
*/
HB_FUNC_STATIC( QBOXSET_SETBRUSH )
{
  QBoxSet * obj = (QBoxSet *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQBRUSH(1) )
    {
      obj->setBrush ( *PQBRUSH(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void append(const qreal value)
*/
void QBoxSet_append1 ()
{
  QBoxSet * obj = (QBoxSet *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->append ( PQREAL(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void append(const QList<qreal> &values)
*/

//[1]void append(const qreal value)
//[2]void append(const QList<qreal> &values)

HB_FUNC_STATIC( QBOXSET_APPEND )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QBoxSet_append1();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void clear()
*/
HB_FUNC_STATIC( QBOXSET_CLEAR )
{
  QBoxSet * obj = (QBoxSet *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->clear ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setLabel(const QString label)
*/
HB_FUNC_STATIC( QBOXSET_SETLABEL )
{
  QBoxSet * obj = (QBoxSet *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setLabel ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString label() const
*/
HB_FUNC_STATIC( QBOXSET_LABEL )
{
  QBoxSet * obj = (QBoxSet *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->label () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setValue(const int index, const qreal value)
*/
HB_FUNC_STATIC( QBOXSET_SETVALUE )
{
  QBoxSet * obj = (QBoxSet *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
      obj->setValue ( PINT(1), PQREAL(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
qreal at(const int index) const
*/
HB_FUNC_STATIC( QBOXSET_AT )
{
  QBoxSet * obj = (QBoxSet *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      RQREAL( obj->at ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int count() const
*/
HB_FUNC_STATIC( QBOXSET_COUNT )
{
  QBoxSet * obj = (QBoxSet *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->count () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

#pragma ENDDUMP
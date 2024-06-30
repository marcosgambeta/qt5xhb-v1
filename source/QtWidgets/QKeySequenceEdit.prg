/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QKEYSEQUENCE
#endif

CLASS QKeySequenceEdit INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD keySequence
   METHOD setKeySequence
   METHOD clear

   METHOD onEditingFinished
   METHOD onKeySequenceChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QKeySequenceEdit
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QtWidgets/QKeySequenceEdit>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QtWidgets/QKeySequenceEdit>
#endif
#endif

HB_FUNC_STATIC( QKEYSEQUENCEEDIT_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||HB_ISNIL(1)) )
  {
    /*
    QKeySequenceEdit( QWidget * parent = 0 )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
    QKeySequenceEdit * obj = new QKeySequenceEdit( OPQWIDGET(1,0) );
    Qt5xHb::returnNewObject(obj, false);
#endif
  }
  else if( ISBETWEEN(1,2) && ISQKEYSEQUENCE(1) && (ISQWIDGET(2)||HB_ISNIL(2)) )
  {
    /*
    QKeySequenceEdit( const QKeySequence & keySequence, QWidget * parent = 0 )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
    QKeySequenceEdit * obj = new QKeySequenceEdit( *PQKEYSEQUENCE(1), OPQWIDGET(2,0) );
    Qt5xHb::returnNewObject(obj, false);
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

HB_FUNC_STATIC( QKEYSEQUENCEEDIT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QKeySequenceEdit * obj = (QKeySequenceEdit *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
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
#endif
}

/*
QKeySequence keySequence() const
*/
HB_FUNC_STATIC( QKEYSEQUENCEEDIT_KEYSEQUENCE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QKeySequenceEdit * obj = (QKeySequenceEdit *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QKeySequence * ptr = new QKeySequence( obj->keySequence() );
      Qt5xHb::createReturnClass(ptr, "QKEYSEQUENCE", true);
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
void setKeySequence( const QKeySequence & keySequence )
*/
HB_FUNC_STATIC( QKEYSEQUENCEEDIT_SETKEYSEQUENCE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QKeySequenceEdit * obj = (QKeySequenceEdit *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQKEYSEQUENCE(1) )
    {
#endif
      obj->setKeySequence( *PQKEYSEQUENCE(1) );
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
void clear()
*/
HB_FUNC_STATIC( QKEYSEQUENCEEDIT_CLEAR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QKeySequenceEdit * obj = (QKeySequenceEdit *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
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
#endif
}

void QKeySequenceEditSlots_connect_signal(const QString & signal, const QString & slot);

HB_FUNC_STATIC( QKEYSEQUENCEEDIT_ONEDITINGFINISHED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QKeySequenceEditSlots_connect_signal("editingFinished()", "editingFinished()");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC( QKEYSEQUENCEEDIT_ONKEYSEQUENCECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QKeySequenceEditSlots_connect_signal("keySequenceChanged(QKeySequence)", "keySequenceChanged(QKeySequence)");
#else
  hb_retl(false);
#endif
}

#pragma ENDDUMP

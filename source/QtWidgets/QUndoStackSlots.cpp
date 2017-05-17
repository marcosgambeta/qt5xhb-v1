/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QUndoStackSlots.h"


static SlotsQUndoStack * s = NULL;

SlotsQUndoStack::SlotsQUndoStack(QObject *parent) : QObject(parent)
{
}

SlotsQUndoStack::~SlotsQUndoStack()
{
}

void SlotsQUndoStack::canRedoChanged(bool canRedo)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "canRedoChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pcanRedo = hb_itemPutL( NULL, canRedo );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pcanRedo );
    hb_itemRelease( psender );
    hb_itemRelease( pcanRedo );
  }
}

void SlotsQUndoStack::canUndoChanged(bool canUndo)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "canUndoChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pcanUndo = hb_itemPutL( NULL, canUndo );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pcanUndo );
    hb_itemRelease( psender );
    hb_itemRelease( pcanUndo );
  }
}

void SlotsQUndoStack::cleanChanged(bool clean)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "cleanChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pclean = hb_itemPutL( NULL, clean );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pclean );
    hb_itemRelease( psender );
    hb_itemRelease( pclean );
  }
}

void SlotsQUndoStack::indexChanged(int idx)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "indexChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pidx = hb_itemPutNI( NULL, idx );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pidx );
    hb_itemRelease( psender );
    hb_itemRelease( pidx );
  }
}

void SlotsQUndoStack::redoTextChanged(const QString & redoText)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "redoTextChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM predoText = hb_itemPutC( NULL, RQSTRING(redoText) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, predoText );
    hb_itemRelease( psender );
    hb_itemRelease( predoText );
  }
}

void SlotsQUndoStack::undoTextChanged(const QString & undoText)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "undoTextChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pundoText = hb_itemPutC( NULL, RQSTRING(undoText) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pundoText );
    hb_itemRelease( psender );
    hb_itemRelease( pundoText );
  }
}

HB_FUNC( QUNDOSTACK_ONCANREDOCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQUndoStack(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "canRedoChanged(bool)", "canRedoChanged(bool)" ) );
}

HB_FUNC( QUNDOSTACK_ONCANUNDOCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQUndoStack(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "canUndoChanged(bool)", "canUndoChanged(bool)" ) );
}

HB_FUNC( QUNDOSTACK_ONCLEANCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQUndoStack(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "cleanChanged(bool)", "cleanChanged(bool)" ) );
}

HB_FUNC( QUNDOSTACK_ONINDEXCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQUndoStack(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "indexChanged(int)", "indexChanged(int)" ) );
}

HB_FUNC( QUNDOSTACK_ONREDOTEXTCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQUndoStack(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "redoTextChanged(QString)", "redoTextChanged(QString)" ) );
}

HB_FUNC( QUNDOSTACK_ONUNDOTEXTCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQUndoStack(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "undoTextChanged(QString)", "undoTextChanged(QString)" ) );
}

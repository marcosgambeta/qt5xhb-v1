%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "QLineEditSlots.h"


static SlotsQLineEdit * s = NULL;

SlotsQLineEdit::SlotsQLineEdit(QObject *parent) : QObject(parent)
{
}

SlotsQLineEdit::~SlotsQLineEdit()
{
}

void SlotsQLineEdit::cursorPositionChanged ( int iold, int inew )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "cursorPositionChanged(int,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM piold = hb_itemPutNI( NULL, iold );
    PHB_ITEM pinew = hb_itemPutNI( NULL, inew );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, piold, pinew );
    hb_itemRelease( psender );
    hb_itemRelease( piold );
    hb_itemRelease( pinew );
  }
}

void SlotsQLineEdit::editingFinished ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "editingFinished()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQLineEdit::returnPressed ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "returnPressed()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQLineEdit::selectionChanged ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "selectionChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQLineEdit::textChanged ( const QString & text )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "textChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ptext = hb_itemPutC( NULL, QSTRINGTOSTRING(text) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ptext );
    hb_itemRelease( psender );
    hb_itemRelease( ptext );
  }
}

void SlotsQLineEdit::textEdited ( const QString & text )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "textEdited(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ptext = hb_itemPutC( NULL, QSTRINGTOSTRING(text) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ptext );
    hb_itemRelease( psender );
    hb_itemRelease( ptext );
  }
}

HB_FUNC( QLINEEDIT_ONCURSORPOSITIONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQLineEdit(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "cursorPositionChanged(int,int)", "cursorPositionChanged(int,int)" ) );
}

HB_FUNC( QLINEEDIT_ONEDITINGFINISHED )
{
  if( s == NULL )
  {
    s = new SlotsQLineEdit(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "editingFinished()", "editingFinished()" ) );
}

HB_FUNC( QLINEEDIT_ONRETURNPRESSED )
{
  if( s == NULL )
  {
    s = new SlotsQLineEdit(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "returnPressed()", "returnPressed()" ) );
}

HB_FUNC( QLINEEDIT_ONSELECTIONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQLineEdit(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "selectionChanged()", "selectionChanged()" ) );
}

HB_FUNC( QLINEEDIT_ONTEXTCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQLineEdit(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "textChanged(QString)", "textChanged(QString)" ) );
}

HB_FUNC( QLINEEDIT_ONTEXTEDITED )
{
  if( s == NULL )
  {
    s = new SlotsQLineEdit(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "textEdited(QString)", "textEdited(QString)" ) );
}

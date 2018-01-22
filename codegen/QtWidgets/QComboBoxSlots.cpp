%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "QComboBoxSlots.h"

static SlotsQComboBox * s = NULL;

SlotsQComboBox::SlotsQComboBox(QObject *parent) : QObject(parent)
{
}

SlotsQComboBox::~SlotsQComboBox()
{
}

void SlotsQComboBox::activated ( int index )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "activated(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pindex = hb_itemPutNI( NULL, index );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pindex );
    hb_itemRelease( psender );
    hb_itemRelease( pindex );
  }
}

void SlotsQComboBox::activated ( const QString & text )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "activated(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ptext = hb_itemPutC( NULL, QSTRINGTOSTRING(text) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ptext );
    hb_itemRelease( psender );
    hb_itemRelease( ptext );
  }
}

void SlotsQComboBox::currentIndexChanged ( int index )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "currentIndexChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pindex = hb_itemPutNI( NULL, index );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pindex );
    hb_itemRelease( psender );
    hb_itemRelease( pindex );
  }
}

void SlotsQComboBox::currentIndexChanged ( const QString & text )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "currentIndexChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ptext = hb_itemPutC( NULL, QSTRINGTOSTRING(text) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ptext );
    hb_itemRelease( psender );
    hb_itemRelease( ptext );
  }
}

void SlotsQComboBox::editTextChanged ( const QString & text )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "editTextChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ptext = hb_itemPutC( NULL, QSTRINGTOSTRING(text) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ptext );
    hb_itemRelease( psender );
    hb_itemRelease( ptext );
  }
}

void SlotsQComboBox::highlighted ( int index )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "highlighted(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pindex = hb_itemPutNI( NULL, index );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pindex );
    hb_itemRelease( psender );
    hb_itemRelease( pindex );
  }
}

void SlotsQComboBox::highlighted ( const QString & text )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "highlighted(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ptext = hb_itemPutC( NULL, QSTRINGTOSTRING(text) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ptext );
    hb_itemRelease( psender );
    hb_itemRelease( ptext );
  }
}

HB_FUNC( QCOMBOBOX_ONACTIVATED )
{
  if( s == NULL )
  {
    s = new SlotsQComboBox(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "activated(int)", "activated(int)" ) );
}

HB_FUNC( QCOMBOBOX_ONACTIVATEDC )
{
  if( s == NULL )
  {
    s = new SlotsQComboBox(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "activated(QString)", "activated(QString)" ) );
}

HB_FUNC( QCOMBOBOX_ONCURRENTINDEXCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQComboBox(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "currentIndexChanged(int)", "currentIndexChanged(int)" ) );
}

HB_FUNC( QCOMBOBOX_ONCURRENTINDEXCHANGEDC )
{
  if( s == NULL )
  {
    s = new SlotsQComboBox(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "currentIndexChanged(QString)", "currentIndexChanged(QString)" ) );
}

HB_FUNC( QCOMBOBOX_ONEDITTEXTCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQComboBox(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "editTextChanged(QString)", "editTextChanged(QString)" ) );
}

HB_FUNC( QCOMBOBOX_ONHIGHLIGHTED )
{
  if( s == NULL )
  {
    s = new SlotsQComboBox(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "highlighted(int)", "highlighted(int)" ) );
}

HB_FUNC( QCOMBOBOX_ONHIGHLIGHTEDC )
{
  if( s == NULL )
  {
    s = new SlotsQComboBox(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "highlighted(QString)", "highlighted(QString)" ) );
}

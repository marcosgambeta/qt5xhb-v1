/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QInputDialogSlots.h"


static SlotsQInputDialog * s = NULL;

SlotsQInputDialog::SlotsQInputDialog(QObject *parent) : QObject(parent)
{
}

SlotsQInputDialog::~SlotsQInputDialog()
{
}

void SlotsQInputDialog::doubleValueChanged ( double value )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "doubleValueChanged(double)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pvalue = hb_itemPutND( NULL, value );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pvalue );
    hb_itemRelease( psender );
    hb_itemRelease( pvalue );
  }
}

void SlotsQInputDialog::doubleValueSelected ( double value )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "doubleValueSelected(double)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pvalue = hb_itemPutND( NULL, value );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pvalue );
    hb_itemRelease( psender );
    hb_itemRelease( pvalue );
  }
}

void SlotsQInputDialog::intValueChanged ( int value )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "intValueChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pvalue = hb_itemPutNI( NULL, value );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pvalue );
    hb_itemRelease( psender );
    hb_itemRelease( pvalue );
  }
}

void SlotsQInputDialog::intValueSelected ( int value )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "intValueSelected(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pvalue = hb_itemPutNI( NULL, value );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pvalue );
    hb_itemRelease( psender );
    hb_itemRelease( pvalue );
  }
}

void SlotsQInputDialog::textValueChanged ( const QString & text )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "textValueChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ptext = hb_itemPutC( NULL, QSTRINGTOSTRING(text) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ptext );
    hb_itemRelease( psender );
    hb_itemRelease( ptext );
  }
}

void SlotsQInputDialog::textValueSelected ( const QString & text )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "textValueSelected(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ptext = hb_itemPutC( NULL, QSTRINGTOSTRING(text) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ptext );
    hb_itemRelease( psender );
    hb_itemRelease( ptext );
  }
}

HB_FUNC( QINPUTDIALOG_ONDOUBLEVALUECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQInputDialog(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "doubleValueChanged(double)", "doubleValueChanged(double)" ) );
}

HB_FUNC( QINPUTDIALOG_ONDOUBLEVALUESELECTED )
{
  if( s == NULL )
  {
    s = new SlotsQInputDialog(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "doubleValueSelected(double)", "doubleValueSelected(double)" ) );
}

HB_FUNC( QINPUTDIALOG_ONINTVALUECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQInputDialog(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "intValueChanged(int)", "intValueChanged(int)" ) );
}

HB_FUNC( QINPUTDIALOG_ONINTVALUESELECTED )
{
  if( s == NULL )
  {
    s = new SlotsQInputDialog(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "intValueSelected(int)", "intValueSelected(int)" ) );
}

HB_FUNC( QINPUTDIALOG_ONTEXTVALUECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQInputDialog(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "textValueChanged(QString)", "textValueChanged(QString)" ) );
}

HB_FUNC( QINPUTDIALOG_ONTEXTVALUESELECTED )
{
  if( s == NULL )
  {
    s = new SlotsQInputDialog(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "textValueSelected(QString)", "textValueSelected(QString)" ) );
}

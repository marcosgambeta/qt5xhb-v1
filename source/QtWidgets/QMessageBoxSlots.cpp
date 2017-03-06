/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QMessageBoxSlots.h"


static SlotsQMessageBox * s = NULL;

SlotsQMessageBox::SlotsQMessageBox(QObject *parent) : QObject(parent)
{
}

SlotsQMessageBox::~SlotsQMessageBox()
{
}

void SlotsQMessageBox::buttonClicked ( QAbstractButton * button )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "buttonClicked(QAbstractButton*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pbutton = hb_itemPutPtr( NULL, (QAbstractButton *) button );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pbutton );
    hb_itemRelease( psender );
    hb_itemRelease( pbutton );
  }
}

HB_FUNC( QMESSAGEBOX_ONBUTTONCLICKED )
{
  if( s == NULL )
  {
    s = new SlotsQMessageBox(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "buttonClicked(QAbstractButton*)", "buttonClicked(QAbstractButton*)" ) );
}

/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QAbstractButtonSlots.h"


static SlotsQAbstractButton * s = NULL;

SlotsQAbstractButton::SlotsQAbstractButton(QObject *parent) : QObject(parent)
{
}

SlotsQAbstractButton::~SlotsQAbstractButton()
{
}

void SlotsQAbstractButton::clicked(bool checked)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "clicked(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pchecked = hb_itemPutL( NULL, checked );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pchecked );
    hb_itemRelease( psender );
    hb_itemRelease( pchecked );
  }
}

void SlotsQAbstractButton::pressed()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "pressed()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQAbstractButton::released()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "released()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQAbstractButton::toggled(bool checked)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "toggled(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pchecked = hb_itemPutL( NULL, checked );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pchecked );
    hb_itemRelease( psender );
    hb_itemRelease( pchecked );
  }
}

HB_FUNC( QABSTRACTBUTTON_ONCLICKED )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractButton(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "clicked(bool)", "clicked(bool)" ) );
}

HB_FUNC( QABSTRACTBUTTON_ONPRESSED )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractButton(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "pressed()", "pressed()" ) );
}

HB_FUNC( QABSTRACTBUTTON_ONRELEASED )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractButton(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "released()", "released()" ) );
}

HB_FUNC( QABSTRACTBUTTON_ONTOGGLED )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractButton(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "toggled(bool)", "toggled(bool)" ) );
}

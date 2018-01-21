/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QButtonGroupSlots.h"


static SlotsQButtonGroup * s = NULL;

SlotsQButtonGroup::SlotsQButtonGroup(QObject *parent) : QObject(parent)
{
}

SlotsQButtonGroup::~SlotsQButtonGroup()
{
}

void SlotsQButtonGroup::buttonClicked ( QAbstractButton * button )
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

void SlotsQButtonGroup::buttonClicked ( int id )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "buttonClicked(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pid = hb_itemPutNI( NULL, id );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pid );
    hb_itemRelease( psender );
    hb_itemRelease( pid );
  }
}

void SlotsQButtonGroup::buttonPressed ( QAbstractButton * button )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "buttonPressed(QAbstractButton*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pbutton = hb_itemPutPtr( NULL, (QAbstractButton *) button );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pbutton );
    hb_itemRelease( psender );
    hb_itemRelease( pbutton );
  }
}

void SlotsQButtonGroup::buttonPressed ( int id )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "buttonPressed(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pid = hb_itemPutNI( NULL, id );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pid );
    hb_itemRelease( psender );
    hb_itemRelease( pid );
  }
}

void SlotsQButtonGroup::buttonReleased ( QAbstractButton * button )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "buttonReleased(QAbstractButton*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pbutton = hb_itemPutPtr( NULL, (QAbstractButton *) button );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pbutton );
    hb_itemRelease( psender );
    hb_itemRelease( pbutton );
  }
}

void SlotsQButtonGroup::buttonReleased ( int id )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "buttonReleased(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pid = hb_itemPutNI( NULL, id );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pid );
    hb_itemRelease( psender );
    hb_itemRelease( pid );
  }
}

HB_FUNC( QBUTTONGROUP_ONBUTTONCLICKED1 )
{
  if( s == NULL )
  {
    s = new SlotsQButtonGroup(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "buttonClicked(QAbstractButton*)", "buttonClicked(QAbstractButton*)" ) );
}

HB_FUNC( QBUTTONGROUP_ONBUTTONCLICKED2 )
{
  if( s == NULL )
  {
    s = new SlotsQButtonGroup(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "buttonClicked(int)", "buttonClicked(int)" ) );
}

HB_FUNC( QBUTTONGROUP_ONBUTTONPRESSED1 )
{
  if( s == NULL )
  {
    s = new SlotsQButtonGroup(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "buttonPressed(QAbstractButton*)", "buttonPressed(QAbstractButton*)" ) );
}

HB_FUNC( QBUTTONGROUP_ONBUTTONPRESSED2 )
{
  if( s == NULL )
  {
    s = new SlotsQButtonGroup(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "buttonPressed(int)", "buttonPressed(int)" ) );
}

HB_FUNC( QBUTTONGROUP_ONBUTTONRELEASED1 )
{
  if( s == NULL )
  {
    s = new SlotsQButtonGroup(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "buttonReleased(QAbstractButton*)", "buttonReleased(QAbstractButton*)" ) );
}

HB_FUNC( QBUTTONGROUP_ONBUTTONRELEASED2 )
{
  if( s == NULL )
  {
    s = new SlotsQButtonGroup(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "buttonReleased(int)", "buttonReleased(int)" ) );
}

%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "QWizardPageSlots.h"


static SlotsQWizardPage * s = NULL;

SlotsQWizardPage::SlotsQWizardPage(QObject *parent) : QObject(parent)
{
}

SlotsQWizardPage::~SlotsQWizardPage()
{
}

void SlotsQWizardPage::completeChanged ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "completeChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QWIZARDPAGE_ONCOMPLETECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQWizardPage(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "completeChanged()", "completeChanged()" ) );
}

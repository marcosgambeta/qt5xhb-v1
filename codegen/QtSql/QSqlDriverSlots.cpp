%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQSqlDriver::notification( const QString & name )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "notification(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pname = hb_itemPutC( NULL, QSTRINGTOSTRING(name) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pname );
    hb_itemRelease( psender );
    hb_itemRelease( pname );
  }
}

void SlotsQSqlDriver::notification(const QString &name, QSqlDriver::NotificationSource source, const QVariant &payload)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "notification(QString,QSqlDriver::NotificationSource,QVariant)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pname = hb_itemPutC( NULL, QSTRINGTOSTRING(name) );
    PHB_ITEM psource = hb_itemPutNI( NULL, (int) source );
    PHB_ITEM ppayload = hb_itemPutPtr( NULL, (QVariant *) &payload );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 4, psender, pname, psource, ppayload );
    hb_itemRelease( psender );
    hb_itemRelease( pname );
    hb_itemRelease( psource );
    hb_itemRelease( ppayload );
  }
}

$beginGroup
$signalMethod=|notification(QString)
$signalMethod=|notification(QString,QSqlDriver::NotificationSource,QVariant)
$endGroup

$endSlotsClass

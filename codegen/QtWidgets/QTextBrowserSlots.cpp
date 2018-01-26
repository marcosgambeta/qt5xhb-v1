%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQTextBrowser::anchorClicked( const QUrl & link )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "anchorClicked(QUrl)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM plink = hb_itemPutPtr( NULL, (QUrl *) &link );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, plink );
    hb_itemRelease( psender );
    hb_itemRelease( plink );
  }
}

void SlotsQTextBrowser::backwardAvailable( bool available )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "backwardAvailable(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pavailable = hb_itemPutL( NULL, available );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pavailable );
    hb_itemRelease( psender );
    hb_itemRelease( pavailable );
  }
}

void SlotsQTextBrowser::forwardAvailable( bool available )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "forwardAvailable(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pavailable = hb_itemPutL( NULL, available );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pavailable );
    hb_itemRelease( psender );
    hb_itemRelease( pavailable );
  }
}

void SlotsQTextBrowser::highlighted( const QUrl & link )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "highlighted(QUrl)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM plink = hb_itemPutPtr( NULL, (QUrl *) &link );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, plink );
    hb_itemRelease( psender );
    hb_itemRelease( plink );
  }
}

void SlotsQTextBrowser::highlighted( const QString & link )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "highlighted(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM plink = hb_itemPutC( NULL, QSTRINGTOSTRING(link) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, plink );
    hb_itemRelease( psender );
    hb_itemRelease( plink );
  }
}

$slot=|historyChanged()

void SlotsQTextBrowser::sourceChanged( const QUrl & src )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "sourceChanged(QUrl)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM psrc = hb_itemPutPtr( NULL, (QUrl *) &src );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, psrc );
    hb_itemRelease( psender );
    hb_itemRelease( psrc );
  }
}

$signalMethod=|anchorClicked(QUrl)
$signalMethod=|backwardAvailable(bool)
$signalMethod=|forwardAvailable(bool)
$beginGroup
$signalMethod=|highlighted(QUrl)
$signalMethod=|highlighted(QString)
$endGroup
$signalMethod=|historyChanged()
$signalMethod=|sourceChanged(QUrl)

$endSlotsClass

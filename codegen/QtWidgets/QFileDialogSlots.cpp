%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

$slot=|currentChanged( const QString & path )
$slot=|directoryEntered( const QString & directory )
$slot=|fileSelected( const QString & file )

void SlotsQFileDialog::filesSelected( const QStringList & selected )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "filesSelected(QStringList)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pselected = hb_itemArrayNew(0);
    int i;
    for(i=0;i<selected.count();i++)
    {
      PHB_ITEM pTempItem = hb_itemPutC( NULL, QSTRINGTOSTRING(selected [i]) );
      hb_arrayAddForward( pselected, pTempItem );
      hb_itemRelease(pTempItem);
    }
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pselected );
    hb_itemRelease( psender );
    hb_itemRelease( pselected );
  }
}

$slot=|filterSelected( const QString & filter )
$slot=|urlSelected( const QUrl & url )

void SlotsQFileDialog::urlsSelected(const QList<QUrl> &urls)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "urlsSelected(QList<QUrl>)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_DYNS pDynSym = hb_dynsymFindName( "QURL" );
    PHB_ITEM purls = hb_itemArrayNew(0);
    int i;
    for(i=0;i<urls.count();i++)
    {
      if( pDynSym )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pTempObject = hb_itemNew( NULL );
        hb_itemCopy( pTempObject, hb_stackReturnItem() );
        PHB_ITEM pTempItem = hb_itemNew( NULL );
        hb_itemPutPtr( pTempItem, (QUrl *) new QUrl ( urls [i] ) );
        hb_objSendMsg( pTempObject, "NEWFROMPOINTER", 1, pTempItem );
        hb_arrayAddForward( purls, pTempObject );
        hb_itemRelease( pTempObject );
        hb_itemRelease( pTempItem );
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QURL", HB_ERR_ARGS_BASEPARAMS );
      }
    }
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, purls );
    hb_itemRelease( psender );
    hb_itemRelease( purls );
  }
}

$slot=|currentUrlChanged( const QUrl & url )
$slot=|directoryUrlEntered( const QUrl & directory )

$signalMethod=|currentChanged(QString)
$signalMethod=|directoryEntered(QString)
$signalMethod=|fileSelected(QString)
$signalMethod=|filesSelected(QStringList)
$signalMethod=|filterSelected(QString)
$signalMethod=|urlSelected(QUrl)
$signalMethod=|urlsSelected(QList<QUrl>)
$signalMethod=|currentUrlChanged(QUrl)
$signalMethod=|directoryUrlEntered(QUrl)

$endSlotsClass

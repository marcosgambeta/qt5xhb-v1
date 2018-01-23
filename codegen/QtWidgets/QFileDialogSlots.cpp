%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "QFileDialogSlots.h"

static SlotsQFileDialog * s = NULL;

SlotsQFileDialog::SlotsQFileDialog(QObject *parent) : QObject(parent)
{
}

SlotsQFileDialog::~SlotsQFileDialog()
{
}

void SlotsQFileDialog::currentChanged ( const QString & path )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "currentChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ppath = hb_itemPutC( NULL, QSTRINGTOSTRING(path) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ppath );
    hb_itemRelease( psender );
    hb_itemRelease( ppath );
  }
}

void SlotsQFileDialog::directoryEntered ( const QString & directory )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "directoryEntered(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pdirectory = hb_itemPutC( NULL, QSTRINGTOSTRING(directory) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pdirectory );
    hb_itemRelease( psender );
    hb_itemRelease( pdirectory );
  }
}

void SlotsQFileDialog::fileSelected ( const QString & file )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "fileSelected(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pfile = hb_itemPutC( NULL, QSTRINGTOSTRING(file) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pfile );
    hb_itemRelease( psender );
    hb_itemRelease( pfile );
  }
}

void SlotsQFileDialog::filesSelected ( const QStringList & selected )
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

void SlotsQFileDialog::filterSelected ( const QString & filter )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "filterSelected(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pfilter = hb_itemPutC( NULL, QSTRINGTOSTRING(filter) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pfilter );
    hb_itemRelease( psender );
    hb_itemRelease( pfilter );
  }
}

void SlotsQFileDialog::urlSelected(const QUrl &url)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "urlSelected(QUrl)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM purl = hb_itemPutPtr( NULL, (QUrl *) &url );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, purl );
    hb_itemRelease( psender );
    hb_itemRelease( purl );
  }
}

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

void SlotsQFileDialog::currentUrlChanged(const QUrl &url)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "currentUrlChanged(QUrl)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM purl = hb_itemPutPtr( NULL, (QUrl *) &url );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, purl );
    hb_itemRelease( psender );
    hb_itemRelease( purl );
  }
}

void SlotsQFileDialog::directoryUrlEntered(const QUrl &directory)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "directoryUrlEntered(QUrl)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pdirectory = hb_itemPutPtr( NULL, (QUrl *) &directory );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pdirectory );
    hb_itemRelease( psender );
    hb_itemRelease( pdirectory );
  }
}

HB_FUNC( QFILEDIALOG_ONCURRENTCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQFileDialog(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "currentChanged(QString)", "currentChanged(QString)" ) );
}

HB_FUNC( QFILEDIALOG_ONDIRECTORYENTERED )
{
  if( s == NULL )
  {
    s = new SlotsQFileDialog(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "directoryEntered(QString)", "directoryEntered(QString)" ) );
}

HB_FUNC( QFILEDIALOG_ONFILESELECTED )
{
  if( s == NULL )
  {
    s = new SlotsQFileDialog(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "fileSelected(QString)", "fileSelected(QString)" ) );
}

HB_FUNC( QFILEDIALOG_ONFILESSELECTED )
{
  if( s == NULL )
  {
    s = new SlotsQFileDialog(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "filesSelected(QStringList)", "filesSelected(QStringList)" ) );
}

HB_FUNC( QFILEDIALOG_ONFILTERSELECTED )
{
  if( s == NULL )
  {
    s = new SlotsQFileDialog(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "filterSelected(QString)", "filterSelected(QString)" ) );
}

HB_FUNC( QFILEDIALOG_ONURLSELECTED )
{
  if( s == NULL )
  {
    s = new SlotsQFileDialog(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "urlSelected(QUrl)", "urlSelected(QUrl)" ) );
}

HB_FUNC( QFILEDIALOG_ONURLSSELECTED )
{
  if( s == NULL )
  {
    s = new SlotsQFileDialog(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "urlsSelected(QList<QUrl>)", "urlsSelected(QList<QUrl>)" ) );
}

HB_FUNC( QFILEDIALOG_ONCURRENTURLCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQFileDialog(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "currentUrlChanged(QUrl)", "currentUrlChanged(QUrl)" ) );
}

HB_FUNC( QFILEDIALOG_ONDIRECTORYURLENTERED )
{
  if( s == NULL )
  {
    s = new SlotsQFileDialog(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "directoryUrlEntered(QUrl)", "directoryUrlEntered(QUrl)" ) );
}
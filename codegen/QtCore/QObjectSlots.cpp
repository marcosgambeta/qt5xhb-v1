%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQObject::destroyed(QObject * obj)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "destroyed(QObject*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pobj = hb_itemPutPtr( NULL, (QObject *) obj );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pobj );
    hb_itemRelease( psender );
    hb_itemRelease( pobj );
    Signals_disconnect_signal( object, "destroyed(QObject*)" );
  }
}

void SlotsQObject::objectNameChanged(const QString & objectName)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "objectNameChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pobjectName = hb_itemPutC( NULL, QSTRINGTOSTRING(objectName) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pobjectName );
    hb_itemRelease( psender );
    hb_itemRelease( pobjectName );
  }
}

HB_FUNC( QOBJECT_ONDESTROYED )
{
  if( s == NULL )
  {
    s = new SlotsQObject(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "destroyed(QObject*)", "destroyed(QObject*)" ) );
}

HB_FUNC( QOBJECT_ONOBJECTNAMECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQObject(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "objectNameChanged(QString)", "objectNameChanged(QString)" ) );
}

$endSlotsClass

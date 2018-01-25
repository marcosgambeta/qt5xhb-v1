%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQRadioData::stationIdChanged(QString stationId)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "stationIdChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pstationId = hb_itemPutC( NULL, (const char *) stationId.toLatin1().data() );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pstationId );
    hb_itemRelease( psender );
    hb_itemRelease( pstationId );
  }
}

void SlotsQRadioData::programTypeChanged(QRadioData::ProgramType programType)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "programTypeChanged(QRadioData::ProgramType)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pprogramType = hb_itemPutNI( NULL, (int) programType );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pprogramType );
    hb_itemRelease( psender );
    hb_itemRelease( pprogramType );
  }
}

void SlotsQRadioData::programTypeNameChanged(QString programTypeName)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "programTypeNameChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pprogramTypeName = hb_itemPutC( NULL, (const char *) programTypeName.toLatin1().data() );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pprogramTypeName );
    hb_itemRelease( psender );
    hb_itemRelease( pprogramTypeName );
  }
}

void SlotsQRadioData::stationNameChanged(QString stationName)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "stationNameChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pstationName = hb_itemPutC( NULL, (const char *) stationName.toLatin1().data() );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pstationName );
    hb_itemRelease( psender );
    hb_itemRelease( pstationName );
  }
}

void SlotsQRadioData::radioTextChanged(QString radioText)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "radioTextChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pradioText = hb_itemPutC( NULL, (const char *) radioText.toLatin1().data() );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pradioText );
    hb_itemRelease( psender );
    hb_itemRelease( pradioText );
  }
}

void SlotsQRadioData::alternativeFrequenciesEnabledChanged(bool enabled)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "alternativeFrequenciesEnabledChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM penabled = hb_itemPutL( NULL, enabled );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, penabled );
    hb_itemRelease( psender );
    hb_itemRelease( penabled );
  }
}

void SlotsQRadioData::error(QRadioData::Error error)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "error(QRadioData::Error)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM perror = hb_itemPutNI( NULL, (int) error );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, perror );
    hb_itemRelease( psender );
    hb_itemRelease( perror );
  }
}

$signalMethod=|stationIdChanged(QString)
$signalMethod=|programTypeChanged(QRadioData::ProgramType)
$signalMethod=|programTypeNameChanged(QString)
$signalMethod=|stationNameChanged(QString)
$signalMethod=|radioTextChanged(QString)
$signalMethod=|alternativeFrequenciesEnabledChanged(bool)
$signalMethod=|error(QRadioData::Error)

$endSlotsClass

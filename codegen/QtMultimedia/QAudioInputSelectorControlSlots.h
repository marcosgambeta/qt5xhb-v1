%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQAudioInputSelectorControl: public QObject
{
  Q_OBJECT
  public:
  SlotsQAudioInputSelectorControl(QObject *parent = 0);
  ~SlotsQAudioInputSelectorControl();
  public slots:
  void activeInputChanged(const QString & name);
  void availableInputsChanged();
};

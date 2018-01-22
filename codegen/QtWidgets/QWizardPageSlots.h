%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQWizardPage: public QObject
{
  Q_OBJECT
  public:
  SlotsQWizardPage(QObject *parent = 0);
  ~SlotsQWizardPage();
  public slots:
  void completeChanged ();
};

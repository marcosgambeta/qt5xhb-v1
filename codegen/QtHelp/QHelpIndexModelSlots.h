%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQHelpIndexModel: public QObject
{
  Q_OBJECT
  public:
  SlotsQHelpIndexModel(QObject *parent = 0);
  ~SlotsQHelpIndexModel();
  public slots:
  void indexCreated ();
  void indexCreationStarted ();
};
